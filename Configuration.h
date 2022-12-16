/*===================================================================================================================================================================================================*/
/*===============================================================КОМАНДЫ ВЗАИМОДЕЙСТВИЯ С БАТАРЕЕЙ====================================================================================================*/
/*===================================================================================================================================================================================================*/

#define REMOUT PORT_ReadInputDataBit(MDR_PORTD, PORT_Pin_6); //проверяем статус шестого пина порта D для проверки наличия дистанционного запроса на отключение батареи

#define BATTERY_JOIN_TO_LOAD(ACTION)  {if(ACTION==YES){\
																					MDR_PORTB->RXTX = PORT_Pin_8|(MDR_PORTB->RXTX&0xFFE0); /*такая нестандартная обоснована тем, что так как к порту B подключен JTAG и если делать как обычно то в отладку не заходит*/\
																					Battery.Status_Join_To_Load = ON;}\
																			 else {\
																					MDR_PORTB->RXTX&= ~(PORT_Pin_8|0x001F);/*тоже самое, что и сверху*/\
																					Battery.Status_Join_To_Load = OFF;}}

#define BOOST_REGELATOR_CAPACITY_DISCHARGE(ACTION) 	{if(ACTION==ON){PORT_SetBits(MDR_PORTE, PORT_Pin_7);} else {PORT_ResetBits(MDR_PORTE, PORT_Pin_7);}}	//команда команда включения разряжающего емкости ИРН-2 резистора 
#define BOOST_REGELATOR(ACTION) 				{if(ACTION==ON){PORT_SetBits(MDR_PORTE, PORT_Pin_6);} else {PORT_ResetBits(MDR_PORTE, PORT_Pin_6);}}	//команда подключения/отключения повышающего регулятора к/от входного для него напряжения
#define CHECK_BATTERY_CONNECT_START			{if(ADC3_U_BATTERY.avr_real>UPS_D.U.Battery.Min_Value){																								/*стартовая проверка наличия подключенной батареи*/\
																					  Counter_Check_Battery_Connect.MaxValue =	TIME_05_MIN;\
																					  MODE=CHARGE;}\
																				 else MODE=ALARM;}

/*===================================================================================================================================================================================================*/
/*===============================================================КОНФИГУРАЦИОННЫЕ НАСТРОЙКИ РАБОТЫ ИБП-Д==============================================================================================*/
/*===================================================================================================================================================================================================*/


#define AVR_VALUE_CALCULATION_IS_END {while(ADC_avr_calculate_end!=ADC_READY);} 		//Макрос окончания расчета первых значений АЦП 
#define START_CONDITION_IS_END			 {if(ADC_avr_calculate_end!=ADC_READY) return;} //Макрос проверки окончания старта устройства 

#define ANTI_BOUNCE {Counter_Anti_Bounce.Status=ON; while (Counter_Anti_Bounce.Flag!=YES); Counter_Anti_Bounce.Flag=NO;} //Макрос андидребезга 

#define TRANSIENT_PROCESS {Counter_Transient_Process.Status=ON; while(Counter_Transient_Process.Status!=OFF);}	//Макрос ожидания завершения переходного процесса
#define TRANSIENT_PROCESS_IF_UPS_CHANGED_MODE {\
											if(Battery.UPS_Mode_Has_Changed_Flag!=UPS_FLAG_HANDLED)	{/*если было изменение режима работы ИБП-Д и оно не обработано*/\
												TRANSIENT_PROCESS;\
												Battery.UPS_Mode_Has_Changed_Flag = UPS_FLAG_HANDLED; }}			/*Переключение обработано*/
	
//макрос установки реле в требуемое состояние в зависимости от режима
#define RELE_STATUS {Rele_Status(&RELE1_AC);\
										 Rele_Status(&RELE2_BATTERY);\
										 Rele_Status(&RELE3_STABLE_WORK);}

										 
