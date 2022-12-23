#include "MDR32FxQI_uart.h" 
#include "MDR32FxQI_port.h"
#include "Initialization.h"
#include "Global_Var.h"
#include "Defines.h"
#include "RS485_interface.h" 
#include "Configuration.h"
#include <string.h>



void RS485_ReadData (void)
{

	if((RS485.Package_Is_New == YES)&&(RS485.Counter_Waiting_Receive_End.Flag == YES)) //Если пакет еще не был обработан и пакет полностью передан (закончилось время ожидания превышение которого принимается окончанием передачи пакета)
	{
	
		if(RS485.Package_Data[ADRESS_BYTE] == UPS_D.Device_Adress)	//если обращаются к этому устройству
		{
			RS485.Command	=	RS485.Package_Data[COMMAND_BYTE];
			RS485.Registor_Adress = (RS485.Package_Data[REGISTOR_HIGH_BYTE]<<Bit8)|(RS485.Package_Data[REGISTOR_LOW_BYTE]);
			RS485.CRC_Is_Ok = (CRC_Check(RS485.Package_Data, RS485.Package_Data_Index)==0)? (YES):(NO); //проверяем контрольную сумму CRC
			//else RS485_SendData('ERROR'); ПОСЫЛАТЬ ОШИБКУ В СЛУЧАЕ НЕКОРРЕКТНОЙ КОНТРОЛЬНОЙ СУММЫ *******************************************************************************************************
			RS485.Package_Size = RS485.Package_Data_Index;  //определяем размер пакета в байтах
			if(RS485.CRC_Is_Ok==YES) RS485_Handling_Data();	//если контрольная сумма верная, то обрабатываем полученные данные
			RS485.CRC_Is_Ok = NO;		//Сбрасываем флаг контрольной суммы	
			RS485.Package_Size=(RS485.Package_Size>RS485.Package_Data_Index)?(RS485.Package_Size):(RS485.Package_Data_Index);	//вычисляем размер пакета
			RESET_RS485_DATA;	//очищаем записанные данные
		}
		else RESET_RS485_DATA;	//если обращаются не к нам, то очищаем принятые данные
		RS485.Package_Size = 0; //обнуляем размер массива
	}
}

//функиця RS485_Handling_Data обрабатывает данные и принимает действия
void RS485_Handling_Data (void)
{
	switch (RS485.Command)
			{
				case READ_DATA_COMMAND:
				RS485.Amount_Registor_Read_Or_Write = (RS485.Package_Data[DATA_HIGH_BYTE]<<Bit8)|(RS485.Package_Data[DATA_LOW_BYTE]);		//количество регистров для чтения
				RESET_RS485_DATA;				//очищаем записанные данные
				RS485_Create_Transmitted_Package();											//формируем ответный пакет данных в ответ на принятую команду READ_DATA_COMMAND
				break;
				
				case WRITE_DATA_COMMAND:
				RS485.Amount_Registor_Read_Or_Write = 1;			//количество регистров для записи
				RS485.Package_Data_Index = DATA_HIGH_BYTE;		//задаем номер ячейки пакета 
				Write_Registers_Data();												//записываем в регистр принятые данные
				Convert_And_Save_Receive_Parameters(); 				//сохраняем и преобразуем принятые данные
				RESET_RS485_DATA;															//очищаем записанные данные, так же для того чтобы выполнить функцию RS485_Create_Transmitted_Package();
				RS485_Create_Transmitted_Package();						//формируем ответный пакет на принятую команду WRITE_DATA_COMMAND
				break;
			
				case	WRITE_DATA_FEW_REG_COMMAND:
				/*количество регистров для записи. Делим на SIZE_OF_REGISTER_DATA, так как в RS485.Package_Data[DATA_HIGH_BYTE] содержится количество принимаемых байт данных,
				а так как у нас регистры двухбайтовые, то количество регисторов легко сосчитать*/
				RS485.Amount_Registor_Read_Or_Write = RS485.Package_Data[DATA_HIGH_BYTE]/SIZE_OF_REGISTER_DATA;		
				RS485.Package_Data_Index = DATA_LOW_BYTE;		//задаем номер ячейки пакета 
				Write_Registers_Data();											//записываем в регистр принятые данные
				Convert_And_Save_Receive_Parameters(); 			//сохраняем и преобразуем принятые данные
				RESET_RS485_DATA;														//очищаем записанные данные, так же для того чтобы выполнить функцию RS485_Create_Transmitted_Package();
				RS485_Create_Transmitted_Package();					//формируем ответный пакет на принятую команду WRITE_DATA_COMMAND
				break;
				
				case READ_ID_DEVICE_COMMAND:
				RESET_RS485_DATA;														//очищаем записанные данные, так же для того чтобы выполнить функцию RS485_Create_Transmitted_Package();
				RS485_Create_Transmitted_Package();					//формируем ответный пакет на принятую команду WRITE_DATA_COMMAND	
				break;
	
			}
}

