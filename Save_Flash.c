#include "MDR32FxQI_eeprom.h"
#include "Save_Flash.h"
#include "Global_Var.h"
#include <string.h>

/**
  * @brief  1) Миландр FLASH память почему-то называет EEPROM
	2) FLASH память в Миландре располагается между 0х08000000 и 0х10000000 адресами
	3) Осноная программа располагается в этих же адресах, начиная с 0х08000000. 
	При сохранении уставок это учитывать. Чтобы уставки не сохранялись в ячейки,
	в которых сохраняется программа.
	4) При работе с FLASH памятью прерывания запрещены.
	5) Функции, вызываемые для работы с FLASH не должны вызываться из памяти FLASH.
	Они должны вызываться из ОЗУ ( для миландра IRAM1 [0x20000000-0x20007FFF]). То есть функции 
	файла MDR32FxQI_eeprom.с должны вызываться из IRAM1
  */

Status Check_Update_ID_Device(void); //функция Check_Update_ID_Device проверяет обновилась ли идентификационная карта устройства  
Status Check_Update_Settings(void); //функция Check_Update_Settings проверяет обновились ли значения уставок, которые пришли по RS485 
void Update_ID_Device(void);	//функция Update_ID_Device обновляет идентификационную карту устройства 
void Update_Settings(void); //функция Update_Settings обновляет буфер уставок, если это требуется
void Write_New_ID_Device_To_Flash(void); //функция Write_New_ID_Device_To_Flash записывает обновленную идентификационную карту во FLASH 
void Write_New_Settings_To_Flash(void); //запись обновленных устанок во FLASH
uint32_t Convert_Temperature_To_Save_Flash(float Temperature); //преобразование температуры в целочисленный вид (при отрицательной в дополнительный код со знаком)
uint32_t Save_ID_Device (uint8_t *Data, uint8_t max_count, uint32_t Address);


/**
 * \breaf 	функция Save_Setting_to_Flash сохраняет новые величины уставок во FLASH память 
 */
 void Save_Setting_to_Flash(void)
{
	if(Check_Update_Settings() == YES)
	{
		Update_Settings();							 //то обновляем буфер уставок
		Write_New_Settings_To_Flash();	 //и обновляем данные во FLASH
	}
	if(Check_Update_ID_Device() == YES)
	{
		Update_ID_Device();
		Write_New_ID_Device_To_Flash();
		
	}
	
}

/**
 * \breaf 	функция Check_Update_ID_Device проверяет обновилась ли идентификационная карта устройства  
 * \return  YES - уставки обновились, NO - уставки не обновлялись
 */
Status Check_Update_ID_Device(void)
{
	//если что-то в идентификационной карте поменялось (то есть массивы UPS_D.Device_ID.Device_Name и UPS_D_buf.Device_ID.Device_Name не совпадают (если совпадают, то memcmp возвращает значение не равное 0)), то возвращаем YES
 if ((memcmp (UPS_D.Device_ID.Device_Name, 		 UPS_D_buf.Device_ID.Device_Name, 		 DEVICE_NAME_BYTE) 			!=NO)	||
		 (memcmp (UPS_D.Device_ID.Firmware_Version,UPS_D_buf.Device_ID.Firmware_Version, FIRMWARE_VERSION_BYTE) !=NO)	||
		 (memcmp (UPS_D.Device_ID.Order_Number, 	 UPS_D_buf.Device_ID.Order_Number, 		 ORDER_NUMBER_BYTE) 		!=NO)	||
     (memcmp (UPS_D.Device_ID.Batch_Number, 	 UPS_D_buf.Device_ID.Batch_Number, 		 BATCH_NUMBER_BYTE) 		!=NO)	||
     (memcmp (UPS_D.Device_ID.Number_In_Batch, UPS_D_buf.Device_ID.Number_In_Batch,  NUMBER_IN_BATCH_BYTE) 	!=NO))
	  {
			 return YES;
		}
	else return NO;

}


/**
 * \breaf 	функция Check_Update_Settings проверяет обновились ли значения уставок, которые пришли по RS485  
 * \return  YES - уставки обновились, NO - уставки не обновлялись
 */
