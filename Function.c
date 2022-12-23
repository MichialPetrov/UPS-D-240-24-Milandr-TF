#include "MDR32FxQI_port.h"
#include "MDR32FxQI_dac.h" 
#include "MDR32FxQI_i2c.h"
#include "Global_Var.h"
#include "Defines.h"
#include "Configuration.h"
#include "Function.h"
#include <stdlib.h> 



/*фунция Rele_Status - определяет статус используемых реле*/
void Rele_Status(ReleControl *RELE)
{
	//переключение реле в зависимости от текущего состояние устройства, если ReleStatus=NOT_NORM, то реле в непроводящем состоянии, если NORM - то проводящем состоянии
	(RELE ->ReleStatus==NORM)?(PORT_SetBits(MDR_PORTE, RELE ->pin)):(PORT_ResetBits(MDR_PORTE, RELE ->pin));

}


/*функция Battery_Parameters - определяет параметры Батареи - емкость и время разряда*/
void Battery_Parameters(void)
{
  ANTI_BOUNCE;
	Battery.CapacityPins=(int)BATTERY_CAPACITY_PINS;
	switch(Battery.CapacityPins)
	{
		case BATTERY_CAPACITY_4_5_Ah:   Battery.Capacity=CAPACITY_4500mAh;   					  break;
		case BATTERY_CAPACITY_5_Ah:			Battery.Capacity=CAPACITY_5000mAh;							break;	
		case BATTERY_CAPACITY_5_8_Ah:		Battery.Capacity=CAPACITY_5800mAh;							break;
		case BATTERY_CAPACITY_7_2_Ah:		Battery.Capacity=CAPACITY_7200mAh;							break;	
		case BATTERY_CAPACITY_9_Ah:			Battery.Capacity=CAPACITY_9000mAh;							break;
		case BATTERY_CAPACITY_12_Ah:		Battery.Capacity=CAPACITY_12000mAh;							break;	
		case BATTERY_CAPACITY_18_Ah:		Battery.Capacity=CAPACITY_18000mAh;							break;			
		case BATTERY_CAPACITY_26_Ah:		Battery.Capacity=CAPACITY_26000mAh;							break;
		case BATTERY_SWITCH_OFF:			  Battery.Capacity=CAPACITY_SWITCH_OFF; 					break;			
		case BATTERY_CAPACITY_USER:			Battery.Capacity=UPS_D.Battery_Capacity_User;		break;
	}
	if(Battery.CapacityPins!=BATTERY_CAPACITY_USER)	UPS_D.Battery_Capacity_User = CAPACITY_USER_DEFAULT; //если емкость задается с Тумблера 2, то сбрасываем переменную емкости задаваемой пользователем, и выставляем значение по умолчанию c выставлением старшего бита
	ANTI_BOUNCE;
	Battery.TimeDischargePins=TIME_DISCHARGE_PINS;
	switch(Battery.TimeDischargePins)
	{
		case DISCHARGE_TIME_05_MIN:			Battery.Counter_Battery_Discharge.MaxValue=TIME_05_MIN; 							break;
		case DISCHARGE_TIME_1_MIN:			Battery.Counter_Battery_Discharge.MaxValue=TIME_1_MIN;								break;
		case DISCHARGE_TIME_3_MIN:			Battery.Counter_Battery_Discharge.MaxValue=TIME_3_MIN;								break;
		case DISCHARGE_TIME_5_MIN:			Battery.Counter_Battery_Discharge.MaxValue=TIME_5_MIN;								break;
		case DISCHARGE_TIME_10_MIN:			Battery.Counter_Battery_Discharge.MaxValue=TIME_10_MIN;								break;
		case DISCHARGE_TIME_15_MIN:			Battery.Counter_Battery_Discharge.MaxValue=TIME_15_MIN;								break;
		case DISCHARGE_TIME_20_MIN:			Battery.Counter_Battery_Discharge.MaxValue=TIME_20_MIN;								break;
		case DISCHARGE_TIME_30_MIN:			Battery.Counter_Battery_Discharge.MaxValue=TIME_30_MIN;								break;
		case DISCHARGE_TIME_USER: 			Battery.Counter_Battery_Discharge.MaxValue=UPS_D.Time_Discharge_User;	break;
		case DISCHARGE_TIME_ENDLESS:
			Battery.Counter_Battery_Discharge.MaxValue=TIME_ENDLESS;
		  RESET_Counter_Battery_Discharge;
		break;		
	}
	if(Battery.TimeDischargePins!=DISCHARGE_TIME_USER)	UPS_D.Time_Discharge_User = TIME_USER_DEFAULT; //если время разряда задается с Тумблера 1, то сбрасываем переменную времени разряда задаваемой пользователем, и выставляем значение по умолчанию c выставлением старшего бита
}


