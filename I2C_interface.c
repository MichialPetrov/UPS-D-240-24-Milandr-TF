#include "MDR32FxQI_i2c.h" 
#include "Defines.h"
#include "Global_Var.h"
#include "I2C_interface.h" 
#include "Configuration.h"
#include "Function.h"


//функция Read_Temperature - чтение температуры с проверкой наличия I2C_OW_CONVERTOR и OW устройства 
void Read_Temperature(void)
{
	if(Handler_Temperature()==FAULT)
	{
		Counter_Handling (&I2C_OW_Converter.count_Fault_Connect);
		//если количество неудавшихся попыток связи превысило максимальное, то принимаем, что I2C_OW_Converter не работает
		if (I2C_OW_Converter.count_Fault_Connect.Flag==YES)	I2C_OW_Converter.Fault_Connect=YES; //I2C_OW_Converter отсутствует (не работает)
	}
	else I2C_OW_CONVERTER_CORRECT_WORK;
}


//Сброс устройства I2C
char I2C_OW_Converter_Reset(void)
{
	I2C_Send7bitAddress(ID_CONVERTER_I2C_to_OW_WRITE,I2C_Direction_Transmitter);
	CHECK_ACK_FLAG;
	
  delays(); //по факту это не нужно. работало работало и вдруг следующая строчка перестала выполняться. Такое чувство что косяк как у настройки умножителя частоты тактирования
	I2C_SendByte(CONVERTER_I2C_to_OW_RESET);
	CHECK_ACK_FLAG;

	I2C_SendSTOP();
	delays();
	return CORRECT;
}

//Функиция I2C_Read реализует чтение байта данных у устройства OW через I2C (Case A)
char I2C_Read(void)
{
	I2C_Send7bitAddress(ID_CONVERTER_I2C_to_OW_WRITE,I2C_Direction_Transmitter);
	CHECK_ACK_FLAG;
	
  I2C_SendByte(OW_READ_BYTE);
	CHECK_ACK_FLAG;
	
	I2C_SendSTOP();
	delays();
	
	I2C_Send7bitAddress(ID_CONVERTER_I2C_to_OW_WRITE,I2C_Direction_Transmitter);
	CHECK_ACK_FLAG;
	
  I2C_SendByte(CONVERTER_I2C_SET_POINTER);
	CHECK_ACK_FLAG;
	
	I2C_SendByte(CONVERTER_I2C_DATA_REGISTER);
	CHECK_ACK_FLAG;
	
	I2C_Send7bitAddress(ID_CONVERTER_I2C_to_OW_READ,I2C_Direction_Receiver);
	CHECK_ACK_FLAG;
	
	I2C_StartReceiveData(I2C_Send_to_Slave_NACK);
	delays();
	
	Save_I2C_Recieved_Data(&TemperatureSensor1);
	I2C_SendSTOP();
	delays();
	return CORRECT;
}



//Сброс устройства OW через I2C
char OW_Reset(void)
{
	I2C_Send7bitAddress(ID_CONVERTER_I2C_to_OW_WRITE,I2C_Direction_Transmitter);
	CHECK_ACK_FLAG;
	
	I2C_SendByte(OW_RESET);
	CHECK_ACK_FLAG;
	
	I2C_SendSTOP();
	delays();
	
	I2C_Send7bitAddress(ID_CONVERTER_I2C_to_OW_READ,I2C_Direction_Receiver);
	CHECK_ACK_FLAG;
	
	I2C_StartReceiveData(I2C_Send_to_Slave_NACK);
	delays();
	I2C_SendSTOP();
	delays();
	return CORRECT;
}


//Функиция OW_Write_Byte реализует отправку данных по OW через I2C (Case A)
char OW_Write_Byte(unsigned char Data)
{	

	I2C_Send7bitAddress(ID_CONVERTER_I2C_to_OW_WRITE,I2C_Direction_Transmitter);
	CHECK_ACK_FLAG;
	
	I2C_SendByte(OW_WRITE_BYTE);
	CHECK_ACK_FLAG;
	
	I2C_SendByte(Data);
	CHECK_ACK_FLAG;
	
	I2C_SendSTOP();
	delays();
	return CORRECT;
}