Status Check_Update_Settings(void)
{
 if((UPS_D_buf.Battery_Capacity_User				 != UPS_D.Battery_Capacity_User) 				||
		(UPS_D_buf.Time_Discharge_User					 != UPS_D.Time_Discharge_User)					||
		(UPS_D_buf.Time_Discharge_User					 != UPS_D.Time_Discharge_User)					||
		(UPS_D_buf.Device_Adress								 != UPS_D.Device_Adress)								||
		(UPS_D_buf.I_Charge_Min_koef					   != UPS_D.I_Charge_Min_koef)					  ||
		(UPS_D_buf.U.Load.Min_Value						   != UPS_D.U.Load.Min_Value)							||
		(UPS_D_buf.U.Load.Max_Value							 != UPS_D.U.Load.Max_Value)							||
		(UPS_D_buf.U.Battery.Min_Value					 != UPS_D.U.Battery.Min_Value)					||
		(UPS_D_buf.U.Battery.Max_Value					 != UPS_D.U.Battery.Max_Value)					||
		(UPS_D_buf.U.KAN_D.Min_Value						 != UPS_D.U.KAN_D.Min_Value)						||
		(UPS_D_buf.U.KAN_D.Max_Value						 != UPS_D.U.KAN_D.Max_Value)						||
		(UPS_D_buf.T.Battery.Min_Value					 != UPS_D.T.Battery.Min_Value)					||
		(UPS_D_buf.T.Battery.Min_Value_Discharge != UPS_D.T.Battery.Min_Value_Discharge)||
		(UPS_D_buf.T.Battery.Max_Value 					 != UPS_D.T.Battery.Max_Value)					||
		(UPS_D_buf.U_Tricle 										 != UPS_D.U_Tricle)											||
		(UPS_D_buf.U_Over   										 != UPS_D.U_Over)									  		||
		(UPS_D_buf.U_Equalizing 								 != UPS_D.U_Equalizing)									||
		(UPS_D_buf.U_Float 											 != UPS_D.U_Float)											||
		(UPS_D_buf.I_Tricle_koef								 != UPS_D.I_Tricle_koef)								||
		(UPS_D_buf.I_Bulk_koef 								   != UPS_D.I_Bulk_koef)									||
		(UPS_D_buf.I_Over_koef									 != UPS_D.I_Over_koef)									||
		(UPS_D_buf.T_Compensation_koef_Over 		 != UPS_D.T_Compensation_koef_Over)			||
		(UPS_D_buf.T_Compensation_koef_Float		 != UPS_D.T_Compensation_koef_Float))
	  {
			 return YES;
		}
	else return NO;

}

/**
 * \breaf 	функция Update_ID_Device обновляет идентификационную карту устройства  
 */
void Update_ID_Device(void)
{
			//копируем данные индетификационной карты из структуры UPS_D в структуру UPS_D_buf
		memcpy(UPS_D_buf.Device_ID.Device_Name, 		 UPS_D.Device_ID.Device_Name, 		sizeof(UPS_D.Device_ID.Device_Name));
		memcpy(UPS_D_buf.Device_ID.Firmware_Version, UPS_D.Device_ID.Firmware_Version,sizeof(UPS_D.Device_ID.Firmware_Version));
		memcpy(UPS_D_buf.Device_ID.Order_Number,     UPS_D.Device_ID.Order_Number, 		sizeof(UPS_D.Device_ID.Order_Number));
		memcpy(UPS_D_buf.Device_ID.Batch_Number,     UPS_D.Device_ID.Batch_Number, 		sizeof(UPS_D.Device_ID.Batch_Number));
		memcpy(UPS_D_buf.Device_ID.Number_In_Batch,  UPS_D.Device_ID.Number_In_Batch, sizeof(UPS_D.Device_ID.Number_In_Batch));
}

/**
 * \breaf 	функция Update_Settings обновляет буфер уставок  
 */
