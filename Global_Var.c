#include "Defines.h"
#include "Global_Var.h"
#include "MDR32FxQI_port.h"

ModeOfWork MODE, MODE_prev; //переменная содержащая текущий режим работы и предыдущий
ModeOfCharge MODE_CHARGE;		//переменная содержащая текущий режим работы в режиме Заряд (CHARGE)
Device_Status DStat; //переменная содержащая информацию о текущем проверяемом статусе
Status device_status[AMOUNT_STATUS]; //массив статусов устройства (см.выше)

LedControl LED1, LED2;
// RELE1_AC - структура для реле 1. Содержит переменную состояния напряжения с выхода КАН-Д, Status=OFF - напряжение в норме, Status=ON - напряжение не в норме
// RELE2_BATTERY - структура для реле 2. Содержит переменную состояния Батареи, Status=OFF - батарея подключена и ее заряд больше 20%, Status=OFF - отключена или заряд меньше 20%
// RELE3_STABLE_WORK - структура для реле 3. Содержит переменную наличия/отсутсвия какой-либо предупрежения, Status=OFF - предупрежения нет, Status=ON - как минимум одно предупрежение есть
ReleControl RELE1_AC, RELE2_BATTERY, RELE3_STABLE_WORK; 

ADCcontrol ADC0_I_LOAD, ADC1_I_BATTERY, ADC2_U_LOAD, ADC3_U_BATTERY,ADC4_U_KAN_D, ADC5_U_ZERO, ADC7_KAN_D_TYPE;  
int ADCready_to_calculate=NO; 	 //флаг готовности АЦП к расчету средних значений токов и напряжений (для стартового сбора информации) Значение при старте - NO; 
int ADC_avr_calculate_end=NO; 		//Средние значение каналов АЦП расчитаны (для стартового сбора информации) Значение при старте - NO; 
// структуры Wrng_I_LOAD - превышение допустимого тока в нагрузке, Wrng_U_LOAD - напряжение на нагрузке выше нормы, Wrng_U_KAN_D  - напряжение с КАН_Д ниже нормы)
Warning Wrng_I_LOAD, Wrng_U_LOAD, Wrng_U_KAN_D; //структуры типа структуры Warning
char warning_flag; //флаг наличия хотя бы одного предупреждения

/* Комментарии по счетчикам
Counter_Check_Battery_Connect 						 - счетчик времени между проверками о подключении Батареи
Counter_Check_Battery_Connect_Current_Drop - счетчик времени для ожидания спада тока до 0 если батарея отключена
Counter_Anti_Bounce											   - счетчик для выдерживания антидребезга
Counter_Transient_Process 								 - счетчик ожидания окончания переходного процесса, используется для того, чтобы не срабатывала защита по 
																						 превышению максимального значения тока разряда батареи в момент ее включения в режиме DISCHARGE
Counter_Transient_Process_UPS							 - счетчик ожидания спада напряжения на выходе КАН-Д ниже порога в момент переключения в режима заряд в режим разряд. 
																						 Используется для предотвращения обратного переключения в режим заряд из режима разряд в случае если только что произошло 
																						 переключение из режима заряд в режим разряд. Используется в CHECK_UPS_DISCHARGE_TO_CHARGE (в CHECK_UPS_CHARGE_TO_DISCHARGE применяется для симметрии, хз нужно ли это)
Counter_Transient_Process_I_Battery_Impossible_Interrupt - счетчик ожидания завершения установившегося значения тока батареи после включения ИРН-2,который был выключен вследствии невозможности ограничиния тока заряда батареи
Counter_Starting_Initialization						 - счетчик стратовой инициализации и индиакции
*/
Counter Counter_Check_Battery_Connect, Counter_Check_Battery_Connect_Voltage_Drop, Counter_Anti_Bounce, Counter_Transient_Process, Counter_Transient_Process_UPS,
Counter_Transient_Process_I_Battery_Impossible_Interrupt, Counter_Starting_Initialization;


Counter Counter_Between_Package;

//структура батареи
Bat Battery;

//структура датчика температуры
TempSens TemperatureSensor1;
//Структура преобразователя I2C-OW
I2C_OW_Conv I2C_OW_Converter;

Parameters I, U, T;

RS485_data RS485;

//UPS_D_data Modbus, UPS_D, UPS_D_buf;
UPS_D_data Modbus, UPS_D_buf, UPS_D;

UPS_D_Testing Testing;

/* Номера проверяемых у ИБП-Д статусов
0 - U_KAN_D<U_KAN_Dmin
1 - U_KAN_D>U_KAN_Dmax
2 - U_LOAD<U_LOADmin
3 - U_LOAD>U_LOADmax
4 - U_BATTERY<U_BATTERYmin
5 - U_BATTERY>U_BATTERYmax
6 - I_LOAD<I_LOADmin
7 - I_LOAD>I_LOADmax
8 - I_BATTERY<I_BATTERYmin
9 - I_BATTERY>I_BATTERYmax
10 - T_BATTERY<T_BATTERYmin
11 - T_BATTERY>T_BATTERYmax
12 - REMOUT=ON если 1, REMOUT=OFF, если 0
13 - Тумблер 2 "Есть батарея" если 1, Тумблер 2 "Батарея откл" если 0
14 - I_BATTERY<I_BATTERYmin при кратковременном отключении ИРН-2 в режиме Заряд
15 - BATTERY_LEVEL <5%
16 - BATTERY_TIME_DISCHARGE=0
17 - I_LOAD!=0 (т.е вне диапазона 0.1А)
18 - I_BATTERY<0 (то есть другая полярность)
19 - I_BATTERY!=0 (т.е вне диапазона 0.1А)
*/