//Функиция OW_Presence - отправка данных для считывания регистра, содержащего бит Присутствия OW устройства на шине 
char OW_Presence()
{
	I2C_Send7bitAddress(ID_CONVERTER_I2C_to_OW_WRITE,I2C_Direction_Transmitter);
	CHECK_ACK_FLAG;
	
	I2C_SendByte(CONVERTER_I2C_SET_POINTER);
	CHECK_ACK_FLAG;
	
	I2C_SendByte(CONVERTER_I2C_STATUS_REGISTER);
	CHECK_ACK_FLAG;
	
	I2C_Send7bitAddress(ID_CONVERTER_I2C_to_OW_READ,I2C_Direction_Receiver);
	CHECK_ACK_FLAG;
	
	delays();
	
	I2C_StartReceiveData(I2C_Send_to_Slave_NACK);
	delays();
	Check_OW_Presence();
	I2C_SendSTOP();
	delays();	
	
	return CORRECT;
}
//фунция Check_OW_Presence - Определение наличия устройства на шине OW
void Check_OW_Presence(void)
{
	if((I2C_GetReceivedData()& OW_PRESENCE_MASK) != OW_PRESENCE_MASK)
	{
		Counter_Handling (&TemperatureSensor1.count_Fault_Connect);
		//если количество неудавшихся попыток связи превысило максимальное, то принимаем, что TemperatureSensor1 не работает
		if(TemperatureSensor1.count_Fault_Connect.Flag==YES) 	TemperatureSensor1.Fault_Connect=YES; //TemperatureSensor1 отсутствует (не работает)
	}
	else 	TEMPERATURE_SENSOR1_CORRECT_WORK;
}


//функция Handler_Temperature - обработчик температуры (по факту считывает температуры)
char Handler_Temperature(void)
{
	I2C_OW_CONVERTER_RESET;					//Cброс преобразователя I2C
	OW_DEVICE_RESET;								//Сброс устройства подключенного по OW
	OW_Presence(); 
	OW_MESSAGE_TO_ALL_OW_DEVICES;		//Обращение ко всем устройствам, подключенных по линии OW
	OW_START_CALCULATE_TEMPERATURE;	//Запуск преобразования температуры
	
	OW_DEVICE_RESET;								//Сброс устройства подключенного по OW
	OW_Presence(); 
	OW_MESSAGE_TO_ALL_OW_DEVICES;		//Обращение ко всем устройствам, подключенных по линии OW
	OW_READ_TEMPERATURE;						//Разрешение чтения температуры
	
	I2C_READ; //прочитать 0 байт с датчика температуры
	I2C_READ;	//прочитать 1 байт с датчика температуры
			
  return CORRECT;
}

void delays(void)
{
	I2C_OW_Converter.Counter_I2C_Command_End.Status=ON;
	while(I2C_OW_Converter.Counter_I2C_Command_End.Status!=OFF);
}


//функция Save_I2C_Recieved_Data сохраняет и преобразует данные, передаваемые по I2C в МК
char Save_I2C_Recieved_Data(TempSens *TemperatureSensor)
{
	if(TemperatureSensor->Fault_Connect!=YES) //если Датчик температуры присутствует на шине OW
	{
		TemperatureSensor->Data[TemperatureSensor->Byte_number]=I2C_GetReceivedData();	//Считываем текущий байт дайнных с регистра данных датчика температуры
		TemperatureSensor->Temperature_code|=TemperatureSensor->Data[TemperatureSensor->Byte_number]<<(8*TemperatureSensor1.Byte_number); //склеиваем байты данных в одно значение

		if(TemperatureSensor->Byte_number==NUMBER_OF_LAST_RECIEVED_BYTE) //если собрана вся информация с датчика температуры
		{
			//определяем знак измеряемой температуры
			TemperatureSensor->Sign=((TemperatureSensor->Temperature_code & SIGH_TEMPERATURE_MASK) != SIGH_TEMPERATURE_MASK)?(POSITIVE):(NEGATIVE);
			if(TemperatureSensor->Sign==NEGATIVE) TemperatureSensor->Temperature_code = (~TemperatureSensor->Temperature_code)+1; //если температура отрицательная, то переводим из дополнительного кода в прямой
			//TemperatureSensor->Temperature_real=TemperatureSensor->Temperature_code*TemperatureSensor->Temperature_coef;
			TemperatureSensor->Temperature_real=(TemperatureSensor->Sign==NEGATIVE)?((-1)*TemperatureSensor->Temperature_code*TemperatureSensor->Temperature_coef):(TemperatureSensor->Temperature_code*TemperatureSensor->Temperature_coef);
			Battery.Temperature=TemperatureSensor->Temperature_real;
			TemperatureSensor->Temperature_code=0;
			TemperatureSensor->Byte_number=0;
		}
		else TemperatureSensor->Byte_number++;
	}
	//если Датчик температуры отсутствует на шине OW
	else 
	{
		TemperatureSensor->Temperature_real=T_BATTERY_DEFAULT;
		Battery.Temperature=T_BATTERY_DEFAULT; 
	}
}