//функция Check_Status - определяет соответствие параметров режиму
void Check_Status(void)
{
	for(DStat=U_KAN_D_LESS_MIN;DStat<AMOUNT_STATUS;DStat++)
	{
		TRANSIENT_PROCESS_IF_UPS_CHANGED_MODE;
		switch (DStat)
		{
			case U_KAN_D_LESS_MIN:	//0	
				//гистерезис 
				if(device_status[U_KAN_D_LESS_MIN]==NO)	device_status[U_KAN_D_LESS_MIN] = ((ADC4_U_KAN_D.avr_real<UPS_D.U.KAN_D.Min_Value)||(Wrng_U_KAN_D.WarningStatus==YES))?YES:NO;
			  else device_status[U_KAN_D_LESS_MIN]=(ADC4_U_KAN_D.avr_real<UPS_D.U.KAN_D.Min_Value+U_Hysteresis_KAN_D())?YES:NO;
				break;
			case U_KAN_D_MORE_MAX:	//1
		  	//гистерезис 
			  if(device_status[U_KAN_D_MORE_MAX]==NO) device_status[U_KAN_D_MORE_MAX]=(ADC4_U_KAN_D.avr_real>UPS_D.U.KAN_D.Max_Value+U_Hysteresis_KAN_D())?YES:NO; 
			  else device_status[U_KAN_D_MORE_MAX]=(ADC4_U_KAN_D.avr_real>UPS_D.U.KAN_D.Max_Value)?YES:NO; 
				break;
			case U_LOAD_LESS_MIN:	//2	
				if(device_status[U_LOAD_LESS_MIN]==NO)	device_status[U_LOAD_LESS_MIN] = ((ADC2_U_LOAD.avr_real<UPS_D.U.Load.Min_Value)||(Wrng_U_LOAD.WarningStatus==YES))?YES:NO;
			  else device_status[U_LOAD_LESS_MIN]=(ADC2_U_LOAD.avr_real<UPS_D.U.Load.Min_Value+U_Hysteresis_KAN_D())?YES:NO;
				break;	
      case U_LOAD_MORE_MAX:	//3
				//гистерезис 
			  if(device_status[U_LOAD_MORE_MAX]==NO) device_status[U_LOAD_MORE_MAX]=(ADC2_U_LOAD.avr_real>UPS_D.U.Load.Max_Value+U_Hysteresis_KAN_D())?YES:NO; 
			  else device_status[U_LOAD_MORE_MAX]=(ADC2_U_LOAD.avr_real>UPS_D.U.Load.Max_Value)?YES:NO; 
			break;
			case U_BATTERY_LESS_MIN:	//4
				//гистерезис 
			  if(device_status[U_BATTERY_LESS_MIN]==NO) device_status[U_BATTERY_LESS_MIN]=(ADC3_U_BATTERY.avr_real<UPS_D.U.Battery.Min_Value)?YES:NO; 
			  else device_status[U_BATTERY_LESS_MIN]=(ADC3_U_BATTERY.avr_real<UPS_D.U.Battery.Min_Value+U_HYSTERESIS)?YES:NO; 
			break;
			case U_BATTERY_MORE_MAX:	//5
				//гистерезис 
					if(device_status[U_BATTERY_MORE_MAX]==NO) device_status[U_BATTERY_MORE_MAX]=(ADC3_U_BATTERY.avr_real>UPS_D.U.Battery.Max_Value+U_HYSTERESIS)?YES:NO; 
					else device_status[U_BATTERY_MORE_MAX]=(ADC3_U_BATTERY.avr_real>UPS_D.U.Battery.Max_Value)?YES:NO; 
			break;
			case I_LOAD_LESS_MIN:	//6
				device_status[I_LOAD_LESS_MIN]=(ADC0_I_LOAD.avr_real<UPS_D.I.Load.Min_Value)?YES:NO; 
			break;
			case I_LOAD_MORE_MAX:	//7
			//гистерезис 
			  if(device_status[I_LOAD_MORE_MAX]==NO) device_status[I_LOAD_MORE_MAX]=(ADC0_I_LOAD.avr_real>UPS_D.I.Load.Max_Value*SAFETY_koef)?YES:NO; 
			  else device_status[I_LOAD_MORE_MAX]=(ADC0_I_LOAD.avr_real>UPS_D.I.Load.Max_Value*SAFETY_koef-I_HYSTERESIS)?YES:NO; 
			break;
			case I_BATTERY_LESS_MIN:	//8
				device_status[I_BATTERY_LESS_MIN]=((ADC1_I_BATTERY.avr_real<UPS_D.I.Battery.Min_Value)||(Check_I_LOAD_Value() == YES))?YES:NO; 
			break;
			case I_BATTERY_MORE_MAX:	//9
			{	
				if((MODE==CHARGE)&&(ADC1_I_BATTERY.avr_real>UPS_D.I.Battery.Max_Value*SAFETY_koef))
					{
						device_status[I_BATTERY_MORE_MAX]=YES;	
						Battery.Counter_Check_I_Battery.Status=ON; /*запускаем счетчик по истечению которого вновь будет проверка превышения тока разряда батареи больше допустимого*/
					}			
				if((MODE==ALARM)&&(ADC1_I_BATTERY.avr_real<UPS_D.I.Battery.Max_Value)&&(Battery.Counter_Check_I_Battery.Status==OFF))
					{
					device_status[I_BATTERY_MORE_MAX]=NO;
					}
				else if((MODE==DISCHARGE)&&(Battery.Counter_Check_I_Battery.Status==OFF)) //если режим разряд и не идет счет времени между проверками величины тока разряда при обнаружении тока большего I_BATTERY_MAX_DISCHARGE
				{
					if(ADC1_I_BATTERY.avr_real>UPS_D.I.Battery.Max_Value_Discharge*SAFETY_koef) 
					{
						device_status[I_BATTERY_MORE_MAX]=YES;	
					}
					else
						{ 		
							if(Battery.Status_Join_To_Load == OFF)
							{
							//если ток разряда батареи меньше максимального I_BATTERY_MAX_DISCHARGE, то
								Battery.I_Battery_Discharge_More_Max_Value=NO;		//флаг о превышении убираем	
								device_status[I_BATTERY_MORE_MAX]=Battery.I_Battery_Discharge_More_Max_Value;							//выставляем статус
								BATTERY_JOIN_TO_LOAD(ON);													//подключаем батарею к нагрузке
								TRANSIENT_PROCESS; 																//ожидаем время завещения переходного процесса								
							}
					}
				}
			}
			break;
			case T_BATTERY_LESS_MIN:	//10
			{
				if(MODE==CHARGE)
				{
					if(device_status[T_BATTERY_LESS_MIN]==NO) device_status[T_BATTERY_LESS_MIN]=(Battery.Temperature<UPS_D.T.Battery.Min_Value)?YES:NO; 
					else device_status[T_BATTERY_LESS_MIN]=(Battery.Temperature<UPS_D.T.Battery.Min_Value+T_HYSTERESIS)?YES:NO;
				}
				else if((MODE==DISCHARGE)||(MODE==SLEEP))
				{
					if(device_status[T_BATTERY_LESS_MIN]==NO) device_status[T_BATTERY_LESS_MIN]=(Battery.Temperature<UPS_D.T.Battery.Min_Value_Discharge)?YES:NO; 
					else device_status[T_BATTERY_LESS_MIN]=(Battery.Temperature<UPS_D.T.Battery.Min_Value_Discharge+T_HYSTERESIS)?YES:NO;
				}
				else if(MODE==ALARM)
				{
					if(device_status[T_BATTERY_LESS_MIN]==YES)
					{
						if(MODE_prev == CHARGE)
						{
							device_status[T_BATTERY_LESS_MIN]=(Battery.Temperature<UPS_D.T.Battery.Min_Value+T_HYSTERESIS)?YES:NO;
						}
						else if((MODE_prev == DISCHARGE)||(MODE_prev==SLEEP))
						{
							device_status[T_BATTERY_LESS_MIN]=(Battery.Temperature<UPS_D.T.Battery.Min_Value_Discharge+T_HYSTERESIS)?YES:NO;
						}
					}
				}
			}
			break;
			case T_BATTERY_MORE_MAX:	//11
					if(device_status[T_BATTERY_MORE_MAX]==NO) device_status[T_BATTERY_MORE_MAX]=(Battery.Temperature>UPS_D.T.Battery.Max_Value)?YES:NO; 
					else device_status[T_BATTERY_MORE_MAX]=(Battery.Temperature>UPS_D.T.Battery.Max_Value-T_HYSTERESIS)?YES:NO;
			break;
			case REMOUT_STATUS:	//12
				{	
					/*Если REMOUT=ON или UPS_D.Remout_Control=YES (т.е дистанционного запроса на отключение батареи нету, устройство продолжает работать (ON)), то статус YES
					/Если REMOUT=OFF или UPS_D.Remout_Control=NO (т.е есть дистанционный запрос на отключение батареи есть (OFF)), то статус NO*/
				char rem=REMOUT;
				device_status[REMOUT_STATUS]=((rem==ON)&&(UPS_D.Remout_Control == YES))?YES:NO;
				}
			break;
			case SET_BATTERY_STATUS:	//13
				//Проверяем что выставлено на Тумблере 2, если выставлена "Есть батарея", то YES, если "Откл. АКБ", то NO
				device_status[SET_BATTERY_STATUS]=(Battery.Capacity!=CAPACITY_SWITCH_OFF)?YES:NO; 
			break;
			case CHECK_BATTERY_STATUS:	//14 
				//проверяем подключена ли батареия в режиме Заряд, device_status[CHECK_BATTERY_STATUS]=YES - Батарея отключена, NO - Батарея включена
				if((MODE==CHARGE)||(MODE==ALARM)) 	device_status[CHECK_BATTERY_STATUS]=(Check_Battery_Connect()==ON)?NO:YES;		
			if(device_status[CHECK_BATTERY_STATUS]==YES) 
			{
				Battery.Level=BATTERY_LEVEL_0; //если батарея отключена, то заряд батареи равен 0
			}
			break;
			case BATTERY_LEVEL_LESS_MIN:	//15
				//если емкость батареи меньше 5%, то статус YES
				device_status[BATTERY_LEVEL_LESS_MIN]=(Battery.Level<=BATTERY_LEVEL_5)?YES:NO; 
			break;
			case BATTERY_TIME_DISCHARGE_END:	//16
				//если время разряда закончилось, то статус YES
				device_status[BATTERY_TIME_DISCHARGE_END]=(Battery.Counter_Battery_Discharge.Flag==YES)?YES:NO;
			break;
			case I_BATTERY_IMOSSIBLE_TO_LIMIT:	//17
			{
				if(MODE==CHARGE)	//проверка отсутствия возможности ограничить ток заряда батареи возможна только в случае работы в режиме Заряд
				{			
					if(Counter_Transient_Process_I_Battery_Impossible_Interrupt.Status!=ON)	/*если время ожидания переходного процесса после включения ИРН-2 закончено. 
					Счетчик включается (ON) если была завиксирована невозможность ограничить ток заряда батареи и после чего ток нагрузки спал значения при котором можно заряжать батарею*/
					{
						float Ibat_max=(float)((UPS_D.P_KAN_D-ADC0_I_LOAD.avr_real*ADC2_U_LOAD.avr_real)/UPS_D.U_Tricle);//максимальное значение тока батареи, рассчитывается исходя из текущего баланса мощностей
						if((ADC1_I_BATTERY.avr_real>Ibat_max)&&(Battery.Charge_Control==Nmax))//Если выполнены условия события невозможности ограничить ток заряда батареи
						{
							device_status[I_BATTERY_IMOSSIBLE_TO_LIMIT]=YES;										//выставляем статус о невозможности ограничить ток заряда батареи
							Battery.I_Battery_Impossible_Interrupt = ADC1_I_BATTERY.avr_real;		//сохраняем значения тока заряда батереи, которое требуется для заряда батареи
						}
						else device_status[I_BATTERY_IMOSSIBLE_TO_LIMIT]=NO;	//Если условия события невозможности ограничить ток заряда батареи не обнаружено, то снимаем статус о невозможности ограничить ток заряда батареи
					}
				}
				else if (MODE==ALARM)	//Если в режим Авария перешли				VVV (см. чуть ниже)
				{
					if(device_status[I_BATTERY_IMOSSIBLE_TO_LIMIT]==YES)	//потому что было невозможно ограничить ток заряда батареи 	VVV (см. чуть ниже)
					{
						float Ibat_max=(float)((UPS_D.P_KAN_D-ADC0_I_LOAD.avr_real*ADC2_U_LOAD.avr_real)/UPS_D.U_Tricle);//высчитываем максимальное значение тока заряда батареи, который можно направить в батарею
						if(Battery.I_Battery_Impossible_Interrupt<(Ibat_max-I_HYSTERESIS*2)) //если максимальное значение тока заряда батареи, который можно направить в батарею, больше на I_HYSTERESIS*2 чем требуемый для заряда ток Battery.I_Battery_Impossible_Interrupt
						{
							device_status[I_BATTERY_IMOSSIBLE_TO_LIMIT]=NO;												//то снимаем статус, так как нужно перейти в режим Заряд теперь
              Counter_Transient_Process_I_Battery_Impossible_Interrupt.Status = ON;	//активируем счетчик ожидания окончания времени окончания переходного процесса после включения ИРН-2
							Battery.I_Battery_Impossible_Interrupt =0;	
						}
					}
				}
				else device_status[I_BATTERY_IMOSSIBLE_TO_LIMIT] = NO; //если работаем не в режимах CHARGE и ALARM, то снимаем флаг
			}
			break;
			case U_KAN_D_MORE_U_BATTERY_DISCHARGE_MODE:	//18
			{
				if(device_status[CHECK_BATTERY_STATUS]!=YES)
				{
					if((MODE==DISCHARGE)||(MODE==SLEEP)) device_status[U_KAN_D_MORE_U_BATTERY_DISCHARGE_MODE] = (ADC4_U_KAN_D.avr_real>(ADC3_U_BATTERY.avr_real-U_HYSTERESIS))?(YES):(NO);
					else if (MODE==CHARGE)
					{
						if(device_status[U_KAN_D_MORE_U_BATTERY_DISCHARGE_MODE] == YES)
						{
							if(((MODE_CHARGE==OVER)||(MODE_CHARGE==EQUALIZING))||(device_status[U_KAN_D_LESS_MIN]==NO)) device_status[U_KAN_D_MORE_U_BATTERY_DISCHARGE_MODE] = NO;
						}
					}
				}
			}
			break;
			case U_KAN_D_BETWEEN_MIN_AND_MIN_FACTORY_VALUE:	//19
			{
			}
			break;
		}
	}
	/*Автомат состояний. На основе показаний проверенных Статусов вычисляем в каком режиме будем работать*/
	if(MODE==CHARGE)
	{
		if(((device_status[U_KAN_D_LESS_MIN]==YES) || (device_status[U_LOAD_LESS_MIN]==YES))&&
				(device_status[U_KAN_D_MORE_U_BATTERY_DISCHARGE_MODE]==NO))													{MODE=DISCHARGE;MODE_prev = CHARGE;}
		else if((device_status[REMOUT_STATUS]==NO) || (device_status[SET_BATTERY_STATUS]==NO)) 	{MODE=WAIT;			MODE_prev = CHARGE;}
		else if ((device_status[U_KAN_D_MORE_MAX]) || (device_status[U_LOAD_MORE_MAX])     ||
						(device_status[U_BATTERY_MORE_MAX])|| (device_status[CHECK_BATTERY_STATUS])||
	          (device_status[I_LOAD_LESS_MIN])   || (device_status[I_LOAD_MORE_MAX])     || 
					  (device_status[I_BATTERY_LESS_MIN])||	(device_status[I_BATTERY_MORE_MAX])  ||
						(device_status[T_BATTERY_LESS_MIN])|| (device_status[T_BATTERY_MORE_MAX])  ||
						(device_status[I_BATTERY_IMOSSIBLE_TO_LIMIT]))	{MODE=ALARM; MODE_prev=CHARGE;}
		
		if(MODE!=CHARGE) 
			Battery.UPS_Mode_Has_Changed_Flag = UPS_FLAG_FROM_CHARGE; //Если произошла смена режима то сигнализируем об этом и включаем TRANSIENT_PROCESS_IF_UPS_CHANGED_MODE
	}
	else if (MODE==DISCHARGE)
	{
		if(((device_status[U_KAN_D_LESS_MIN]==NO)  ||(device_status[U_KAN_D_MORE_U_BATTERY_DISCHARGE_MODE]==YES))  
																							 &&(device_status[U_KAN_D_MORE_MAX]==NO)) 		{MODE=CHARGE;MODE_prev = DISCHARGE;} 
		else if((device_status[REMOUT_STATUS]==NO) ||(device_status[SET_BATTERY_STATUS]==NO)) 	{MODE=WAIT;  MODE_prev = DISCHARGE;}
		else if((device_status[U_BATTERY_LESS_MIN]==YES)||(device_status[BATTERY_LEVEL_LESS_MIN]==YES)||
					 (device_status[BATTERY_TIME_DISCHARGE_END]==YES)) 																{MODE=SLEEP; MODE_prev = DISCHARGE;}
		else if ((device_status[U_KAN_D_MORE_MAX]) ||(device_status[U_LOAD_MORE_MAX])||
						(device_status[U_BATTERY_MORE_MAX])||
						(device_status[I_BATTERY_LESS_MIN])||(device_status[I_BATTERY_MORE_MAX])||
						(device_status[T_BATTERY_LESS_MIN])||(device_status[T_BATTERY_MORE_MAX])) 			{MODE=ALARM; MODE_prev=DISCHARGE;}
		
	  if(MODE!=DISCHARGE)
		{			
			Battery.UPS_Mode_Has_Changed_Flag = UPS_FLAG_FROM_DISCHARGE; //Если произошла смена режима то сигнализируем об этом и включаем TRANSIENT_PROCESS_IF_UPS_CHANGED_MODE	
			Counter_Transient_Process_UPS.Status=ON;
		}
	}
	else if (MODE==WAIT)
	{
		if((device_status[U_KAN_D_LESS_MIN]==NO) 	 && (device_status[U_KAN_D_MORE_MAX]==NO) &&
			 (device_status[REMOUT_STATUS]==YES)		 &&	(device_status[SET_BATTERY_STATUS]==YES))	{MODE=CHARGE;	 	 MODE_prev = WAIT;}
		else if (((device_status[U_KAN_D_LESS_MIN]==YES)||(device_status[U_LOAD_LESS_MIN]==YES)) &&
			(device_status[REMOUT_STATUS]==YES)      &&(device_status[SET_BATTERY_STATUS]==YES)) 	{MODE=DISCHARGE; MODE_prev = WAIT;}
		else if ((device_status[U_KAN_D_MORE_MAX]) ||(device_status[U_LOAD_MORE_MAX])				||
						(device_status[U_BATTERY_MORE_MAX])||
						(device_status[I_LOAD_LESS_MIN])   ||(device_status[I_LOAD_MORE_MAX]))					{MODE=ALARM; 		 MODE_prev = WAIT;}			

		if(MODE!=WAIT) 
		{
			Battery.UPS_Mode_Has_Changed_Flag = UPS_FLAG_FROM_WAIT; //Если произошла смена режима то сигнализируем об этом и включаем TRANSIENT_PROCESS_IF_UPS_CHANGED_MODE							
			Counter_Transient_Process_UPS.Status=ON;
		}
		
	}
	else if (MODE==SLEEP)
	{
		if((device_status[U_KAN_D_LESS_MIN]==NO) 	 && 
			(device_status[I_LOAD_LESS_MIN]==NO)     && (device_status[I_LOAD_MORE_MAX]==NO)&&
			(device_status[T_BATTERY_LESS_MIN]==NO)  && (device_status[T_BATTERY_MORE_MAX]==NO))	{MODE=CHARGE;  MODE_prev=SLEEP;}
		else if((device_status[REMOUT_STATUS]==NO) || (device_status[SET_BATTERY_STATUS]==NO)) 	{MODE=WAIT; 	 MODE_prev=SLEEP;}
		else if ((device_status[U_KAN_D_MORE_MAX]) || (device_status[U_LOAD_MORE_MAX])||
						(device_status[U_BATTERY_MORE_MAX])||
						(device_status[T_BATTERY_LESS_MIN])|| (device_status[T_BATTERY_MORE_MAX]))		 	{MODE=ALARM; 	 MODE_prev=SLEEP;}		
		
		if(MODE!=SLEEP) 
		{
			Battery.UPS_Mode_Has_Changed_Flag = UPS_FLAG_FROM_SLEEP; //Если произошла смена режима то сигнализируем об этом и включаем TRANSIENT_PROCESS_IF_UPS_CHANGED_MODE				
			Counter_Transient_Process_UPS.Status=ON;
		}
	}
	else if (MODE==ALARM)
	{
		if (MODE_prev==CHARGE)
		{
			if(((device_status[U_KAN_D_MORE_MAX])    ||  (device_status[U_LOAD_MORE_MAX])					 ||
				(device_status[U_BATTERY_MORE_MAX])    ||  
				(device_status[I_LOAD_LESS_MIN])       ||  (device_status[I_LOAD_MORE_MAX])					 ||
				(device_status[I_BATTERY_LESS_MIN])    ||  (device_status[I_BATTERY_MORE_MAX])			 ||
				(device_status[T_BATTERY_LESS_MIN])    ||  (device_status[T_BATTERY_MORE_MAX])			 ||
				(device_status[CHECK_BATTERY_STATUS])  ||  (device_status[I_BATTERY_IMOSSIBLE_TO_LIMIT]))!=YES)	MODE=MODE_prev;
		}
		else if (MODE_prev==DISCHARGE)
		{
			if(((device_status[U_KAN_D_MORE_MAX])    || (device_status[U_LOAD_MORE_MAX])   ||
				(device_status[U_BATTERY_MORE_MAX])    ||
			  (device_status[T_BATTERY_LESS_MIN])    || (device_status[T_BATTERY_MORE_MAX])||
				(device_status[I_BATTERY_LESS_MIN])    ||	(device_status[I_BATTERY_MORE_MAX]))!=YES)	MODE=MODE_prev;
		}
		else if (MODE_prev==WAIT)
		{
			if(((device_status[U_KAN_D_MORE_MAX])    || (device_status[U_LOAD_MORE_MAX])||
				(device_status[U_BATTERY_MORE_MAX])    ||
				(device_status[I_LOAD_LESS_MIN])       || (device_status[I_LOAD_MORE_MAX]))!=YES)			MODE=MODE_prev;
		}
		else if (MODE_prev==SLEEP)
		{
			if(((device_status[U_KAN_D_MORE_MAX])    || (device_status[U_LOAD_MORE_MAX])||
				(device_status[U_BATTERY_MORE_MAX])    || 
				(device_status[T_BATTERY_LESS_MIN])    || (device_status[T_BATTERY_MORE_MAX]))!=YES)	MODE=MODE_prev;
		}
		if(MODE!=ALARM) 
		{
			Battery.UPS_Mode_Has_Changed_Flag = UPS_FLAG_FROM_ALARM; //Если произошла смена режима то сигнализируем об этом и включаем TRANSIENT_PROCESS_IF_UPS_CHANGED_MODE
			Counter_Transient_Process_UPS.Status=ON;
		}
	}
}