#define BOOST_CONVERTER_ON  {BOOST_REGELATOR(ON);}	//Макрос включения повышающего регулятора, заряжающего АКБ
#define BOOST_CONVERTER_OFF {BOOST_REGELATOR(OFF);}	//Макрос выключения повышающего регулятора, заряжающего АКБ
																			
#define U_BATTERY_COMPENSATION_OVER 	(T_BATTERY_DEFAULT-TemperatureSensor1.Temperature_real)*UPS_D.T_Compensation_koef_Over*(1/DEVISION_koef); 	//величина напряжения компенсации изменения температуры батереи в режиме OVER	(перезаряд), В																
#define U_BATTERY_COMPENSATION_FLOAT	(T_BATTERY_DEFAULT-TemperatureSensor1.Temperature_real)*UPS_D.T_Compensation_koef_Float*(1/DEVISION_koef);  //величина напряжения компенсации изменения температуры батереи в режиме FLOAT(буферный), В																
																		
#define BATTERY_EQUALIZING_CHARGE_IS_END {Battery.Equalizing_Charge.Need=NO;\
																					RESET_Battery_Equalizing_Charge_Counter_I_Battery_Write_Value;\
																					RESET_Battery_Equalizing_Charge_Counter_I_Battery_Is_Constant;\
																					for(uint16_t i=0;i<TIME_CHECKING_I_BATTERY_IS_CONST_EQUALIZING_CHARGE;i++) Battery.Equalizing_Charge.I_Battery[i]=0;\
																					MODE_CHARGE=FLOAT;\
																					}
								
																			
/*===================================================================================================================================================================================================*/
/*===============================================================ИНДИКАЦИЯ РАБОТЫ ИБП-Д===============================================================================================================*/
/*===================================================================================================================================================================================================*/				
				
#define TRICLE_CHARGE_INDICATION {LED1.Color=RED; LED1.Flash=BLINK1;}			  //Макрос индикации в режиме заряда Восстановление емкости (TRICLE)
#define BULK_CHARGE_INDICATION 	 {LED1.Color=RED; LED1.Flash=PERMAMENT;}		//Макрос индикации в режиме заряда Быстрый заряд (BULK)
#define OVER_CHARGE_INDICATION 	 {LED1.Color=YELLOW; LED1.Flash=PERMAMENT;}	//Макрос индикации в режиме заряда Перезаряд (OVER)
#define EQUALIZING_CHARGE_INDICATION 	 OVER_CHARGE_INDICATION								//Макрос индикации в режиме заряда Уравнивающий заряд (OVER_CHARGE_INDICATION)
#define FLOAT_CHARGE_INDICATION  {LED1.Color=GREEN; LED1.Flash=PERMAMENT;}  //Макрос индикации в режиме заряда Буферный режим (FLOAT)

#define CHARGE_INDICATION 	 {LED2.Color=GREEN;LED2.Flash=PERMAMENT;}				//Макрос индикации в режиме Заряда (Нагрузка питается от сети )
#define DISCHARGE_INDICATION {LED2.Color=YELLOW;LED2.Flash=PERMAMENT;}  		//Макрос индикации в режиме Разряда (Нагрузка питается от Батареи)
#define WAIT_INDICATION 		 {LED1.Color=YELLOW; LED1.Flash=BLINK1;\
															if (Wrng_U_KAN_D.WarningStatus==YES) {LED2.Color=RED;LED2.Flash=PERMAMENT;}\
															else {LED2.Color=YELLOW;LED2.Flash=BLINK1;}}	//Макрос индикации в режиме Ожидания 
#define SLEEP_INDICATION		 	{LED1.Color=RED; LED1.Flash=BLINK1;\
														   LED2.Color=RED;LED2.Flash=BLINK1;}						//Макрос индикации в режиме Сон
#define ALARM_INDICATION 		 	{LED2.Color=RED;LED2.Flash=PERMAMENT;}     		//Макрос индикации в режиме Аварии

