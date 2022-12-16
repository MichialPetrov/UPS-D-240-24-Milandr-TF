/**
  ******************************************************************************
  * \file    main.c
  * \author  Петров Михаил 
  * \version 1.3.00
  * \date    14.12.2022
  * \brief   ПО для тестирования функционирования (корректности сборки) ИБП-Д-240-24 для МК Миландр
	*					 Построено на основе ПО ИБП-Д-240-24 для МК Миландр
  ******************************************************************************
  */

#include "MDR32FxQI_port.h"
#include "MDR32FxQI_eeprom.h"
#include "MDR32FxQI_iwdg.h"
#include "Initialization.h"
#include "Global_Var.h"
#include "Defines.h"
#include "Configuration.h"
#include "Function.h"
#include "I2C_interface.h" 
#include "RS485_interface.h"
#include "Save_Flash.h" 


int main (void)
{

 	Initialization();
	AVR_VALUE_CALCULATION_IS_END; //ждем завершения расчета средних значений изменяемых величин
	Default_settings();						//уставки инициализируются значениями по умолчанию
	//Settings_From_Flash();				//уставки инициализируются значениями сохраненными во FLASH
	//CHECK_BATTERY_CONNECT_START;  //стартовая проверка наличия подключенной батареи

	Counter_Starting_Initialization.Status = ON; 
	while(Counter_Starting_Initialization.Status==ON)
	{
		LED1.Color=RED;
		LED1.Flash=BLINK4;
		LED2.Color=YELLOW;
		LED2.Flash=BLINK4;
	}
	LED1.Color=GREEN;
	LED1.Flash=PERMAMENT;
	LED2.Color=GREEN;
	LED2.Flash=PERMAMENT;

	while(1)
	{
		//IWDG_ReloadCounter(); //обнуление сторожевого таймера
		//Battery_Parameters();
		//Check_Status();
		//Mode_Of_Work();
		Testing_UPS_D();
		Read_Temperature();
		RS485_ReadData();
		//Save_Setting_to_Flash();
	}
}









