#include "MDR32FxQI_port.h"
#include "Function_Interrupts.h"
#include "Global_Var.h"
#include "Defines.h"
#include "Function.h"
#include "Configuration.h"

/**
* @brief  Представлены функции, вызываемые в различных прерываниях файла Interrupts.c
  */
	
/**
* \brief функция Led_Lighting - управляет свечением светодиода в соотвествии с текущим режимом работы устройства
* \param 	*LED - указатель на стуктуру LED
  */

void Led_Lighting(LedControl *LED)
{
	MDR_PORTF->RXTX|=(int)LED ->pin[LED_OFF]; //обнуление состояния светодиодов (у светодиодов активный уровень 0, не активный -1) 
	// вычисление статуса кванта свечения светодиода: если 1, то светодиод загорается, если 0, то гаснет
	if((LED -> Flash&(1<<LED -> FlashKvantCount))>>LED -> FlashKvantCount==1)
	{
		//включение соотвествующего цвета светодиода (активный уровень 0, т.к используются pnp транзисторы, поэтому применяется побитовое И)
		MDR_PORTF->RXTX&=(int)LED ->pin[LED ->Color];
	}
	else
	{
		//выключение соотвествующего цвета светодиода (активный уровень 0, т.к используются pnp транзисторы, поэтому здесь применяется побитовое ИЛИ)
		MDR_PORTF->RXTX|=(int)LED ->pin[LED_OFF];
	}
	//	счетчик количество прерываний таймера. Если количество прервывайний равно длительности кванта, то обнуляем счетчик количества прерываний таймера и переходим к другому кванту
 if(LED -> FlashKvantPeriodCount==FLASH_KVANT_PERIOD_CODE)
	{
		LED -> FlashKvantPeriodCount=0;
		(LED -> FlashKvantCount==FLASH_KVANT_COUNT-1)?(LED -> FlashKvantCount=0):(LED -> FlashKvantCount++);
	}
	else LED -> FlashKvantPeriodCount++; 
}


/**
* \breaf 	функция ADC_Calculate реализует сбор информации о многовенных значениях каналов АЦП и переводит их в реальные (СИ) значения
* \param 	*ADC - указатель на стуктуру АЦП
 */

/*функция ADC_Calculate - реализует сбор информации о многовенных значениях каналов АЦП и переводит их в реальные (СИ) значения*/
void ADC_Calculate(ADCcontrol *ADC)
{
	//очищаем поле номера канала оцифровки
	MDR_ADC->ADC1_CFG&=~((ADC_CHANNEL_CHS)<<ADC_CHANNEL_SHIFT);
  //вводим новый канал для оцифровки	
	MDR_ADC->ADC1_CFG|=(ADC ->Channel);
	//запускаем преобразование
	ADC1_Start();	
	//ждем окончание преобразования
	uint16_t count=0;
	while ((ADC1_GetStatus() & ADC_STATUS_FLG_REG_EOCIF) == 0) if(++count==0xA) return;
  //считываем результат преобразования	
	ADC->adc_data[ADC->index] = ADC1_GetResult();
  //суммируем значения элементов массива adc_data для дальнейшего вычисления среднего значения (ADC->avr)
	ADC->adc_data_sum+=ADC->adc_data[ADC->index];
	//если массив оцифрованных значений заполнен, то вычисляем среднее значение
	if(ADCready_to_calculate==ADC_READY)
	{ 
		ADC->avr=ADC->adc_data_sum/MEAS_DATA;
		if((ADC->Channel==ADC_I_LOAD_ch)||(ADC->Channel==ADC_I_BATTERY_ch))
		{
			//если выбраны токовые сигналы, то т.к они приподняты на напряжение псевдонуля, то вычитаем из их значения напряжение псевдонуля, при этом учитываем направление тока.
			//и умножаем получившееся значение на коэффициент преобразования и получаем реальное значение тока в СИ
			ADC->avr_real=(ADC5_U_ZERO.avr<ADC->avr)?((ADC->avr-ADC5_U_ZERO.avr)*ADC->Convert_coef):((ADC5_U_ZERO.avr-ADC->avr)*ADC->Convert_coef);
		}
		else
		{
			//для каналов напряжения их кодовое значение умножаем на коэффциент преобразования и получаем реальное значение напряжения в СИ
			ADC->avr_real=ADC->avr*ADC->Convert_coef;
		}
	 ADC_avr_calculate_end|=YES<<(ADC ->Channel>>ADC_CHANNEL_SHIFT);
	}
  //формирование флага окончания записи в массив adc_data элементов в количестве MEAS_DATA;
  (ADC->index==MEAS_DATA-1)?(ADCready_to_calculate|=YES<<(ADC ->Channel>>ADC_CHANNEL_SHIFT)):(ADCready_to_calculate|=ADCready_to_calculate);
	//вычитание из суммы массива adc_data следующего по счету элемента массива, для следующего обновления суммы массива adc_data c приходом нового оцифр. значения т.е среднее значение обновляется каждое прерывание МК (TIMER1_PERIOD)
	(ADC->index==MEAS_DATA-1)?(ADC->adc_data_sum-=ADC->adc_data[0]):(ADC->adc_data_sum-=ADC->adc_data[ADC->index+1]);
	//обнуление следующего элемента массива оцифрованных значений adc_data для записи в нее информации при следующей оцифровке
	(ADC->index==MEAS_DATA-1)?(ADC->adc_data[0]=0):(ADC->adc_data[ADC->index+1]=0);
	//инкреминтируем индекс массива оцифрованных значений
	(ADC->index==MEAS_DATA-1)?(ADC->index=0):(ADC->index++);
}