#define BATTARY_LEVEL_LESS_5_INDICATION 			 BATTERY_LEVEL_BETWEEN_5_20_INDICATION			//Макрос индикации при уровне заряда батареи меньше 5%
#define BATTERY_LEVEL_BETWEEN_5_20_INDICATION	 {LED1.Color=RED; LED1.Flash=BLINK1;}				//Макрос индикации при уровне заряда батареи между 5% и 20%
#define BATTERY_LEVEL_BETWEEN_20_50_INDICATION {LED1.Color=RED; LED1.Flash=PERMAMENT;}		//Макрос индикации при уровне заряда батареи между 20% и 50%
#define BATTERY_LEVEL_BETWEEN_50_85_INDICATION {LED1.Color=YELLOW; LED1.Flash=PERMAMENT;}	//Макрос индикации при уровне заряда батареи между 50% и 85%
#define BATTERY_LEVEL_MORE_85_INDICATION 			 {LED1.Color=GREEN;	LED1.Flash=PERMAMENT;}	//Макрос индикации при уровне заряда батереи больше 85%


#define I_BATTERY_CHARGE_IS_LIMITED_INDICATION {\
															LED2.Color=GREEN; LED2.Flash=BLINK4;}			//Макрос сигнализации в режиме заряд, что ток заряда ограничивается текущим током нагрузки 

#define EMERGENCY1_INDICATION {LED1.Color=RED;	  LED1.Flash=BLINK4;}     		//Макрос индикации определенной аварии1 в режиме Аварии
#define EMERGENCY2_INDICATION {LED1.Color=YELLOW; LED1.Flash=BLINK5;}     		//Макрос индикации определенной аварии2 в режиме Аварии
#define EMERGENCY3_INDICATION {LED1.Color=RED;    LED1.Flash=BLINK1;}    		  //Макрос индикации определенной аварии3 в режиме Аварии
#define EMERGENCY4_INDICATION {LED1.Color=GREEN;  LED1.Flash=BLINK2;}     		//Макрос индикации определенной аварии4 в режиме Аварии
#define EMERGENCY5_INDICATION {LED1.Color=YELLOW; LED1.Flash=BLINK1;}     		//Макрос индикации определенной аварии5 в режиме Аварии
#define EMERGENCY6_INDICATION {LED1.Color=YELLOW; LED1.Flash=BLINK4;}     		//Макрос индикации определенной аварии5 в режиме Аварии


#define I_BATTERY_DISCHARGE_MORE_MAX_VALUE_INDICATION {LED2.Color=RED;LED2.Flash=BLINK1;}	//Макрос индикации в режиме Перегрузки по току батареи в режиме Разряд

/*===================================================================================================================================================================================================*/
/*===============================================================УСТАНОВКА ПАРАМЕТРОВ РЕЖИМОВ РАБОТЫ ИБП-Д===========================================================================================*/
/*===================================================================================================================================================================================================*/


/*---------------------------------------------------------------РЕЖИМ ЗАРЯД-------------------------------------------------------------------------------------------------------------------------*/
#define CHARGE_MODE_CONFIGURATION {\
				RESET_DISCHARGE_MODE_CONFIGURATION;/*сброс настроек режима Разряда*/\
				RESET_WAIT_MODE_CONFIGURATION;		 /*сброс настроек режима Ожидания*/\
				RESET_SPEEP_MODE_CONFIGURATION;		 /*сброс настроек режима Сон*/\
				RESET_ALARM_MODE_CONFIGURATION;		 /*сброс настроек режима Авария*/\
				Counter_Check_Battery_Connect.Status = ON; /*включение счетчика времени между проверками о подключении Батареи*/\
				LED1.Flash=PERMAMENT;							 /*LED1 всегда в этом режиме перманентно горит*/\
				BATTERY_JOIN_TO_LOAD(OFF);				 /*Отключение Нагрузки от Батареи */\
				if (Battery.I_Charge_Is_Limited_Flag==YES) {I_BATTERY_CHARGE_IS_LIMITED_INDICATION;}\
				else {CHARGE_INDICATION;} 				 /*индикация режима Заряда (Нагрузка питается от сети )*/\
				if(Battery.I_Charge_Is_Less_Min_Flag==NO) BOOST_CONVERTER_ON;							   /*Включение повышающего регулятора, заряжающего батарею*/\
				}