//функция Write_Registers_Data - сохраняет принятые по Modbus данные в регистры.
void Write_Registers_Data(void)
{
	for (uint8_t i=RS485.Registor_Adress; i<(RS485.Registor_Adress+RS485.Amount_Registor_Read_Or_Write); i++)
	{
		switch (i)
			{		
				case STATUS_CHARGE_MODE:												Testing.Charge_Mode 					 = (RS485.Package_Data[RS485.Package_Data_Index]<<Bit8)|RS485.Package_Data[RS485.Package_Data_Index+1];			break;	// 37																								
				case SET_U_BATTERY_LIMIT_VALUE_REG:							Testing.Discharge_Mode 				 = (RS485.Package_Data[RS485.Package_Data_Index]<<Bit8)|RS485.Package_Data[RS485.Package_Data_Index+1];			break;	// 38						
				case STATUS_DISCHARGE_MODE:											Testing.U_Battery_Limit_Value  = (RS485.Package_Data[RS485.Package_Data_Index]<<Bit8)|RS485.Package_Data[RS485.Package_Data_Index+1];			break;	// 39									
			}
			RS485.Package_Data_Index+=SIZE_OF_REGISTER_DATA;
	}		
}


//функция Convert_And_Save_Receive_Parameters - сохраняет принятые по Modbus данные в переменные, используемые в проекте. Также преобразует принятые данные в требуемый для ПО формат
void Convert_And_Save_Receive_Parameters(void)
{
	/*for (uint8_t i=RS485.Registor_Adress; i<(RS485.Registor_Adress+RS485.Amount_Registor_Read_Or_Write); i++)
	{
		switch (i)
		{
				case STATUS_CHARGE_MODE:												UPS_D.Charge_Mode   				= (RS485.Package_Data[RS485.Package_Data_Index]<<Bit8)|RS485.Package_Data[RS485.Package_Data_Index+1];			break;	// 37																								
				case SET_U_BATTERY_LIMIT_VALUE_REG:							UPS_D.Discharge_Mode 				= (RS485.Package_Data[RS485.Package_Data_Index]<<Bit8)|RS485.Package_Data[RS485.Package_Data_Index+1];			break;	// 38						
				case STATUS_DISCHARGE_MODE:											UPS_D.U_Battery_Limit_Value = (RS485.Package_Data[RS485.Package_Data_Index]<<Bit8)|RS485.Package_Data[RS485.Package_Data_Index+1];			break;	// 39									
		}
	}*/
}
			

int Convert_Time_Discharge (short min, short sec)
{
	unsigned int minutes, seconds, time;
	minutes = min & MASK_USER_REAL_VALUE;
	minutes*= TIME_1_MIN;
	
	seconds = sec & MASK_USER_REAL_VALUE;
	seconds*= TIME_1_SEC;
	
	time = minutes + seconds;
	
	return time;
}