/**
 * \breaf 	функция Mode_Of_Work - обеспечивает работу устройства в заданном режиме
 */
void Mode_Of_Work(void)
{
	UPS_D.P_KAN_D = Type_Of_KAN_D(); //определяем значения Мощность КАН-Д UPS_D.I.Load.Max_Value и UPS_D.I.Battery.Max_Value_Discharge
	switch(MODE)
	{
		case CHARGE:
		{
			float Ibat_max=(float)((UPS_D.P_KAN_D-ADC0_I_LOAD.avr_real*ADC2_U_LOAD.avr_real)/UPS_D.U_Tricle);//максимальное значение тока батареи, рассчитывается исходя из текущего баланса мощностей
			CHARGE_MODE_CONFIGURATION; //макрос настройки работы в соотвествии с режимом Заряда
			RELE_STATUS; //макрос установки реле в требуемое состояние в зависимости от режима
			Calcutale_Battery_Level();
			switch(MODE_CHARGE)
			{
				case TRICLE: //режим TRICLE - восстановление емкости
				{	
					float Itc=Battery.Capacity*(1.f/CAPACITY_koef)*UPS_D.I_Tricle_koef*(1.f/DEVISION_koef);		//ток заряда батареи в режиме TRICLE (восстановления емкости), определяемый Емкостью батареи умноженный на коэффициент заряда для этого режима
					float U_battery_tricle=UPS_D.U_Tricle+U_BATTERY_COMPENSATION_OVER;
					if(ADC3_U_BATTERY.avr_real>U_battery_tricle) MODE_CHARGE=BULK;	//если напряжение на батареи стало больше U_battery_tricle, то переходим в режим BULK_CHARGE (быстрая зарядка)
					else Battery_Current_Stabilization(Choose_Current_Of_Charge_Mode(Itc, Ibat_max)); //если напряжение на батареи меньше U_battery_tricle, то устанавливаем требуемый в текущих условиях ток заряда (Может быть Itc, Ibat, I_BATTERY_MAX)						
				}
					break;
				
				case BULK: //режим BULK - быстрый заряд
				{
					float Ibc=Battery.Capacity*(1.f/CAPACITY_koef)*UPS_D.I_Bulk_koef*(1.f/DEVISION_koef);		//ток заряда батареи в режиме BULK (быстрый заряд), определяемый Емкостью батареи умноженный на коэффициент заряда для этого режима
					float U_battery_over=UPS_D.U_Over-U_HYSTERESIS+U_BATTERY_COMPENSATION_OVER;
					float U_battery_equalizing=UPS_D.U_Equalizing-U_HYSTERESIS+U_BATTERY_COMPENSATION_OVER;
					if((Battery.Equalizing_Charge.Need==YES)&&(ADC3_U_BATTERY.avr_real>U_battery_equalizing)) 
						MODE_CHARGE=EQUALIZING;
					if((Battery.Equalizing_Charge.Need==NO)&&(ADC3_U_BATTERY.avr_real>U_battery_over)) 
						MODE_CHARGE=OVER;
					else Battery_Current_Stabilization(Choose_Current_Of_Charge_Mode(Ibc, Ibat_max)); //если напряжение на батареи меньше U_battery_over, то устанавливаем требуемый в текущих условиях ток заряда (Может быть Itc, Ibat, I_BATTERY_MAX)								
				}
					break;
				
				case OVER: //режим OVER -  Перезаряд
				{
					float Ioc=Battery.Capacity*(1.f/CAPACITY_koef)*UPS_D.I_Over_koef*(1.f/DEVISION_koef); //минимальный ток заряда батареи в режиме OVER_CHARGE (перезаряд), определяемый Емкостью батареи умноженный на коэффициент заряда для этого режима
				  if (ADC1_I_BATTERY.avr_real<Ioc) MODE_CHARGE=FLOAT; //Если ток зарада батереи стал меньше Ioc, то переходим в режим Восстановление Емкости (FLOAT_CHARGE)
					else 
					{
						//если текущее значение тока заряда батареи больше текущего максимально возможного, то стабилизируем ток на необходимом значении
							if(ADC1_I_BATTERY.avr_real>Ibat_max) Battery_Current_Stabilization(Choose_Current_Of_Charge_Mode(UPS_D.I.Battery.Max_Value, Ibat_max));
							else 
							{ //если текущее значение тока заряда батерии корректное, то заряжаем батарею постоянным напряжением UPS_D.U_Over+U_BATTERY_COMPENSATION_OVER
								float U_battery_over=UPS_D.U_Over+U_BATTERY_COMPENSATION_OVER;
								Set_Battery_Voltage(U_battery_over);								
							}	
					}
				}
					break;
				case EQUALIZING:
				{
				  float U_battery_equalizing=UPS_D.U_Equalizing+U_BATTERY_COMPENSATION_OVER; //высчитываем значение напряжения в режиме Уравнительный заряд с учетом температурной компенсации
					Battery.Equalizing_Charge.Counter_I_Battery_Is_Constant.Status = ON; //включаем счетчик сбора данных о токе батареи, считающий в течении какого времени ток заряда батареи не изменяется больше чем на DELTA_OF_I_BATTERY_EQUALIZING_CHARGE
					Battery.Equalizing_Charge.Counter_I_Battery_Write_Value.Status = ON; //Включение счетчика, который при переполнении записывает значения тока батареи в режиме EQUALIZING. Действие необходимо для мгновенного считывания значения тока батареи и включении режима EQUALIZING
					Set_Battery_Voltage(U_battery_equalizing);	//выставляем на батареи напряжение в режиме Уравнительный заряд
					if(Battery.Equalizing_Charge.Counter_I_Battery_Write_Value.Flag==YES)//если счетчик YES, то текущее значение тока Батареи записывать разрешено 
					{
						Battery.Equalizing_Charge.I_Battery[Battery.Equalizing_Charge.Counter_I_Battery_Is_Constant.Count] = ADC1_I_BATTERY.avr_real; //записываем данные о токе батареи
						float value; //переменная хранящая информацию об относительном отличии текущего значения тока заряда батареи от значения нулевого элемента массива Battery.Equalizing_Charge.I_Battery[]
						value=(Battery.Equalizing_Charge.I_Battery[Battery.Equalizing_Charge.Counter_I_Battery_Is_Constant.Count]-Battery.Equalizing_Charge.I_Battery[0])/Battery.Equalizing_Charge.I_Battery[0];
						value=(value<0)?(value*(-1)):(value); //берем модуль от получившегося значения относительного отличия
						if (value>DELTA_OF_I_BATTERY_EQUALIZING_CHARGE) //если относительное отличие больше допустимого DELTA_OF_I_BATTERY_EQUALIZING_CHARGE,
						{
							for(uint16_t i=0;i<Battery.Equalizing_Charge.Counter_I_Battery_Is_Constant.Count;i++)
							{
								Battery.Equalizing_Charge.I_Battery[i]=Battery.Equalizing_Charge.I_Battery[i+1]; /*то переносим данные из следующей ячейки в предыдущую тем самым сдвигая весь массив на одну ячейку меньше по номеру, 
								//там самым значение value на следующей итерации будет вычисляться из других чисел и обеспечивается сближение текущего значения тока со значением нулевой ячейки*/
							}
							Battery.Equalizing_Charge.I_Battery[Battery.Equalizing_Charge.Counter_I_Battery_Is_Constant.Count] = 0; //обнуляе значение текущей ячейки, как оно перенеслось в ячейку на 1 меньше 
						}
						else //если относительное отличие value меньше допустимого
						{
							Counter_Handling(&Battery.Equalizing_Charge.Counter_I_Battery_Is_Constant); //инкрементируем счетчик времени в течении которого ток зарада в режиме Уравнительный заряд находится в рамках DELTA_OF_I_BATTERY_EQUALIZING_CHARGE
							if(Battery.Equalizing_Charge.Counter_I_Battery_Is_Constant.Flag==YES) BATTERY_EQUALIZING_CHARGE_IS_END; //если счетчик переполнился, то Уравнительный заряд закончился, переходим в режим FLOAT
						}
						RESET_Battery_Equalizing_Charge_Counter_I_Battery_Write_Value;			//сбрасываем счетчик обновления данных о токе батареи
					}
					if(Battery.Temperature>T_BATTERY_45_DEGREE) BATTERY_EQUALIZING_CHARGE_IS_END; //Если Температура больше 45 градусов, то выходим из уравнительного заряда и переходим в буферный
				}
					break;
				case FLOAT:
				{	
						//если текущее значение тока заряда батареи больше текущего максимально возможного, то стабилизируем ток на необходимом значении
					  if(ADC1_I_BATTERY.avr_real>Ibat_max) Battery_Current_Stabilization(Choose_Current_Of_Charge_Mode(UPS_D.I.Battery.Max_Value, Ibat_max));				
						else 
						{ //если текущее значение тока заряда батерии корректное, то заряжаем батарею постоянным напряжением UPS_D.U_Float+U_BATTERY_COMPENSATION_FLOAT
							float U_battery_float=UPS_D.U_Float+U_BATTERY_COMPENSATION_FLOAT;
							Set_Battery_Voltage(U_battery_float); 
						}
					Battery.Equalizing_Charge.Need = NO; 			//уравнительный заряд окончен, уравнительный заряд больше не нужен
					RESET_Battery_Counter_UnderCharge;				//Сбрасываем счетчик количества недозарядов батареи		
				}
					break;
			}
		}
		break;
		case DISCHARGE:
			DISCHARGE_MODE_CONFIGURATION; //макрос настройки работы в соотвествии с режимом Разряда
			RELE_STATUS; //макрос установки реле в требуемое состояние в зависимости от режима
			Calcutale_Battery_Level(); //индикация процента оставшегося заряда батареи
		break;
		
		case WAIT:	
		{
			WAIT_MODE_CONFIGURATION;		//макрос настройки работы в соотвествии с режимом Ожидания
			RELE_STATUS;								//макрос установки реле в требуемое состояние в зависимости от режима	 
		}
		break;
		
		case SLEEP:
			SLEEP_MODE_CONFIGURATION;	//макрос настройки работы в соотвествии с режимом Сон
			RELE_STATUS; //макрос установки реле в требуемое состояние в зависимости от режима
		break;
		case ALARM:
			ALARM_MODE_CONFIGURATION;	//макрос настройки работы в соотвествии с режимом Авария	
			RELE_STATUS; //макрос установки реле в требуемое состояние в зависимости от режима
			if(device_status[I_BATTERY_IMOSSIBLE_TO_LIMIT])									  									 EMERGENCY6_INDICATION;
		  if(device_status[I_BATTERY_LESS_MIN])																								 EMERGENCY5_INDICATION;
			if(device_status[CHECK_BATTERY_STATUS]) 																						 EMERGENCY4_INDICATION;
			if((device_status[T_BATTERY_LESS_MIN])||(device_status[T_BATTERY_MORE_MAX]))  			 EMERGENCY3_INDICATION;
			if((device_status[I_LOAD_MORE_MAX])||(device_status[I_BATTERY_MORE_MAX]))						 EMERGENCY2_INDICATION;
			if((device_status[U_KAN_D_MORE_MAX])||
				(device_status[U_LOAD_MORE_MAX])||(device_status[U_BATTERY_MORE_MAX]))	  				 EMERGENCY1_INDICATION;
		break;
	}
}