void Update_Settings(void)
{
		UPS_D_buf.Battery_Capacity_User				  = UPS_D.Battery_Capacity_User; 				
		UPS_D_buf.Time_Discharge_User					  = UPS_D.Time_Discharge_User;										
		UPS_D_buf.Device_Adress								  = UPS_D.Device_Adress;								
		UPS_D_buf.I_Charge_Min_koef							= UPS_D.I_Charge_Min_koef;									
		UPS_D_buf.U.Load.Min_Value						  = UPS_D.U.Load.Min_Value;							
		UPS_D_buf.U.Load.Max_Value							= UPS_D.U.Load.Max_Value;							
		UPS_D_buf.U.Battery.Min_Value					  = UPS_D.U.Battery.Min_Value;						
		UPS_D_buf.U.Battery.Max_Value					  = UPS_D.U.Battery.Max_Value;						
		UPS_D_buf.U.KAN_D.Min_Value						  = UPS_D.U.KAN_D.Min_Value;							
		UPS_D_buf.U.KAN_D.Max_Value						  = UPS_D.U.KAN_D.Max_Value;							
		UPS_D_buf.T.Battery.Min_Value					  = UPS_D.T.Battery.Min_Value;						
		UPS_D_buf.T.Battery.Min_Value_Discharge = UPS_D.T.Battery.Min_Value_Discharge;
		UPS_D_buf.T.Battery.Max_Value 					= UPS_D.T.Battery.Max_Value;						
		UPS_D_buf.U_Tricle 										  = UPS_D.U_Tricle;											
		UPS_D_buf.U_Over   										  = UPS_D.U_Over;												
		UPS_D_buf.U_Equalizing 								  = UPS_D.U_Equalizing;									
		UPS_D_buf.U_Float 											= UPS_D.U_Float;												
		UPS_D_buf.I_Tricle_koef								  = UPS_D.I_Tricle_koef;									
		UPS_D_buf.I_Bulk_koef 								  = UPS_D.I_Bulk_koef;										
		UPS_D_buf.I_Over_koef									  = UPS_D.I_Over_koef;										
		UPS_D_buf.T_Compensation_koef_Over 		  = UPS_D.T_Compensation_koef_Over;			
		UPS_D_buf.T_Compensation_koef_Float		  = UPS_D.T_Compensation_koef_Float;			
}

/**
 * \breaf 	функция Write_New_ID_Device_To_Flash записывает обновленную идентификационную карту во FLASH
 */
void Write_New_ID_Device_To_Flash(void)
{
	__disable_irq(); //запрещаем прерывания
	uint32_t Address = ADRESS_FLASH_ID_DEVICE_SAVE;
	EEPROM_ErasePage(Address, EEPROM_Main_Bank_Select);
	//сохраняем информацию каждого массива идентификационной карты 
	Address=Save_ID_Device(UPS_D_buf.Device_ID.Device_Name, 		 DEVICE_NAME_BYTE, 			Address);
	Address=Save_ID_Device(UPS_D_buf.Device_ID.Firmware_Version, FIRMWARE_VERSION_BYTE, Address);
	Address=Save_ID_Device(UPS_D_buf.Device_ID.Order_Number,		 ORDER_NUMBER_BYTE, 		Address);
	Address=Save_ID_Device(UPS_D_buf.Device_ID.Batch_Number, 		 BATCH_NUMBER_BYTE, 		Address);
	Address=Save_ID_Device(UPS_D_buf.Device_ID.Number_In_Batch,  NUMBER_IN_BATCH_BYTE, 	Address);
 __enable_irq();	 //разрешаем прерывания
}

/**
 * \breaf 	функция Write_New_Settings_To_Flash записывает обновленные устаноки во FLASH
 */