//функиця RS485_Create_Transmitted_Package создает пакет данных, которые нужно отправить мастеру в ответ на его запрос 
void RS485_Create_Transmitted_Package (void)
{
/*Байт*/ //заполняем пакет
 /*1*/	RS485.Package_Data[ADRESS_BYTE] = UPS_D.Device_Adress; 			//адрес устройства
 /*2*/	switch (RS485.Command)
				{
					case READ_DATA_COMMAND: 					RS485.Package_Data[COMMAND_BYTE] = READ_DATA_COMMAND;						break;
					case WRITE_DATA_COMMAND:					RS485.Package_Data[COMMAND_BYTE] = WRITE_DATA_COMMAND;					break;
					case WRITE_DATA_FEW_REG_COMMAND:	RS485.Package_Data[COMMAND_BYTE] = WRITE_DATA_FEW_REG_COMMAND;	break;
					case READ_ID_DEVICE_COMMAND:			RS485.Package_Data[COMMAND_BYTE] = READ_ID_DEVICE_COMMAND;			break;
				}
 /*3*/	switch (RS485.Command)
/*и 4*/	{
					case READ_DATA_COMMAND:
					{
						uint8_t byte_amount;
						byte_amount = RS485.Amount_Registor_Read_Or_Write * SIZE_OF_REGISTER_DATA;		//высчитываем размер данных, которые нужно передать (количество байт данных)
						RS485.Package_Data[REGISTOR_HIGH_BYTE] = byte_amount;
						RS485.Package_Data_Index = REGISTOR_LOW_BYTE;			//заполнение пакета данными начнется с номера ячейки REGISTOR_LOW_BYTE, т.к передается Количество байтов (размер этого количества 1 байт)
					}
					break;
					case WRITE_DATA_COMMAND:
					{
						RS485.Package_Data[REGISTOR_HIGH_BYTE] = RS485.Registor_Adress>>Bit8;
						RS485.Package_Data[REGISTOR_LOW_BYTE]  = RS485.Registor_Adress;
						RS485.Package_Data_Index = REGISTOR_LOW_BYTE+1;		//заполнение пакета данными начнется с номера ячейки REGISTOR_LOW_BYTE+1. Т.к в ответном пакете на команду WRITE_DATA_COMMAND передается адрес региста, куда записались данные (2 байта)
					}
					break;
					
					case WRITE_DATA_FEW_REG_COMMAND:
					{
						RS485.Package_Data[REGISTOR_HIGH_BYTE] = RS485.Registor_Adress>>Bit8;		//записываем адрес первого регистра. старший байт
						RS485.Package_Data[REGISTOR_LOW_BYTE]  = RS485.Registor_Adress;					//записываем адрес первого регистра. младший байт
						RS485.Package_Data_Index = REGISTOR_LOW_BYTE+1;
					}
					break;
					
					case READ_ID_DEVICE_COMMAND:
					{
						RS485.Package_Data[REGISTOR_HIGH_BYTE] = ID_AMOUNT_BYTE;
						RS485.Package_Data_Index = REGISTOR_LOW_BYTE;			//заполнение пакета данными начнется с номера ячейки REGISTOR_LOW_BYTE, т.к передается Количество байтов (размер этого количества 1 байт)
					}
					break;
					
					
				}					
				
/*data*/if(RS485.Command == WRITE_DATA_FEW_REG_COMMAND)
				{
					RS485.Package_Data[RS485.Package_Data_Index] = (RS485.Amount_Registor_Read_Or_Write>>Bit8);
					RS485.Package_Data[RS485.Package_Data_Index+1] = RS485.Amount_Registor_Read_Or_Write;
					RS485.Package_Data_Index+=SIZE_OF_REGISTER_DATA; 
				}
				else if ((RS485.Command == READ_DATA_COMMAND)||(RS485.Command == WRITE_DATA_COMMAND)) 
				{
					for(uint8_t i = RS485.Registor_Adress; i<(RS485.Registor_Adress+RS485.Amount_Registor_Read_Or_Write); i++)
					{
		/*Регистор*/switch (i)
						{	
							
				/*1*/		case U_MCU_REG:						Create_Analog_Value_Answer(3.3f);												break;
				/*2*/		case U_KAN_D_REG:					Create_Analog_Value_Answer(ADC4_U_KAN_D.avr_real);			break;
				/*3*/		case U_LOAD_REG:					Create_Analog_Value_Answer(ADC2_U_LOAD.avr_real);				break;
				/*4*/		case U_BATTERY_REG:				Create_Analog_Value_Answer(ADC3_U_BATTERY.avr_real);		break;
				/*5*/		case I_BATTERY_REG:				Create_Analog_Value_Answer(ADC1_I_BATTERY.avr_real);		break;
				/*6*/		case I_LOAD_REG:					Create_Analog_Value_Answer(ADC0_I_LOAD.avr_real);				break;
				/*7*/		case MODE_REG:
								{
									short data	= 0;
									char DU=REMOUT;
									DU = (~DU)&0x01;
									data = (RELE1_AC.ReleStatus							<<Bit0)| //Сеть норма
												 (RELE2_BATTERY.ReleStatus				<<Bit1)| //АКБ норма
												 (RELE3_STABLE_WORK.ReleStatus		<<Bit2)| //Режим норма
												 (Wrng_U_KAN_D.WarningStatus			<<Bit3)|
												 (Wrng_U_LOAD.WarningStatus				<<Bit4)|
												 (Wrng_I_LOAD.WarningStatus				<<Bit5)|
												 (DU															<<Bit6);
									Create_2Byte_Answer(data);							
								}	
			break;								
				/*8*/		case STATUS_CHARGE_MODE:									Create_2Byte_Answer(0);						break;
				/*9*/		case SET_U_BATTERY_LIMIT_VALUE_REG:				Create_2Byte_Answer((unsigned short)Testing.Discharge_Mode);				break;
				/*10*/	case STATUS_DISCHARGE_MODE:								Create_2Byte_Answer((unsigned short)Testing.U_Battery_Limit_Value);	break;
				/*11*/	case T_BATTERY_1_REG:
								{				
									float data;
									short data1;
									if((TemperatureSensor1.Fault_Connect==NO)&&(I2C_OW_Converter.Fault_Connect==NO))	//если связь с датчиком температуры и преобразователем I2C-OW есть
									{
										if(TemperatureSensor1.Temperature_real<0)	//если температура отрицательная 
										{
											data = (-1)*TemperatureSensor1.Temperature_real*MODBUS_koef_1;	//убираем знак и преобразуем его в соотвествии с документом "Протокол связи между ИБП-Д и ПК"  
											data1=(short)data;			//преобразуем в целочисленный тип
											data1=~(data1-1);				//переводим число в дополнительный код со знаком	
											Create_2Byte_Answer(data1);
										}
										else Create_Analog_Value_Answer(TemperatureSensor1.Temperature_real);
									}
									else Create_2Byte_Answer(TEMP_SENS_IS_NOT_CONNECT); //посылаем информацию о том, что датчика температуры или преобразователя I2C-OW нету на линии	
								}
								break;
				/*12*/	case STATUS_SWITCHES:									
								{
									short data	= 0;
									Battery.CapacityPins=BATTERY_CAPACITY_PINS;
									Battery.CapacityPins >>= Bit4;
									Battery.TimeDischargePins=TIME_DISCHARGE_PINS;
	
									data = (((~Battery.CapacityPins)			&0xF) <<Bit0) |
												 ((((~Battery.TimeDischargePins)&0xF) <<Bit4))	; 
									Type_Of_KAN_D();									
									if(UPS_D.Type_Of_KAN_D == POWER240W)  			data |= 0x03<<Bit8;
									else if(UPS_D.Type_Of_KAN_D == POWER120W)		data |= 0x02<<Bit8;
									else if(UPS_D.Type_Of_KAN_D == POWER75W)		data |= 0x01<<Bit8;
									
									Create_2Byte_Answer(data);	
								}
								break;
						}
						RS485.Package_Data_Index++;
						RS485.Package_Data_Index++; //т.к регистры двухбайтные
					}
				}
				
				unsigned short CRC;
				CRC = CRC_Check (RS485.Package_Data, RS485.Package_Data_Index);	//формируем контрольную сумму передаваемого пакета данных
/*pre*/	RS485.Package_Data[RS485.Package_Data_Index] = CRC;					//младший байт CRC
/*last*/RS485.Package_Data[RS485.Package_Data_Index+1] = CRC>>Bit8;	//старший байт CRC
				RS485.Package_Data_Index++; 																//RS485.Package_Data_Index инкриментируется потому что при расчете CRC не был инкрементирован
				for (uint8_t i=0; i<=RS485.Package_Data_Index; i++) RS485_SendData(RS485.Package_Data[i]);		//отправляем данные 			
}