/*---------------------------------------------------------------РЕЖИМ РАЗРЯД------------------------------------------------------------------------------------------------------------------------*/
#define DISCHARGE_MODE_CONFIGURATION {\
				RESET_CHARGE_MODE_CONFIGURATION;		/*сброс настроек режима Заряд*/\
				RESET_WAIT_MODE_CONFIGURATION;			/*сброс настроек режима Ожидание*/\
				RESET_SPEEP_MODE_CONFIGURATION;			/*сброс настроек режима Сон*/\
				RESET_ALARM_MODE_CONFIGURATION;			/*сброс настроек режима Авария*/\
				if (Battery.Counter_UnderCharge.Flag==YES){/*Если счетчик количества недозарядов превысил максимальное значение, то выставляем флаг о необходимости уравнительного заряда*/\
					RESET_Battery_Counter_UnderCharge;				/*Сбрасываем счетчик количества недозарядов батареи*/\
					Battery.Equalizing_Charge.Need = YES;  /*Из-за систематического недозаряда при следующем заряде необходимо провести уравнительный заряд */\
				}\
				if (Battery.I_Battery_Discharge_More_Max_Value==NO){\
					if(Battery.Status_Join_To_Load == OFF){\
						BATTERY_JOIN_TO_LOAD(ON);						/*Подключение Нагрузки к Батареи если не было зафиксировано превышения максимального тока разряда батареи*/\
						TRANSIENT_PROCESS;\
						}\
					DISCHARGE_INDICATION; 							/*индикация режима Разряда (Нагрузка питается от Батареи )*/\
				}\
				if(Battery.Counter_Battery_Discharge.MaxValue!=TIME_ENDLESS) Battery.Counter_Battery_Discharge.Status=ON;/*Включаем счетчик времени разряда Батареи если заданное время не бесконечность*/\
				else RESET_Counter_Battery_Discharge;\
				/*что еще?*/}

/*---------------------------------------------------------------РЕЖИМ ОЖИДАНИЕ----------------------------------------------------------------------------------------------------------------------*/				
#define WAIT_MODE_CONFIGURATION {\
				RESET_CHARGE_MODE_CONFIGURATION;		/*сброс настроек режима Заряд*/\
				RESET_DISCHARGE_MODE_CONFIGURATION;	/*сброс настроек режима Разряда*/\
				RESET_SPEEP_MODE_CONFIGURATION;			/*сброс настроек режима Сон*/\
				RESET_ALARM_MODE_CONFIGURATION;			/*сброс настроек режима Авария*/\
				BATTERY_JOIN_TO_LOAD(OFF);				  /*Отключение Нагрузки от Батареи */\
				Battery.Equalizing_Charge.Need = YES;  /*Так как предполагается, что в режиме Ожидания батарея должна быть новая*/\
				Battery.Level=BATTERY_LEVEL_5; 			/*Так как предполагается, что в режиме Ожидания батарея должна быть новая, а мы ее заряд не знаем*/\
				WAIT_INDICATION;										/*индикация режима Ожидания*/\
				}