/*функция Type_Of_KAN_D - определяет мощность подключенного КАН-Д*/

/**
 * \breaf 	функция Type_Of_KAN_D - определяет мощность подключенного КАН-Д
 * \return  P_KAN_D - мощность применяемого КАН-Д [Вт]
 */
int Type_Of_KAN_D(void)
{
	uint16_t P_KAN_D;
	if(ADC7_KAN_D_TYPE.avr_real>=Vref*0.7f) 
	{
		P_KAN_D=POWER240W;
		UPS_D.I.Load.Max_Value = 10.f; //Максимальное значение тока нагрузки для данного типа КАН-Д, А
		UPS_D.Type_Of_KAN_D	=	POWER240W;
	}
	else if((ADC7_KAN_D_TYPE.avr_real>=0.7f*Vref/2.f)&&(ADC7_KAN_D_TYPE.avr_real<=0.69f*Vref)) 
	{
		P_KAN_D=POWER120W;
		UPS_D.I.Load.Max_Value = 5.f; //Максимальное значение тока нагрузки для данного типа КАН-Д, А
		UPS_D.Type_Of_KAN_D	=	POWER120W;
	}
	else if((ADC7_KAN_D_TYPE.avr_real>=0)&&(ADC7_KAN_D_TYPE.avr_real<=0.7f*Vref/2.f)) 
	{
		P_KAN_D=POWER75W;	
		UPS_D.I.Load.Max_Value = 3.125f; //Максимальное значение тока нагрузки для данного типа КАН-Д, А
		UPS_D.Type_Of_KAN_D	=	POWER75W;
	}
	UPS_D.I.Battery.Max_Value_Discharge=UPS_D.I.Load.Max_Value; //Максимальное значение тока разряда батареи не превышает максимальный ток нагрузки
	return P_KAN_D;
}