/**
* \breaf 	фунция Warning_Handler - определяет наличие сигналов внешних предупрежений (тревог) (3 предупреждения(тревоги) аналоговые - U_KAN_D, U_LOAD, I_LOAD)
* \param 	*Wrning - указатель на стуктуру Wrning
 */

void Warning_Handler(Warning *Wrning)
{
	//смещаем сборщик статусов аварии влево на один бит, чтобы на нулевой бит можно было записать статус детектируемого типа аварии
	warning_flag=warning_flag<<1;
	//так как у нас 3 аварии, которые занимают 0-2 биты, то после смещения на 1 бит статус аварии перенесенный на 3 бит уже становится не актуальный, а его новый статус, проверяемый сейчас, будет записан в 0 бит. 
	warning_flag&=0x07;
	//определяем статус пина детектирующего определенную аварию, если 1, то детектируемый тип аварии есть (YES), если 0, то детектируемого типа аварии нет.
	Wrning->WarningStatus=(Wrning->Port->RXTX&(uint32_t)Wrning->Pin)?YES:NO;
	warning_flag|=Wrning->WarningStatus;
}


/**
* @brief Фунция определения необходимости перехода в режим Разряд из режима Заряд (по внешнему сигналу предупрежения(тревоги) по внутреннему сигналу на основе данных АЦП с выхода КАН-Д)
  */

void Check_UPS_Charge_To_Discharge(void)
{
	if((MODE==CHARGE)&&
		((Wrng_U_KAN_D.WarningStatus==YES)||(Wrng_U_LOAD.WarningStatus==YES)||((ADC4_U_KAN_D.avr_real<UPS_D.U.KAN_D.Min_Value)&&(device_status[U_KAN_D_MORE_U_BATTERY_DISCHARGE_MODE]!=YES)))&&
		(Counter_Transient_Process_UPS.Status==OFF)) 
	{
		 BATTERY_JOIN_TO_LOAD(ON);
		 MODE=DISCHARGE;
		 MODE_prev=CHARGE;
		 Rele_Status(&RELE1_AC);
		 Rele_Status(&RELE2_BATTERY);
		 device_status[U_KAN_D_LESS_MIN]=YES;/*установка флага, т.к он может выставиться либо здесь (т.е аппаратно), либо в функции Check_Status(т.е программно))*/
		 Battery.UPS_Mode_Has_Changed_Flag = UPS_FLAG_CHARGE_TO_DISCHARGE;/*Произошло переключение из режима Заряд в режим Разряд*/
		 Counter_Transient_Process_UPS.Status=ON;	/*Включаем счетчик ожидания окончания переходного процесса (Сброс напряжения на выходных емкостях КАН-Д)*/
		 Battery.Counter_UnderCharge.Status=ON;	/*включение счетчика количества недозарядов батареи*/
		 if(MODE_CHARGE!=FLOAT)	Counter_Handling (&Battery.Counter_UnderCharge); /*Инкреминтируем счетчик количества недозарядов батареи, если до перехода в режим разяда батаерия не находилась в режиме FLOAT*/
	}
}


/**
* @brief Фунция определения необходимости перехода в режим Заряд из режима Разряд (по внутреннему сигналу на основе данных АЦП с выхода КАН-Д)
  */
void Check_UPS_Discharge_To_Charge(void)
{
	if((MODE==DISCHARGE)&&(ADC4_U_KAN_D.avr_real>UPS_D.U.KAN_D.Min_Value+U_Hysteresis_KAN_D())&&(Counter_Transient_Process_UPS.Status==OFF))
	{
	 BATTERY_JOIN_TO_LOAD(OFF);
	 MODE=CHARGE;
	 MODE_prev=DISCHARGE;
	 Rele_Status(&RELE2_BATTERY);
	 Rele_Status(&RELE1_AC);
	 device_status[U_KAN_D_LESS_MIN]=NO;
	 Battery.UPS_Mode_Has_Changed_Flag = UPS_FLAG_DISCHARGE_TO_CHARGE;/*Произошло переключение из режима Разряд в режим Заряд*/
	 Counter_Transient_Process_UPS.Status=ON;/*Включаем счетчик ожидания окончания переходного процесса (Сброс напряжения на выходных емкостях КАН-Д)*/
	}
}


/**
* @brief Фунция определения необходимости перехода в режим Аварии из режима Разряд по внешнему сигналу тревоги о превышении тока Нагрузки максимального значения
  */