/*---------------------------------------------------------------РЕЖИМ СОН---------------------------------------------------------------------------------------------------------------------------*/
#define SLEEP_MODE_CONFIGURATION {\
				RESET_CHARGE_MODE_CONFIGURATION;		/*сброс настроек режима Заряд*/\
				RESET_DISCHARGE_MODE_CONFIGURATION;	/*сброс настроек режима Разряда*/\
				RESET_WAIT_MODE_CONFIGURATION;			/*сброс настроек режима Сон*/\
				RESET_ALARM_MODE_CONFIGURATION;			/*сброс настроек режима Авария*/\
				BATTERY_JOIN_TO_LOAD(OFF);				 	/*Отключение Нагрузки от Батареи */\
				SLEEP_INDICATION;										/*индикация режима Сон*/\
				}				
/*---------------------------------------------------------------РЕЖИМ АВАРИЯ------------------------------------------------------------------------------------------------------------------------*/				
#define ALARM_MODE_CONFIGURATION {\
				RESET_CHARGE_MODE_CONFIGURATION;		/*сброс настроек режима Заряд*/\
				RESET_DISCHARGE_MODE_CONFIGURATION; /*сброс настроек режима Разряда*/\
				RESET_WAIT_MODE_CONFIGURATION;		  /*сброс настроек режима Ожидания*/\
				RESET_SPEEP_MODE_CONFIGURATION;		  /*сброс настроек режима Сон*/\
				BATTERY_JOIN_TO_LOAD(OFF);				  /*Отключение Нагрузки от Батареи */\
				ALARM_INDICATION;									  /*индикация режима Авария*/\
			}

/*===================================================================================================================================================================================================*/
/*===============================================================СБРОС ПАРАМЕТРОВ РЕЖИМОВ РАБОТЫ ИБП-Д===============================================================================================*/
/*===================================================================================================================================================================================================*/				
				
				
/*---------------------------------------------------------------РЕЖИМ ЗАРЯД-------------------------------------------------------------------------------------------------------------------------*/
#define RESET_CHARGE_MODE_CONFIGURATION {\
				BOOST_CONVERTER_OFF;/*Выключение повышающего регулятора*/\
				MODE_CHARGE=TRICLE;\
				Battery.Charge_Control=Nmax;/*Установка управляющего сигнала Charge_Control в номинальное значение*/\
				DAC2_SetData(Battery.Charge_Control);\
				RESET_Counter_Check_Battery_Connect;\
				Counter_Check_Battery_Connect.MaxValue =	TIME_5_SEC; /*при включении батареи проверка ее подключения будет через 30 секунд*/\
				Battery.I_Charge_Is_Limited_Flag = NO; /*снимаем флаг ограничения тока заряда АКБ*/\
				RESET_Battery_Equalizing_Charge_Counter_I_Battery_Write_Value;\
				RESET_Battery_Equalizing_Charge_Counter_I_Battery_Is_Constant;\
/*сброс времени в течении которого ток заряда батареи не изменяется в Буферном режиме*/}


/*---------------------------------------------------------------РЕЖИМ РАЗРЯД------------------------------------------------------------------------------------------------------------------------*/
#define RESET_DISCHARGE_MODE_CONFIGURATION {\
				RESET_Counter_Battery_Discharge;\
				/*RESET_Counter_Check_I_Battery_Dischargee;*/\
				Battery.I_Battery_Discharge_More_Max_Value=NO;}

/*---------------------------------------------------------------РЕЖИМ ОЖИДАНИЕ----------------------------------------------------------------------------------------------------------------------*/				
#define RESET_WAIT_MODE_CONFIGURATION {}

/*---------------------------------------------------------------РЕЖИМ СОН---------------------------------------------------------------------------------------------------------------------------*/	
#define RESET_SPEEP_MODE_CONFIGURATION {\
				Battery.Counter_Battery_Discharge.Flag = NO; /*сброс флаг окончания заряда*/\
}

/*---------------------------------------------------------------РЕЖИМ АВАРИЯ------------------------------------------------------------------------------------------------------------------------*/				
#define RESET_ALARM_MODE_CONFIGURATION {}

	
	