void Write_New_Settings_To_Flash(void)
{
	__disable_irq(); //запрещаем прерывания
	uint32_t Address = ADRESS_FLASH_SETTINGS_SAVE;
	EEPROM_ErasePage(Address, EEPROM_Main_Bank_Select);
	 __enable_irq();	 //разрешаем прерывания
	for(uint8_t i=0; i<AMOUT_SAVED_SETTINGS; i++)
	{			
		uint32_t Data;
		switch (i)
		{
			case 0:  Data = (uint32_t)UPS_D_buf.Battery_Capacity_User; 														break;
			case 1:	 Data = (uint32_t)UPS_D_buf.Time_Discharge_User; 															break;
			case 2:	 Data = (uint32_t)UPS_D_buf.Device_Adress; 																		break;
			case 3:	 Data = (uint32_t)UPS_D_buf.I_Charge_Min_koef;																break;
			case 4:	 Data = (uint32_t)(UPS_D_buf.U.Load.Min_Value 						* FLASH_koef_1);		break;
			case 5:  Data = (uint32_t)(UPS_D_buf.U.Load.Max_Value 						* FLASH_koef_1);		break;
			case 6:  Data = (uint32_t)(UPS_D_buf.U.Battery.Min_Value 					* FLASH_koef_1);		break;
			case 7:  Data = (uint32_t)(UPS_D_buf.U.Battery.Max_Value 					* FLASH_koef_1);		break;
			case 8:  Data = (uint32_t)(UPS_D_buf.U.KAN_D.Min_Value 						* FLASH_koef_1);		break;
			case 9:  Data = (uint32_t)(UPS_D_buf.U.KAN_D.Max_Value 						* FLASH_koef_1);		break;
			case 10: Data = Convert_Temperature_To_Save_Flash(UPS_D_buf.T.Battery.Min_Value);	  	break;
			case 11: Data = Convert_Temperature_To_Save_Flash(UPS_D_buf.T.Battery.Min_Value_Discharge);		break;
			case 12: Data = Convert_Temperature_To_Save_Flash(UPS_D_buf.T.Battery.Max_Value); 		break;
			case 13: Data = (uint32_t)(UPS_D_buf.U_Tricle 										* FLASH_koef_1);		break;
			case 14: Data = (uint32_t)(UPS_D_buf.U_Over 											* FLASH_koef_1);		break;
			case 15: Data = (uint32_t)(UPS_D_buf.U_Equalizing 								* FLASH_koef_1);		break;
			case 16: Data = (uint32_t)(UPS_D_buf.U_Float 											* FLASH_koef_1);		break;
			case 17: Data = (uint32_t)(UPS_D_buf.I_Tricle_koef);																	break;
			case 18: Data = (uint32_t)(UPS_D_buf.I_Bulk_koef);																		break;
			case 19: Data = (uint32_t)(UPS_D_buf.I_Over_koef);																		break;
			case 20: Data = (uint32_t)(UPS_D_buf.T_Compensation_koef_Over);												break;
			case 21: Data = (uint32_t)(UPS_D_buf.T_Compensation_koef_Float);											break;
		}
		__disable_irq(); //запрещаем прерывания
		EEPROM_ProgramWord(Address, EEPROM_Main_Bank_Select, Data);
		__enable_irq();	 //разрешаем прерывания
		Address+=4;	//инкримент адреса 4 (на 32 бита) (потому что 32х битный МК)
	}
 __enable_irq();	 //разрешаем прерывания
}

/**
 * \breaf 	функция Convert_Temperature_To_Save_Flash преобразует температуру в целочисленный вид (при отрицательной в дополнительный код со знаком)
 * \param 	Temperature - величина температуры, которую нужно сохранить в СИ
 * \return  YES - уставки обновились, NO - уставки не обновлялись
 */
uint32_t Convert_Temperature_To_Save_Flash(float Temperature)
{
		float data;
		uint32_t data1;
		if(Temperature<0)	//если температура отрицательная 
			{
				data = (-1)*Temperature*FLASH_koef_1;	//убираем знак и умножаем на FLASH_koef_1, чтобы не потерять числа после запятой при операции data1=(uint32_t)data
				data1=(uint32_t)data;		//преобразуем в целочисленный тип
				data1=~(data1-1);				//переводим число в дополнительный код со знаком	
			}
			else 
			{
				data = Temperature*FLASH_koef_1;
				data1=(uint32_t)data;		//преобразуем в целочисленный тип
			}
		return data1;							
}

/**
 * \breaf 	функция Save_ID_Device сохраняет данные идентификационной карты во Flash
 * \param 	*Data - принимаемый массив, который требуется сохранить
 * \param 	max_count - количество данных, которые нужно сохранить
 * \param 	Address - адрес Flash с которого нужно начать сохранять данные
 * \return  Address - адрес на котором завершилось сохранение
 */

uint32_t Save_ID_Device (uint8_t *Data, uint8_t max_count, uint32_t Address)
{
	for(uint8_t i=0; i<max_count; i++)
	{
		EEPROM_ProgramWord(Address, EEPROM_Main_Bank_Select, (uint32_t)Data[i]);
		Address+=4;	//инкримент адреса 4 (на 32 бита) (потому что 32х битный МК)
	}
	return Address;
}