void Check_UPS_Discharge_To_Alarm(void)
{
	if((MODE==DISCHARGE)&&(Wrng_I_LOAD.WarningStatus==YES)&&(Counter_Transient_Process_UPS.Status==OFF))
	{
		BATTERY_JOIN_TO_LOAD(OFF);
		MODE=ALARM;
		MODE_prev=DISCHARGE;
		RELE_STATUS;
		device_status[I_BATTERY_MORE_MAX]=YES;	
		Battery.UPS_Mode_Has_Changed_Flag = UPS_FLAG_FROM_DISCHARGE;/*Произошло переключение из режима Разряд в режим Заряд*/
		Battery.Counter_Check_I_Battery.Status=ON; /*запускаем счетчик по истечению которого вновь будет проверка превышения тока разряда батареи больше допустимого*/
		Counter_Transient_Process_UPS.Status=ON;/*Включаем счетчик ожидания окончания переходного процесса (Сброс напряжения на выходных емкостях КАН-Д)*/
	}
}																			
																			
/**
* @brief Фунция определения необходимости перехода из режима Авария в Разряд, если в напряжение на КАН-Д или Нагрузки меньше допустимого, 
				 а в режим Авария перешли из-за уменьшения тока заряда батареи меньше минимального или из-за уменьшения температуры батареи меньше минимальной для режима заряд
  */
void Check_UPS_Alarm_To_Discharge(void)
{
	if((MODE==ALARM)&&
		 ((Wrng_U_KAN_D.WarningStatus==YES)||(Wrng_U_LOAD.WarningStatus==YES)||((ADC4_U_KAN_D.avr_real<UPS_D.U.KAN_D.Min_Value)&&(device_status[U_KAN_D_MORE_U_BATTERY_DISCHARGE_MODE]!=YES)))&&
			((device_status[I_BATTERY_LESS_MIN]==YES)	||													//В аварию перешли из-за уменьшения тока заряда батареи меньше минимального
			((device_status[T_BATTERY_LESS_MIN]==YES)&&(MODE_prev==CHARGE)))&&	 	//В аварию перешли из-за уменьшения температуры батареи меньше минимальной для режима заряд
			(Counter_Transient_Process_UPS.Status==OFF)) 
	{
		MODE=DISCHARGE;MODE_prev=ALARM;
		BATTERY_JOIN_TO_LOAD(ON);
		Rele_Status(&RELE1_AC);
		Rele_Status(&RELE2_BATTERY);
		device_status[U_KAN_D_LESS_MIN]=YES;
		Battery.UPS_Mode_Has_Changed_Flag = UPS_FLAG_ALARM_TO_DISCHARGE;/*Произошло переключение из режима Заряд в режим Разряд*/
		Counter_Transient_Process_UPS.Status=ON;	/*Включаем счетчик ожидания окончания переходного процесса (Сброс напряжения на выходных емкостях КАН-Д)*/
		Battery.Counter_UnderCharge.Status=ON;	/*включение счетчика количества недозарядов батареи*/
		if(MODE_CHARGE!=FLOAT)	Counter_Handling (&Battery.Counter_UnderCharge); /*Инкреминтируем счетчик количества недозарядов батареи, если до перехода в режим разяда батарея не находилась в режиме FLOAT*/
	}
}

/**
* @brief Фунция определения необходимости перехода из режима Сон в Заряд
  */
void Check_UPS_Sleep_To_Charge(void)
{
	if((MODE==SLEEP)&&(Wrng_U_KAN_D.WarningStatus==NO)) 
		Battery.UPS_Mode_Has_Changed_Flag=UPS_FLAG_SLEEP_TO_CHARGE;
}


/**
* @brief Фунция проверки тока разряда батареи. Выполняем отключение Батареи, если даже после окончания времени переходного процесса ток батареи больше допустимого
  */
void Check_I_Battery_Discharge(void)
{
	if((MODE==DISCHARGE)&&(ADC1_I_BATTERY.avr_real>UPS_D.I.Battery.Max_Value_Discharge*SAFETY_koef)&&(Counter_Transient_Process.Status==OFF)) 
	{
		MODE=ALARM;MODE_prev=DISCHARGE;
		BATTERY_JOIN_TO_LOAD(OFF);												/*отключам батарею от нагрузки*/
		Battery.I_Battery_Discharge_More_Max_Value=YES;		/*выставляем флаг*/
		Battery.Counter_Check_I_Battery.Status=ON; /*запускаем счетчик по истечению которого вновь будет проверка превышения тока разряда батареи больше допустимого*/
		device_status[I_BATTERY_MORE_MAX]=YES;
	}
	if((MODE==ALARM)&&(ADC1_I_BATTERY.avr_real>UPS_D.I.Battery.Max_Value_Discharge*SAFETY_koef)) BATTERY_JOIN_TO_LOAD(OFF);
}


/**
* \brief функция Counter_Handling обрабатывает используемые счетчики
* \param 	*Counter - указатель на стуктуру Counter
  */
void Counter_Handling (Counter *Counter)
{
	if(Counter->Status==ON)
	{
		Counter->Count++;
		Counter->Flag=NO;
		if(Counter->Count>=Counter->MaxValue) 
		{
			Counter->Count=0;
			Counter->Flag=YES;
			Counter->Status=OFF;
		}
	}
}																			
																			
																			


