void Rele_Status(); 	//функция Rele_Status задает состояние реле (ON, OFF), в соотвествии с текущим состоянием устройства (см.Global_Var.c) 
void Battery_Parameters(void);  //функция Battery_Parameters - определяет параметры Батареи - емкость и время разряда
void Set_Battery_Voltage(float Battery_Voltage); //функция Set_Battery_Voltage - устанавливает напряжение на выходе повышающего преобразователя, который подключен к Батареи
void Battery_Current_Stabilization(float Battery_Current); //функция Battery_Current_Stabilization - устанавливает ток заряда Батареи
void Check_Status(void); //функция Check_Status - определяет соответствие параметров режиму
void Mode_Of_Work(void); //функция Mode_Of_Work - обеспечивает работу устройства в заданном режиме
int Type_Of_KAN_D(void); //функция Type_Of_KAN_D - определяет мощность подключенного КАН-Д
float Choose_Current_Of_Charge_Mode(float I, float Ibat_max); //функция Current_Of_Charge_Mode задает уровень зарядного тока в зависимости от текущих условий
float* Choose_Current_Of_Charge_Mode2(float I, float Ibat_max); /*функция Choose_Current_Of_Charge_Mode2 задает уровень зарядного тока в зависимости от текущих условий (модификация фунцкции Choose_Current_Of_Charge_Mode)
и позволяет возвращать 2 значения: 1 - величину тока, которым будет заряжаться батарея и флаг наличия/отсутствия ограничения зарядного тока током нагрузки*/
unsigned char Check_Battery_Connect(void); //функция Check_Battery_Connect проверяет подключение к батареи
void Calcutale_Battery_Level(void);	/*функция Calcutale_Battery_Level расчитывает уровень заряда батареи*/
Status Check_I_LOAD_Value (void); /*функция Check_I_LOAD_Value мониторит величину тока заряда батареи и возращает YES если ток заряда батареи ограничен током нагрузки так, что его величина становится меньше минимально допустимой, 
возвращает NO, если величина тока заряда батареи больше минимально допустимой*/
float U_Hysteresis_KAN_D (void); //гистерезис для КАН-Д, с учетом потерь в нем 
void Testing_UPS_D(void);	//функция Testing_UPS_D производит тестировку ИБП-Д в соотвествии с методикой тестирования



