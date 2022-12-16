void RS485_SendData(unsigned char Data);
void RS485_ReadData (void);
void RS485_Handling_Data (void);							  //функиця RS485_Handling_Data обрабатывает данные и принимает действия
void RS485_Create_Transmitted_Package (void); 	//функция RS485_Create_Transmitted_Package создает пакет данных, которые нужно отправить мастеру
void Write_Registers_Data(void);								//функция Write_Registers_Data - сохраняет принятые по Modbus данные в регистры
void Convert_And_Save_Receive_Parameters(void); //функция Convert_And_Save_Receive_Parameters - сохраняет принятые по Modbus данные в переменные, используемые в проекте. Также преобразует принятые данные в требуемый для ПО формат
void Create_2Byte_Answer (short data);				  //функиця Create_2Byte_Answer заполняет двухбайтовый ответ о состоянии запрашиваемого регистра (у регистра размер 2 байта) для передаваемого мастеру пакета данных
void Create_Analog_Value_Answer (float value);  //функция Create_Analog_Value_Answer преобразует аналоговые величины в формат в соотвествии с документом "Протокол связи между ИБП-Д и ПК"  
void Create_Koef_Value_Answer (float value); 		//функция Create_Koef_Value_Answer преобразует величины коэффициентов в формат в соотвествии с документом "Протокол связи между ИБП-Д и ПК"  
float Temperature_Convert (unsigned short temp);//функция Temperature_Convert преобразует полученную по Modbus температуру в требуемый программой вид
void RS485_Create_ID_Package(void);
int CRC_Check (unsigned char* data, unsigned char length);	//функиця CRC_Check - рассчитывает контрольную сумму CRC16

int Convert_Time_Discharge (short min, short sec);