/*функция Set_Battery_Voltage - устанавливает напряжение на выходе повышающего преобразователя, который подключен к Батареи*/
/*void Set_Battery_Voltage(float Battery_Voltage)
{
	Battery.Charge_Control=(int)((U1*(Y1+Y2+Y3)-Battery_Voltage*Y1)*Nmax/(Ky_Charge_Control*Y3*Vref)); //рассчет требуемого напряжения с ЦАП (в кодовом представлении) в соотвествии со схемотехникой управления
	BOOST_REGELATOR(ON);//подключаем повышающий регулятор к КАН-Д
	if(Battery_Voltage>ADC4_U_KAN_D.avr_real) //Если запрашиваемое напряжение на выходе повышающего преобразователя больше текущего напряжения на выходе КАН-Д
	{
		if((Battery.Charge_Control>0)&(Battery.Charge_Control<Nmax))	//Если требуемое напряжение на ЦАП меньше Vref (код Nmax) и больше нуля
		{
			PWM_BOOST_REGULATOR(ON);			//включаем миксросхему управления повышающем регулятором
			DAC2_SetData(Battery.Charge_Control);	//устанавливаем на ЦАП такое напряжение, чтобы на выходе повышающего регулятора было напряжение Battery_Voltage
		}
		else if (Battery.Charge_Control<0) DAC2_SetData(0); //Если требуемое напряжение на ЦАП меньше нуля, то устанавливаем максимально возможное напряжение на выходе повышающего преобразователя
		else DAC2_SetData(Nmax); //если напряжение на выходе ЦАП требуется величиной больше максимально возможной, то устанавливаем максимальное напряжение на выходе ЦАП
	}
	else PWM_BOOST_REGULATOR(OFF);	//выключаем микросхему управления повышающим регулятором, если требуемое напряжение на батареи меньше чем напряжение на выходе КАН-Д
}*/

