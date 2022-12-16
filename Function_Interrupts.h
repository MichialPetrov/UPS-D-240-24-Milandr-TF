void Led_Lighting (); //функция Led_Lighting управляет свечением светодиода в соотвествии с текущим режимом работы устройства
void ADC_Calculate(); //функиця ADC_Calculate заполняет массив оцифрованных значений adc_data (см. структуру ADCcontrol, Global_Var.h)
void Warning_Handler(); //функция Warning_Handler обрабатывает предупреждения (3 предупреждения - Wrng_I_LOAD - превышение допустимого тока в нагрузке, Wrng_U_LOAD - напряжение на нагрузке выше нормы, Wrng_U_KAN_D  - напряжение с КАН_Д ниже нормы)
void Check_UPS_Charge_To_Discharge(void);
void Check_UPS_Discharge_To_Charge(void);
void Check_UPS_Discharge_To_Alarm(void);
void Check_UPS_Alarm_To_Discharge(void);
void Check_UPS_Sleep_To_Charge(void);
void Check_I_Battery_Discharge(void);
void Counter_Handling();
