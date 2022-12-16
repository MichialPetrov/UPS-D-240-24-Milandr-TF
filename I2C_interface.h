

void delays(void);
char OW_Write_Byte(unsigned char Data); //Отправка данных по OW через I2C (Case A)
char OW_Reset(void); 					//Сброс устройства OW через I2C
char OW_Presence(void);  			//Отправка данных для считывания регистра, содержащего бит Присутствия OW устройства на шине
void Check_OW_Presence(void);	//Определение наличия устройства на шине OW

char I2C_Device_Reset(void); //Сброс устройства I2C
char I2C_Read(void);


void Read_Temperature(void);		//чтение температуры с проверкой наличия I2C_OW_CONVERTOR и OW устройства 
char Handler_Temperature(void);	//обработчик температуры (по факту считывает температуры)
char Save_I2C_Recieved_Data();  /*функция Save_I2C_Recieved_Data сохраняет и преобразует данные, передаваемые по I2C в МК*/


/*===============================================================НЕИСПОЛЬЗУЕМЫЕ ФУНКЦИИ===============================================================================*/
/*
void I2C_Configuration(void); 											//функция I2C_Configuration прописывает конфигурационные параметры в регистр конфигурации устройства I2C (1WS=0, APU=0, SPU=0)
void I2C_Set_Pointer_Register(unsigned char Data);  //Функция I2C_Set_Pointer_Register прочитывает данные с регистров устройства I2C, адреса которых передаются в Data
void OW_Reset2(void); 															//Другой относительно OW_Reset Сброс устройства OW через I2C
void OW_Write_Byte2(unsigned char Data); 						//Отправка данных по OW через I2C (Case B)*/



//