/*===================================================================================================================================================================================================*/
/*===============================================================СБРОС СЧЕТЧИКОВ=====================================================================================================================*/
/*===================================================================================================================================================================================================*/	
//Cброс счетчика Counter_Check_Battery_Connect
#define RESET_Counter_Check_Battery_Connect {\
	Counter_Check_Battery_Connect.Count=0;\
	Counter_Check_Battery_Connect.Flag=NO;\
	Counter_Check_Battery_Connect.Status=OFF;}		

//Cброс счетчика Counter_Check_Battery_Connect_Current_Drop	
#define RESET_Counter_Check_Battery_Connect_Current_Drop {\
	Counter_Check_Battery_Connect_Current_Drop.Count=0;\
	Counter_Check_Battery_Connect_Current_Drop.Flag=NO;\
	Counter_Check_Battery_Connect_Current_Drop.Status=OFF;}

//Cброс счетчика Counter_Battery_Discharge	
#define RESET_Counter_Battery_Discharge {\
	Battery.Counter_Battery_Discharge.Count=0;\
	Battery.Counter_Battery_Discharge.Status=OFF;}	

//Cброс счетчика Counter_Battery_Discharge	
#define RESET_Counter_Check_I_Battery_Dischargee {\
	Battery.Counter_Check_I_Battery_Discharge.Count=0;\
	Battery.Counter_Check_I_Battery_Discharge.Flag=NO;\
	Battery.Counter_Check_I_Battery_Discharge.Status=OFF;}	

//Cброс счетчика RESET_Battery_Counter_UnderСharge	
#define RESET_Battery_Counter_UnderCharge {\
	Battery.Counter_UnderCharge.Count=0;\
	Battery.Counter_UnderCharge.Flag=NO;\
	Battery.Counter_UnderCharge.Status=OFF;}

//Cброс счетчика RESET_Battery_Equalizing_Charge_Counter_I_Battery_Write_Value
#define RESET_Battery_Equalizing_Charge_Counter_I_Battery_Write_Value {\
	Battery.Equalizing_Charge.Counter_I_Battery_Write_Value.Count=0;\
	Battery.Equalizing_Charge.Counter_I_Battery_Write_Value.Flag=NO;\
	Battery.Equalizing_Charge.Counter_I_Battery_Write_Value.Status=OFF;}


//Cброс счетчика RESET_Battery_Equalizing_Charge_Counter_I_Battery_Is_Constant	
#define	RESET_Battery_Equalizing_Charge_Counter_I_Battery_Is_Constant {\
	Battery.Equalizing_Charge.Counter_I_Battery_Is_Constant.Count=0;\
	Battery.Equalizing_Charge.Counter_I_Battery_Is_Constant.Flag=NO;\
	Battery.Equalizing_Charge.Counter_I_Battery_Is_Constant.Status=OFF;}	
	
	
//Cброс счетчика Counter_I2C_Command_End	
#define RESET_I2C_OW_Converter_Counter_I2C_Command_End {\
	I2C_OW_Converter.Counter_I2C_Command_End.Count=0;\
	I2C_OW_Converter.Counter_I2C_Command_End.Flag=NO;\
	I2C_OW_Converter.Counter_I2C_Command_End.Status=OFF;}		

//Cброс счетчика Counter_ACK_Flag	
#define RESET_I2C_OW_Converter_Counter_ACK_Flag {\
	I2C_OW_Converter.Counter_ACK_Flag.Count=0;\
	I2C_OW_Converter.Counter_ACK_Flag.Flag=NO;\
	I2C_OW_Converter.Counter_ACK_Flag.Status=OFF;}

//Cброс счетчика RS485_Counter_Waiting_Receive_End	
#define RESET_RS485_Counter_Waiting_Receive_End {\
	RS485.Counter_Waiting_Receive_End.Count=0;\
	RS485.Counter_Waiting_Receive_End.Flag=NO;\
	RS485.Counter_Waiting_Receive_End.Status=OFF;}

	