/*===============================================================НЕИСПОЛЬЗУЕМЫЕ ФУНКЦИИ===============================================================================*/
/*
//функция I2C_Configuration прописывает конфигурационные параметры в регистр конфигурации устройства I2C (1WS=0, APU=0, SPU=0)
void I2C_Configuration(void)
{
	I2C_Send7bitAddress(ID_CONVERTER_I2C_to_OW_WRITE,I2C_Direction_Transmitter);
	while(!I2C_CheckEvent(I2C_EVENT_ACK_FOUND));
	
	I2C_SendByte(CONVERTER_I2C_WRITE_CONFIG);
	while(!I2C_CheckEvent(I2C_EVENT_ACK_FOUND));
	
	I2C_SendByte(0xF0);
	while(!I2C_CheckEvent(I2C_EVENT_ACK_FOUND));
	
	I2C_SendSTOP();
	delays();	
}

//Функция I2C_Set_Pointer_Register прочитывает данные с регистров устройства I2C, адреса которых передаются в Data
void I2C_Set_Pointer_Register(unsigned char Data)
{
	I2C_Send7bitAddress(ID_CONVERTER_I2C_to_OW_WRITE,I2C_Direction_Transmitter);
	while(!I2C_CheckEvent(I2C_EVENT_ACK_FOUND));
	
	I2C_SendByte(CONVERTER_I2C_SET_POINTER);
	while(!I2C_CheckEvent(I2C_EVENT_ACK_FOUND));
	
	I2C_SendByte(Data);
	while(!I2C_CheckEvent(I2C_EVENT_ACK_FOUND));
	
	I2C_Send7bitAddress(ID_CONVERTER_I2C_to_OW_READ,I2C_Direction_Receiver);
	while(!I2C_CheckEvent(I2C_EVENT_ACK_FOUND));
	
	delays();
	
	I2C_StartReceiveData(I2C_Send_to_Slave_NACK);
	delays();
	I2C_SendSTOP();
	delays();	
}
//Другой относительно OW_Reset Сброс устройства OW через I2C
void OW_Reset2(void)
{
	I2C_Send7bitAddress(ID_CONVERTER_I2C_to_OW_WRITE,I2C_Direction_Transmitter);
	while(!I2C_CheckEvent(I2C_EVENT_ACK_FOUND));
	
	I2C_SendByte(OW_RESET);
	while(!I2C_CheckEvent(I2C_EVENT_ACK_FOUND));
	
	
	
	I2C_Send7bitAddress(ID_CONVERTER_I2C_to_OW_READ,I2C_Direction_Receiver);
	while(!I2C_CheckEvent(I2C_EVENT_ACK_FOUND));
	
	delays();
	while(!I2C_CheckEvent(I2C_EVENT_ACK_FOUND));
	delays();
	
	I2C_StartReceiveData(I2C_Send_to_Slave_NACK);
	delays();
	I2C_SendSTOP();
	delays();
}


//Отправка данных по OW через I2C (Case B)
void OW_Write_Byte_2(unsigned char Data)
{	
	I2C_Send7bitAddress(ID_CONVERTER_I2C_to_OW_WRITE,I2C_Direction_Transmitter);
	while(!I2C_CheckEvent(I2C_EVENT_ACK_FOUND));
	
	I2C_SendByte(OW_WRITE_BYTE);
	while(!I2C_CheckEvent(I2C_EVENT_ACK_FOUND));
	
	I2C_SendByte(Data);
	while(!I2C_CheckEvent(I2C_EVENT_ACK_FOUND));
	delays();
	
	I2C_Send7bitAddress(ID_CONVERTER_I2C_to_OW_READ,I2C_Direction_Receiver);
	while(!I2C_CheckEvent(I2C_EVENT_ACK_FOUND));
	delays();
	delays();
	delays();
	
	I2C_StartReceiveData(I2C_Send_to_Slave_ACK);
	delays();
	delays();
	delays();
	
	I2C_StartReceiveData(I2C_Send_to_Slave_NACK);
	delays();
	I2C_SendSTOP();
	delays();
}
*/




