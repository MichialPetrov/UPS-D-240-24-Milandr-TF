#include "MDR32FxQI_timer.h"
#include "MDR32FxQI_adc.h" 
#include "MDR32FxQI_port.h"
#include "MDR32FxQI_uart.h" 
#include "Defines.h"
#include "Configuration.h"
#include "Global_Var.h"
#include "Function.h"
#include "Function_Interrupts.h"



void Timer1_IRQHandler(void)
{

	/* Сброс флага прерывания по переполнению таймера */
  TIMER_ClearITPendingBit(MDR_TIMER1, TIMER_STATUS_CNT_ARR);	
	Counter_Handling (&Counter_Starting_Initialization);
	Counter_Handling (&Battery.Counter_Check_I_Battery);
	Counter_Handling (&Counter_Anti_Bounce);
	Counter_Handling (&Counter_Transient_Process);
	Counter_Handling (&Counter_Transient_Process_UPS);
	Counter_Handling (&I2C_OW_Converter.Counter_ACK_Flag);
	Counter_Handling (&I2C_OW_Converter.Counter_I2C_Command_End);

	Counter_Handling (&RS485.Counter_Waiting_Receive_End);
	Led_Lighting(&LED1);
	Led_Lighting(&LED2);
	ADC_Calculate(&ADC5_U_ZERO);
	ADC_Calculate(&ADC0_I_LOAD);
	ADC_Calculate(&ADC1_I_BATTERY);
	ADC_Calculate(&ADC2_U_LOAD);
	ADC_Calculate(&ADC3_U_BATTERY);
	ADC_Calculate(&ADC4_U_KAN_D);
	ADC_Calculate(&ADC7_KAN_D_TYPE);


	
}

void Timer2_IRQHandler(void)
{
	/* Сброс флага прерывания по переполнению таймера */
  TIMER_ClearITPendingBit(MDR_TIMER2, TIMER_STATUS_CNT_ARR);	
	__ISB();	 					 //ожидание выполнения всех инструкций конвейера (pipeline)
	//START_CONDITION_IS_END;
	Warning_Handler(&Wrng_U_KAN_D);
	Warning_Handler(&Wrng_U_LOAD);
	
	if(Battery.Counter_Check_I_Battery.Status == OFF) //если последние 5 секунд КЗ не обнаруживалось
	{
		Warning_Handler(&Wrng_I_LOAD);
		if(Wrng_I_LOAD.WarningStatus == YES) //если авария КЗ зафиксирована, то запускаем таймер 5 секунд
		{
			Battery.Counter_Check_I_Battery.Status = ON;
		}
	}
	
}


void UART1_IRQHandler(void)
{
	if (UART_GetITStatusMasked(MDR_UART1, UART_IT_RX) == SET)	//проверка установки флага прерывания по окончании приема данных
	 {
	   UART_ClearITPendingBit(MDR_UART1, UART_IT_RX);																// очистка флага прерывания по приему данных
		 RS485.Package_Data[RS485.Package_Data_Index]=UART_ReceiveData(MDR_UART1);	  // записать принятый байт в статическую переменную
		 (RS485.Package_Data_Index==MAX_DATA_SIZE_BYTES)?(RS485.Package_Data_Index=0):(RS485.Package_Data_Index++);
		 RS485.Package_Is_New = YES;											//Пришли новые данные, поэтому пакет новый
		 RS485.Counter_Waiting_Receive_End.Status = ON;		//Запускаем счетчик, переполнение которого сигнализирует, что пакет полностью передался
		 RS485.Counter_Waiting_Receive_End.Count = 0;			//Обнуляем счет счетчика, переполнение которого сигнализирует, что пакет полностью передался 
	 }
}