void Set_Battery_Voltage(float Battery_Voltage)
{
	float deltaU;
	char delta_Charge_Control=0;
	deltaU=(Battery_Voltage-ADC3_U_BATTERY.avr_real)/Battery_Voltage;	//вычисляем относительную разность текущего значения напряжения к требуемому
	deltaU=(deltaU<0)?deltaU*(-1):deltaU;			//берем модуль 
	if(deltaU>0.2) 													delta_Charge_Control=50;
	else if ((deltaU>0.15)&&(deltaU<=0.2)) 	delta_Charge_Control=30;
	else if ((deltaU>0.035)&&(deltaU<=0.15)) delta_Charge_Control=15;
	else if ((deltaU>0.015)&&(deltaU<=0.035)) delta_Charge_Control=7;	
	else if ((deltaU>0.0025)&&(deltaU<=0.015))	delta_Charge_Control=1;	
  else delta_Charge_Control=0;
	//Battery.Charge_Control=(int)((U1*(Y1+Y2+Y3)-Battery_Voltage*Y1)*Nmax/(Ky_Charge_Control*Y3*Vref)); //рассчет требуемого напряжения с ЦАП (в кодовом представлении) в соотвествии со схемотехникой управления
	BOOST_REGELATOR(ON);/*подключаем повышающий регулятор к КАН-Д*/
	
	if(Battery_Voltage>ADC4_U_KAN_D.avr_real) 
	{
		if(ADC3_U_BATTERY.avr_real>Battery_Voltage)
		{
			Battery.Charge_Control=Battery.Charge_Control+delta_Charge_Control;
			Battery.Charge_Control=(Battery.Charge_Control>Nmax)?(Nmax):(Battery.Charge_Control); //если достигнуто максимальное значение напряжения на ЦАП, то выставляем его, если нет, то выставляем необходимое
		}
		else
		{
			//если текущее значение тока заряда батареи меньше выбранного, то уменьшаем Battery.Charge_Control, тем самым уменьшая напряжение на ЦАП 
			Battery.Charge_Control=Battery.Charge_Control-delta_Charge_Control;
			Battery.Charge_Control=(Battery.Charge_Control<0)?(0):(Battery.Charge_Control);
		}
		DAC2_SetData(Battery.Charge_Control);
	}	
}