/*===================================================================================================================================================================================================*/
/*===========================================================КОНФИГУРАЦИЯ ИНТЕРФЕЙСА СВЯЗИ С ДАТЧИКОМ ТЕМПЕРАТУРЫ====================================================================================*/
/*===================================================================================================================================================================================================*/							
#define CHECK_ACK_FLAG {\
				while(!I2C_CheckEvent(I2C_EVENT_ACK_FOUND)){\
				I2C_OW_Converter.Counter_ACK_Flag.Status=ON;\
				if(I2C_OW_Converter.Counter_ACK_Flag.Flag==YES) return FAULT;}\
				RESET_I2C_OW_Converter_Counter_ACK_Flag;}	

//Сброс преобразователя I2C-OW	
#define I2C_OW_CONVERTER_RESET {\
				if(I2C_OW_Converter_Reset()==FAULT)	return FAULT;}
//Сброс OW устройства
#define OW_DEVICE_RESET {\
				if(OW_Reset()==FAULT) return FAULT;}
//Обрашение ко всем устройствам OW
#define OW_MESSAGE_TO_ALL_OW_DEVICES {\
				if(OW_Write_Byte(MESSAGE_TO_ALL_OW_DEVICES)==FAULT) return FAULT;}
//Запуск расчета температуры
#define OW_START_CALCULATE_TEMPERATURE {\
				if(OW_Write_Byte(START_CALCULATE_TEMPERATURE)==FAULT) return FAULT;}
//Запуск на считывание рассчитанной температуры
#define	OW_READ_TEMPERATURE {\
				if(OW_Write_Byte(READ_TEMPERATURE)==FAULT) return FAULT;}
//Чтение температуры  
#define	I2C_READ {\
				if(I2C_Read()==FAULT) return FAULT;}

//I2C_OW_CONVERTER работает
#define	I2C_OW_CONVERTER_CORRECT_WORK {\
				I2C_OW_Converter.Fault_Connect=NO; 					/*I2C_OW_Converter без ошибок (работает)*/\
				I2C_OW_Converter.count_Fault_Connect.Count=0; /*обнуляем счетчик ошибок связи*/}

				//I2C_OW_CONVERTER работает
#define	TEMPERATURE_SENSOR1_CORRECT_WORK {\
				TemperatureSensor1.Fault_Connect=NO; 					/*TemperatureSensor1 без ошибок (работает)*/\
				TemperatureSensor1.count_Fault_Connect.Count=0; /*обнуляем счетчик ошибок связи*/}


/*===================================================================================================================================================================================================*/
/*===========================================================КОНФИГУРАЦИЯ ИНТЕРФЕЙСА СВЯЗИ MODBUS ПО RS485====================================================================================*/
/*===================================================================================================================================================================================================*/							

#define RS485_DATA_TRANSMIT	{MDR_PORTB->RXTX = PORT_Pin_7|(MDR_PORTB->RXTX&0xFFE0);}		//Конфигурация Шины RS485 настроена на прием данных от передатчика
#define RS485_DATA_RECEIVE 	{MDR_PORTB->RXTX&= ~(PORT_Pin_7|0x001F);}			//Конфигурация Шины RS485 настроена на отправку данных к передатчика

//очищаем записанные при приеме/передачи данные 
#define RESET_RS485_DATA {\
				for (uint8_t i=0; i<=RS485.Package_Size; i++) RS485.Package_Data[i]=0;	/*очищаем массив принимаемых/отправляемых данных RS485.Package_Data*/\
				RS485.Package_Data_Index = 0;						 /*обнуляем индекс массива*/\
				RS485.Package_Is_New = NO;							 /*пакет обработан, поэтому он уже не новый*/\
			/*	RS485.Amount_Registor_Read_Or_Write = 0;*/ /*обнуляем данные о количестве регисторов, информацию о которых нужно передать*/\
				RESET_RS485_Counter_Waiting_Receive_End; /*сброс счетчика ожидания окончания передачи пакета*/\
}