void RS485_SendData(unsigned char Data)
{
	RS485_DATA_TRANSMIT;
	// Ожидание флага освобождения буфера передачи (TXFE) 
	while (UART_GetFlagStatus(MDR_UART1, UART_FLAG_TXFE) != SET);
	UART_SendData(MDR_UART1,Data);
	//ожидание флага освобождения UART (BUSY) (Если BUSY=1, то UART еще передает данные)
	while (UART_GetFlagStatus(MDR_UART1, UART_FLAG_BUSY) == SET);	
	RS485_DATA_RECEIVE;
}

//функция Create_2Byte_Answer заполняет двухбайтовый ответ о состоянии запрашиваемого регистра (у регистра размер 2 байта) для передаваемого мастеру пакета данных
void Create_2Byte_Answer (short data)
{
	RS485.Package_Data[RS485.Package_Data_Index] = (data>>Bit8); //смещаем старшие биты полученной емкости на 8 бит влево
	RS485.Package_Data[RS485.Package_Data_Index+1] = data;			 //т.к RS485.Package_Data однобайтовый, то при таком действии должно записаться только 8 младших бит
}

//функция Create_Analog_Value_Answer преобразует аналоговые величины в формат в соотвествии с документом "Протокол связи между ИБП-Д и ПК"  
void Create_Analog_Value_Answer (float value)
{
	float data;
	data = value*MODBUS_koef_1;
	Create_2Byte_Answer((short)data);
}
//функция Create_Koef_Value_Answer преобразует величины коэффициентов в формат в соотвествии с документом "Протокол связи между ИБП-Д и ПК"  
void Create_Koef_Value_Answer (float value)
{
	float data;
	data = value*MODBUS_koef_2;
	Create_2Byte_Answer((short)data);
}

//функция Temperature_Convert преобразует полученную по Modbus температуру в требуемый программой вид
float Temperature_Convert (unsigned short temp)
{
	float temp1;
	if((temp>>Bit15)==YES) //переводим отрицательное число из дополнительного кода в прямой
		{
			temp1 = (uint16_t)((~temp)+1)*(-1);
			temp1 = (float)temp1*(1/MODBUS_koef_1);
		}
	else temp1=(float)temp*(1/MODBUS_koef_1);
	return temp1;
}

//функция CRC_Check - рассчитывает контрольную сумму CRC16
int CRC_Check (unsigned char* data, unsigned char length)
  {
	register int j;
	register unsigned int reg_crc = 0xFFFF;	
	while (length--)
	{
	  reg_crc ^= *data++;
	  for(j=0;j<8;j++)
	   {
			if(reg_crc&0x01) reg_crc=(reg_crc>>1)^0xA001;
			else reg_crc = reg_crc >> 1;
	   }
	}
	return reg_crc;
  }
	
	
	
	
	
	
























	
	
	
	
	
	
	
	
	
	
	
	
	
	