/*функция Battery_Current_Stabilization - устанавливает ток заряда Батареи*/
void Battery_Current_Stabilization(float Battery_Current)
{
	float deltaI;
	uint16_t delta_Charge_Control=0;
	deltaI=(Battery_Current-ADC1_I_BATTERY.avr_real)/Battery_Current;	//вычисляем относительную разность текущего значения тока к требуемому
	deltaI=(deltaI<0)?deltaI*(-1):deltaI;			//берем модуль 
	if (deltaI>0.8) 												delta_Charge_Control=80;
	else if ((deltaI>0.5)&&(deltaI<=0.8)) 	delta_Charge_Control=50;
	else if ((deltaI>0.3)&&(deltaI<=0.5)) 	delta_Charge_Control=30;
	else if ((deltaI>0.15)&&(deltaI<=0.3)) 	delta_Charge_Control=15;
	else if ((deltaI>0.05)&&(deltaI<=0.15)) delta_Charge_Control=7;	
	else if ((deltaI>0.003)&&(deltaI<=0.05))delta_Charge_Control=1;					 
  else delta_Charge_Control=0;	
//	  delta_Charge_Control = Battery.Charge_Control*(ADC1_I_BATTERY.avr_real-Battery_Current)/(100*Battery_Current);

	//если текущее значение тока заряда батареи больше выбранного, то увеличиваем Battery.Charge_Control, тем самым увеличивая напряжение на ЦАП 
	if(ADC1_I_BATTERY.avr_real>Battery_Current)
	{
		Battery.Charge_Control=Battery.Charge_Control+delta_Charge_Control;
		Battery.Charge_Control=(Battery.Charge_Control>Nmax)?(Nmax):(Battery.Charge_Control); //если достигнуто максимальное значение напряжения на ЦАП, то выставляем его, если нет, то выставляем необходимое
		DAC2_SetData(Battery.Charge_Control);
	}
	else
	{
		//если текущее значение тока заряда батареи меньше выбранного, то уменьшаем Battery.Charge_Control, тем самым уменьшая напряжение на ЦАП 
		Battery.Charge_Control=Battery.Charge_Control-delta_Charge_Control;
		Battery.Charge_Control=(Battery.Charge_Control<0)?(0):(Battery.Charge_Control);
		DAC2_SetData(Battery.Charge_Control);
	}
	if(Battery_Current==0) RESET_CHARGE_MODE_CONFIGURATION; //Если величина тока заряда батареи может быть только меньше минимально допустимого (в таком случае в эту функцию передается Battery_Current=0), то сбрасываем текущие настройки режима Заряд
}


/*функция Current_Of_Charge_Mode задает уровень зарядного тока в зависимости от текущих условий
//входные данные I - величина тока, которым должна заряжаться батарея, Ibat_max - текущий максимально возможный ток заряда батареи, ограниченный текущим током нагрузкии (ADC0_I_LOAD.avr_real)
*/
float Choose_Current_Of_Charge_Mode(float I, float Ibat_max)
{
	float Ic;
	if((I<=Ibat_max)&(I<UPS_D.I.Battery.Max_Value)) Ic=I;
	else if((I>Ibat_max)&(Ibat_max<UPS_D.I.Battery.Max_Value)) 
					{
						Ic=Ibat_max;
						Battery.I_Charge_Is_Limited_Flag = YES;			//высталяем флаг что ток заряда ограничен
						if((UPS_D.Control_I_Battery_Min_Charge==YES)&&(Battery.Capacity*(1/CAPACITY_koef)*UPS_D.I_Charge_Min_koef*(1/DEVISION_koef)>Ic)) //если разрешено слежение за минимальным током заряда батери и текущая величина тока нагрузки такая, что ток заряда будет меньше минимального I_BATTERY_min,
						{
							Ic = 0;  //то прекращаем зарядку
							Battery.I_Charge_Is_Less_Min_Flag = YES; 	//выставляем флаг, что прекрашаем зарядку
						}
						else Battery.I_Charge_Is_Less_Min_Flag = NO;
					}	
	else if ((I>=UPS_D.I.Battery.Max_Value)&(Ibat_max>=UPS_D.I.Battery.Max_Value)) Ic=UPS_D.I.Battery.Max_Value;
	if((Battery.I_Charge_Is_Limited_Flag == YES)&&(Ic<Ibat_max-0.1)&&(Ibat_max>0)) Battery.I_Charge_Is_Limited_Flag = NO;
					
	return Ic;	//возращаем значение тока, величиной которого сейчас должна заряжаться батарея
}

/*функция Choose_Current_Of_Charge_Mode2 задает уровень зарядного тока в зависимости от текущих условий (модификация фунцкции Choose_Current_Of_Charge_Mode)
//входные данные I - величина тока, которым должна заряжаться батарея, Ibat_max - текущий максимально возможный ток заряда батареи, ограниченный текущим током нагрузкии (ADC0_I_LOAD.avr_real)
возвращаемые значения: data[0] - величина тока, которой должна заряжаться батарея, data[0] - флаг о ограничении/не ограничении тока заряда током нагрузки*/
/*float* Choose_Current_Of_Charge_Mode2(float I, float Ibat_max)
{
	float *data = (float*) malloc(sizeof(float) * 2);
	if((I<Ibat_max)&(I<I_BATTERY_MAX_CHARGE)) *data=I;
	else if((I>Ibat_max)&(I<I_BATTERY_MAX_CHARGE)) 
					{
						*data=Ibat_max;
						*(data+1) = YES;
					}
	else *data=(Ibat_max>I_BATTERY_MAX_CHARGE)?(I_BATTERY_MAX_CHARGE):(Ibat_max);
	if (*data!=Ibat_max) *(data+1) = NO;
	return data;					//возращаем значение тока, величиной которого сейчас должна заряжаться батарея

//вызывать фунцию нужно так:
//float *i_charge_data = Choose_Current_Of_Charge_Mode2 (значение I, значение Ibat_max);

//считывать два значения нужно так:
//Ic 											 = i_charge_data[0];
//I_Charge_Is_Limited_Flag = i_charge_data[1];

}
*/
//float* Example (float I)
//{
//  float *temp = (float*) malloc(sizeof(float) * 2);
// 
//    *temp = I;
//    *(temp + 1) = I+20;

//    return temp;
//}

/*функция Check_Battery_Connect проверяет подключение к батареи в режиме Заряд*/
/*unsigned char  Check_Battery_Connect(void)
{
	if((Counter_Check_Battery_Connect.Flag==YES)||(Battery.Status_Join_To_Booster==OFF))
	{
		BOOST_CONVERTER_OFF;
		BOOST_REGELATOR_CAPACITY_DISCHARGE(ON);
		Counter_Check_Battery_Connect_Voltage_Drop.Status=ON;
		while(Counter_Check_Battery_Connect_Voltage_Drop.Status!=OFF);
		Battery.Status_Join_To_Booster=(ADC3_U_BATTERY.avr_real<UPS_D.U.Battery.Min_Value)?(OFF):(ON);
		Counter_Check_Battery_Connect_Voltage_Drop.Flag=NO;
		Counter_Check_Battery_Connect.Flag=NO;
		if((Battery.Status_Join_To_Booster==YES)&&(Battery.I_Charge_Is_Less_Min_Flag==NO)) //если батарея подключена и ток нагрузки не делает ток заряда меньше допустимого значения
		{
			BOOST_CONVERTER_ON; // то включаем повышающий регулятор
			BOOST_REGELATOR_CAPACITY_DISCHARGE(OFF);
			TRANSIENT_PROCESS; //ожидаем окончания переходного процесса после включения повышающего регулятора		
		}
		return Battery.Status_Join_To_Booster;
	}
	else Counter_Check_Battery_Connect.Status=ON;
	return Battery.Status_Join_To_Booster;
}*/

/**
 * \breaf 	функция Check_Battery_Connect проверяет подключение к батареи в режиме Заряд. По наличию тока заряда при режиме заряд отличного от буферного (!FLOAT) и по наличию напряжения на ДНбатареи в буфером режиме
 * \return  Battery.Status_Join_To_Booster: YES - батарея подключена, NO - батарея не подключена
 */
unsigned char Check_Battery_Connect(void)
{
	if((Counter_Check_Battery_Connect.Flag==YES)||(Battery.Status_Join_To_Booster==OFF))
	{
		if((MODE==CHARGE)&&(MODE_CHARGE!=FLOAT)&&(MODE_CHARGE!=EQUALIZING))	//Если режим заряд и он не буферный и не уравнительный заряд, то проверяем наличие подключенной батареи по току
		{
			Battery.Status_Join_To_Booster = (ADC1_I_BATTERY.avr_real<=I_BATTERY_MIN_CHECK_BATTERY_CONNECT)?(OFF):(ON);
			if(Battery.Status_Join_To_Booster==ON) 	Counter_Check_Battery_Connect.MaxValue =	TIME_5_SEC;	//если батарея подключена, то проверяем каждую секунду
		}
		else if(((MODE==CHARGE)&&((MODE_CHARGE==FLOAT)||(MODE_CHARGE==EQUALIZING)))||(MODE==ALARM)) //Если режим заряд и он буферный или уравнительный или режим авария, то проверяем наличие подключенной батареи по напряжению
		{
			BOOST_CONVERTER_OFF;
			BOOST_REGELATOR_CAPACITY_DISCHARGE(ON);
			Counter_Check_Battery_Connect_Voltage_Drop.Status=ON;
			while(Counter_Check_Battery_Connect_Voltage_Drop.Status!=OFF);
			Battery.Status_Join_To_Booster = (ADC3_U_BATTERY.avr_real<=UPS_D.U.Battery.Min_Value)?(OFF):(ON);
			if(Battery.Status_Join_To_Booster==ON) 	
			{
				Counter_Check_Battery_Connect.MaxValue =	TIME_05_MIN; //если батарея подключена, то проверяем каждые 30 секунд
				BOOST_CONVERTER_ON;				 // то включаем повышающий регулятор
				BOOST_REGELATOR_CAPACITY_DISCHARGE(OFF);
				TRANSIENT_PROCESS; 				 //ожидаем окончания переходного процесса после включения повышающего регулятора	
			}
		}
		RESET_Counter_Check_Battery_Connect;
		Counter_Check_Battery_Connect.Status = ON;	
	}
	return (unsigned char)Battery.Status_Join_To_Booster;
}




/*функция Calcutale_Battery_Level расчитывает уровень заряда батареи*/
void Calcutale_Battery_Level(void)
{ //ФУНКЦИЯ ВЫЗЫВАЕТСЯ ТОЛЬКО ИЗ РЕЖИМА РАЗРЯД
	Battery.Internal_Resistor=UPS_D.Battery_Internal_Resistor-UPS_D.Battery_Internal_Resistor*(Battery.Capacity-BATTERY_CAPACITY_FOR_INTERNAL_RESISTOR_DEFAULT)/Battery.Capacity;
	if(MODE==CHARGE)
		Battery.Idle_Voltage=ADC3_U_BATTERY.avr_real-ADC1_I_BATTERY.avr_real*Battery.Internal_Resistor;
	else if (MODE==DISCHARGE)
		Battery.Idle_Voltage=ADC3_U_BATTERY.avr_real+ADC1_I_BATTERY.avr_real*Battery.Internal_Resistor;
	if(Battery.Idle_Voltage<=U_BATTERY_LEVEL_5-U_HYSTERESIS) 																		
		{
			Battery.Level=BATTERY_LEVEL_LESS_5;
      Battery.Equalizing_Charge.Need	= YES; //глубокая переразрядка зафиксирована, поэтому необходимо применить уравнивающий заряд
			BATTARY_LEVEL_LESS_5_INDICATION;
		}
	else if((Battery.Idle_Voltage>U_BATTERY_LEVEL_5)&&(Battery.Idle_Voltage<=U_BATTERY_LEVEL_20-U_HYSTERESIS)) 		
		{
			Battery.Level=BATTERY_LEVEL_BETWEEN_5_20;
			BATTERY_LEVEL_BETWEEN_5_20_INDICATION;
		}
	else if((Battery.Idle_Voltage>U_BATTERY_LEVEL_20)&&(Battery.Idle_Voltage<=U_BATTERY_LEVEL_50-U_HYSTERESIS))		
		{
			Battery.Level=BATTERY_LEVEL_BETWEEN_20_50;
			BATTERY_LEVEL_BETWEEN_20_50_INDICATION;
		}
	else if((Battery.Idle_Voltage>U_BATTERY_LEVEL_50)&&(Battery.Idle_Voltage<=U_BATTERY_LEVEL_85-U_HYSTERESIS))		
		{
			Battery.Level=BATTERY_LEVEL_BETWEEN_50_85;
			BATTERY_LEVEL_BETWEEN_50_85_INDICATION;
		}	
	else if (Battery.Idle_Voltage>U_BATTERY_LEVEL_85) 																				
		{
			Battery.Level=BATTERY_LEVEL_MORE_85;
			BATTERY_LEVEL_MORE_85_INDICATION;
		}
}



/*функция Check_I_LOAD_Value мониторит величину тока заряда батареи и возращает YES если ток заряда батареи ограничен током нагрузки так, что его величина становится меньше минимально допустимой, 
возвращает NO, если величина тока заряда батареи больше минимально допустимой*/
Status Check_I_LOAD_Value ()
{
	if ((UPS_D.Control_I_Battery_Min_Charge==YES)&&(((MODE==CHARGE)&&(MODE_CHARGE==BULK))||(MODE==ALARM))) 
	{//если разрешено слежение за минимальным током заряда батареи
		float Ibat_max=(float)((UPS_D.P_KAN_D-ADC0_I_LOAD.avr_real*ADC2_U_LOAD.avr_real)/UPS_D.U_Tricle);//вычисляем максимальное значение тока, которое может быть направлено в батарею
		float Ibat_min=Battery.Capacity*(1.f/CAPACITY_koef)*UPS_D.I_Charge_Min_koef*(1.f/DEVISION_koef);	//вычисляем минимально допустимый ток заряда батареи
	  if(MODE==CHARGE) 			
		{
			if(Ibat_min>Ibat_max) return YES;
		}
		else if (MODE==ALARM) //если режим Авария был вызван
		{	
			if (device_status[I_BATTERY_LESS_MIN]==YES)		//из-за того что ток заряда батареи стал меньше минимально допустимого
			{
				if(Ibat_min>(Ibat_max-I_HYSTERESIS)) return YES;
			}
		}
		return NO;
	}
	return NO;
}

/**
 * \breaf 	функция U_Hysteresis_KAN_D рассчитывает величину гистерезиса с учетом потерь в КАН-Д
 * \return  delta - величина гистерезиса
 */
float U_Hysteresis_KAN_D (void)
{
	float data;
	float delta;
	if((ADC0_I_LOAD.avr_real+I_BATTERY_MAX_CHARGE)>I_LOAD_MAX_VALUE)
	{
		data = 0.3f*I_LOAD_MAX_VALUE;
	}
	else
	{
		data = 0.3f*(ADC0_I_LOAD.avr_real+I_BATTERY_MAX_CHARGE);
	}
	delta = U_HYSTERESIS * (1 + data);
	return delta;
}	


/**
* \breaf 	функция Testing_UPS_D производит тестировку ИБП-Д в соотвествии с методикой тестирования
 */
void Testing_UPS_D(void)
{
	char DU=REMOUT;
	DU = (~DU)&0x01;
	if(DU==ON)
	{
		BOOST_REGELATOR(ON);
		if(Testing.U_Battery_Limit_Value == YES)
		{
			DAC2_SetData(0);		//Максимальное напряжение на ИРН-2			
		}
		else
		{
			DAC2_SetData(Nmax);	//Минимальное напряжение на ИРН-2
		}
		RELE1_AC.ReleStatus	= NORM;
		RELE2_BATTERY.ReleStatus	= NORM;
		RELE3_STABLE_WORK.ReleStatus = NORM;
		RELE_STATUS;
		LED1.Color=RED;
		LED2.Color=RED;
	}
	else
	{
		BOOST_REGELATOR(OFF);
		RELE1_AC.ReleStatus	= NOT_NORM;
		RELE2_BATTERY.ReleStatus	= NOT_NORM;
		RELE3_STABLE_WORK.ReleStatus = NOT_NORM;
		RELE_STATUS;
		LED1.Color=GREEN;
		LED2.Color=GREEN;
		BOOST_REGELATOR_CAPACITY_DISCHARGE(ON);
	}
	if(Testing.Discharge_Mode == ON)
	{
		BATTERY_JOIN_TO_LOAD(ON);
		BOOST_REGELATOR_CAPACITY_DISCHARGE(OFF);
	}
	else
	{
		BATTERY_JOIN_TO_LOAD(OFF);
	}
}




