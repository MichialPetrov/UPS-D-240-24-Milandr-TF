#include "Defines.h"
#include "MDR32FxQI_adc.h" 

typedef enum No_Yes {NO, YES} Status; 			//перечисление No_Yes содержащее статус флага YES - флаг установлен, NO - флаг сброшен
typedef enum Off_On {OFF, ON, UNKNOW} SwitchStatus;	//перечисление Off_On задающее включенное (ON) или не включенное состояние (OFF)
enum {FAULT=4, CORRECT};	//перечисление FAULT - ошибка, CORRECT - верно
typedef enum {NEGATIVE, POSITIVE} Sign; 						//Знак переменной


typedef enum {TRICLE, BULK, OVER, EQUALIZING, FLOAT} ModeOfCharge;
extern ModeOfCharge MODE_CHARGE;

typedef enum {CHARGE, DISCHARGE, WAIT, SLEEP, ALARM} ModeOfWork;
extern ModeOfWork MODE, MODE_prev;

typedef enum {POWER75W=75, POWER120W=120, POWER240W=240} Power_KAN_D;

typedef enum USP {
		UPS_FLAG_CHARGE_TO_DISCHARGE, //флаг переключения устройства из режима заряд в режим разряд
		UPS_FLAG_DISCHARGE_TO_CHARGE, //флаг переключения устройства из режима разряд в режим заряд
		UPS_FLAG_SLEEP_TO_CHARGE, 		//флаг переключения устройства из режима cон в режим заряд
		UPS_FLAG_ALARM_TO_CHARGE, 		//флаг переключения устройства из режима авария в режим заряд
		UPS_FLAG_ALARM_TO_DISCHARGE,  //флаг переключения устройства из режима авария в режим разряд
		UPS_FLAG_FROM_CHARGE,  				//флаг переключения устройства из режима заряд
		UPS_FLAG_FROM_DISCHARGE,  		//флаг переключения устройства из режима заряд
		UPS_FLAG_FROM_WAIT,  					//флаг переключения устройства из режима заряд
		UPS_FLAG_FROM_SLEEP,  				//флаг переключения устройства из режима заряд
		UPS_FLAG_FROM_ALARM,  				//флаг переключения устройства из режима заряд
		UPS_FLAG_HANDLED							//флаг окончания переключения из одного режима в другой
} UPS_Flag;

typedef enum {
	  Bit0, Bit1, Bit2, Bit3, Bit4, Bit5, Bit6, Bit7, Bit8,
		Bit9, Bit10, Bit11, Bit12, Bit13, Bit14, Bit15,
		Bit31=31,
} PORT;


/* Перечисление с емкостью АКБ
	 Задается Пинами 4-7 ПортаА*/
typedef enum BatCap_Pins {
  	BATTERY_SWITCH_OFF			= (1<<Bit7)|(1<<Bit6)|(1<<Bit5)|(1<<Bit4), /* Батарея отключена*/
	  BATTERY_CAPACITY_USER   = (1<<Bit7)|(1<<Bit6)|(1<<Bit5)|(0<<Bit4), /* Емкость батареи задается пользователем*/
	  BATTERY_CAPACITY_4_5_Ah = (1<<Bit7)|(1<<Bit6)|(0<<Bit5)|(1<<Bit4), /* Выбрана емкость батареи 4,5 А*ч */
	  BATTERY_CAPACITY_5_Ah   = (1<<Bit7)|(1<<Bit6)|(0<<Bit5)|(0<<Bit4), /* Выбрана емкость батареи 5 А*ч */
  	BATTERY_CAPACITY_5_8_Ah = (1<<Bit7)|(0<<Bit6)|(1<<Bit5)|(1<<Bit4), /* Выбрана емкость батареи 5,8 А*ч */
    BATTERY_CAPACITY_7_2_Ah = (1<<Bit7)|(0<<Bit6)|(1<<Bit5)|(0<<Bit4), /* Выбрана емкость батареи 7,2 А*ч */
	  BATTERY_CAPACITY_9_Ah   = (1<<Bit7)|(0<<Bit6)|(0<<Bit5)|(1<<Bit4), /* Выбрана емкость батареи 9 А*ч */
	  BATTERY_CAPACITY_12_Ah  = (1<<Bit7)|(0<<Bit6)|(0<<Bit5)|(0<<Bit4), /* Выбрана емкость батареи 12 А*ч */
	  BATTERY_CAPACITY_18_Ah  = (0<<Bit7)|(1<<Bit6)|(1<<Bit5)|(1<<Bit4), /* Выбрана емкость батареи 18 А*ч */
	  BATTERY_CAPACITY_26_Ah  = (0<<Bit7)|(1<<Bit6)|(1<<Bit5)|(0<<Bit4), /* Выбрана емкость батареи 26 А*ч */
} BatteryCapacityPins;


typedef enum BatCap {
	  CAPACITY_SWITCH_OFF,  			  /* Батарея отключена*/
		CAPACITY_USER_DEFAULT = 1199,	/* Величина емкости батареи задаваемой пользователем по умолчанию (пока он сам ее не установил)*/ 
	  CAPACITY_4500mAh = 4500, 		  /* Выбрана емкость батареи 4,5 А*ч */
	  CAPACITY_5000mAh = 5000, 		  /* Выбрана емкость батареи 5 А*ч */
	  CAPACITY_5800mAh = 5800, 		  /* Выбрана емкость батареи 5,8 А*ч */
    CAPACITY_7200mAh = 7200, 		  /* Выбрана емкость батареи 7,2 А*ч */
	  CAPACITY_9000mAh = 9000, 		  /* Выбрана емкость батареи 9 А*ч */
	  CAPACITY_12000mAh = 12000,    /* Выбрана емкость батареи 12 А*ч */
	  CAPACITY_18000mAh = 18000,    /* Выбрана емкость батареи 18 А*ч */
	  CAPACITY_26000mAh = 26000,    /* Выбрана емкость батареи 26 А*ч */	  
} BatteryCapacity;

/* Перечисление с временем разряда АКБ
	 Задается Пинами 0-3 ПортаА*/
typedef enum  T_Discharge_Pins{
	  DISCHARGE_TIME_05_MIN   = (1<<Bit3)|(1<<Bit2)|(0<<Bit1)|(1<<Bit0), /* Время разряда батареи 0.5 минуты */
	  DISCHARGE_TIME_1_MIN    = (1<<Bit3)|(1<<Bit2)|(0<<Bit1)|(0<<Bit0), /* Время разряда батареи 1 минута */
	  DISCHARGE_TIME_3_MIN    = (1<<Bit3)|(0<<Bit2)|(1<<Bit1)|(1<<Bit0), /* Время разряда батареи 3 минуты */
	  DISCHARGE_TIME_5_MIN    = (1<<Bit3)|(0<<Bit2)|(1<<Bit1)|(0<<Bit0), /* Время разряда батареи 5 минут */
		DISCHARGE_TIME_10_MIN   = (1<<Bit3)|(0<<Bit2)|(0<<Bit1)|(1<<Bit0), /* Время разряда батареи 10 минут */
		DISCHARGE_TIME_15_MIN   = (1<<Bit3)|(0<<Bit2)|(0<<Bit1)|(0<<Bit0), /* Время разряда батареи 15 минут */
		DISCHARGE_TIME_20_MIN   = (0<<Bit3)|(1<<Bit2)|(1<<Bit1)|(1<<Bit0), /* Время разряда батареи 20 минут */
		DISCHARGE_TIME_30_MIN   = (0<<Bit3)|(1<<Bit2)|(1<<Bit1)|(0<<Bit0), /* Время разряда батареи 30 минут */
	  DISCHARGE_TIME_ENDLESS  = (1<<Bit3)|(1<<Bit2)|(1<<Bit1)|(1<<Bit0), /* Бесконечный по времени разряд батареи */
		DISCHARGE_TIME_USER     = (1<<Bit3)|(1<<Bit2)|(1<<Bit1)|(0<<Bit0)  /* Время разряда батареи задается дистанционно пользователем */   
}TimeDischargePins;

/* Перечисление с временными интервалами */
typedef enum  T{
		TIME_ENDLESS,											/* Бесконечный по времени разряд батареи*/  
		TIME_667_mсSEC = mc_SECOND_667,		/* 667 микросекунд */
		TIME_1_mSEC		 =	ONE_m_SECOND,		/* 1 миллисекунда */
		TIME_1_77_mSEC = ONE_POINT_EIGHT_m_SECOND, /* 1.7 миллисекунда */
		TIME_10_mSEC	= TEN_m_SECOND,			/* 10 миллисекунд */
		TIME_30_mSEC	= 3*TEN_m_SECOND,	/* 10 миллисекунд */
		TIME_100_mSEC = ONE_HUNDRED_m_SECOND, /* 100 миллисекунд */
	  TIME_150_mSEC = 15*TEN_m_SECOND, 	/* 150 миллисекунд */
	  TIME_200_mSEC = 20*TEN_m_SECOND, 	/* 200 миллисекунд */
		TIME_250_mSEC = 25*TEN_m_SECOND, 	/* 250 миллисекунд */
		TIME_300_mSEC = 30*TEN_m_SECOND, 	/* 300 миллисекунд */
	  TIME_1_SEC    = ONE_SECOND,				/* 1 секунда */
		TIME_2_SEC    = 2*TIME_1_SEC,			/* 2 секунды */
		TIME_3_SEC    = 3*TIME_1_SEC,			/* 3 секунды */
	  TIME_5_SEC    = FIVE_SECOND,			/* 5 секунд */
	  TIME_05_MIN   = HALF_MINUTE, 			/* 0.5 минуты */
	  TIME_1_MIN    = ONE_MINUTE, 			/* 1 минута */
	  TIME_3_MIN    = THREE_MINUTE, 		/* 3 минуты */
	  TIME_5_MIN    = FIVE_MINUTE, 			/* 5 минут */
		TIME_10_MIN   = TEN_MINUTE, 			/* 10 минут */
		TIME_15_MIN   = FIVETEEN_MINUTE, 	/* 15 минут */
		TIME_20_MIN   = TWENTY_MINUTE, 		/* 20 минут */
		TIME_30_MIN   = THIRTY_MINUTE, 		/* 30 минут */
		TIME_USER_DEFAULT = 8701*TIME_200_mSEC,/* Величина времени разряда батареи задаваемой пользователем по умолчанию 29минут 200 миллисекунд*/ 
		TIME_EQUALIZING_CHARGE   = TIME_CHECKING_I_BATTERY_IS_CONST_EQUALIZING_CHARGE 	/* время режима EQUALIZING (Уравнительный заряд) в минутах*/
}Time;

/* Перечисление с нумерацией статусов устройства */
typedef enum {
	  U_KAN_D_LESS_MIN, 						//0									
		U_KAN_D_MORE_MAX,							//1						  	
	  U_LOAD_LESS_MIN,							//2	
	  U_LOAD_MORE_MAX, 							//3
	  U_BATTERY_LESS_MIN,						//4		
	  U_BATTERY_MORE_MAX, 					//5		
	  I_LOAD_LESS_MIN,							//6	
	  I_LOAD_MORE_MAX, 							//7
	  I_BATTERY_LESS_MIN,						//8		
	  I_BATTERY_MORE_MAX, 					//8		
	  T_BATTERY_LESS_MIN,						//10		
	  T_BATTERY_MORE_MAX, 					//11		
		REMOUT_STATUS,								//12
		SET_BATTERY_STATUS,						//13
		CHECK_BATTERY_STATUS,					//14
	  BATTERY_LEVEL_LESS_MIN,				//15
		BATTERY_TIME_DISCHARGE_END,		//16
		I_BATTERY_IMOSSIBLE_TO_LIMIT,	//17
		U_KAN_D_MORE_U_BATTERY_DISCHARGE_MODE,			//18, Статус Соотношения Напряжения КАН-Д с Напряжением на батереи в Режиме разряд
	  U_KAN_D_BETWEEN_MIN_AND_MIN_FACTORY_VALUE,	//19, Статус Напряжения КАН-Д между U_KAN_D_MIN_VALUE и U_KAN_D_MIN_VALUE_FROM_FACTORY
	  AMOUNT_STATUS
}Device_Status;

extern Device_Status DStat;
extern Status device_status[AMOUNT_STATUS]; //массив статусов устройства

/*====================================================================================================================================================================*/
/*===============================================================ПЕРЕМЕННЫЕ ДЛЯ УПРАВЛЕНИЯ СВЕТОДИОДАМИ===============================================================*/
/*====================================================================================================================================================================*/
/* Перечисление Clr (цвета светодиода). LedColor - тип данных перечисления Clr.*/
typedef enum Clr {RED, GREEN, YELLOW, LED_OFF} LedColor;

/* Перечисление Flash (тип свечения светодиода). LedFlash - тип данных перечисления Flash.*/
/* PERMAMENT - постоянное свечение, BLINK1 - мигаение 50/50, BLINK2 - мигание 20/80*/
typedef enum Flash {
  	PERMAMENT=PERMANENT_FLASH, //тип свечения PERMANENT_FLASH
	  BLINK1=BLINK1_FLASH, 			 //тип свечения BLINK1_FLASH
	  BLINK2=BLINK2_FLASH, 			 //тип свечения BLINK2_FLASH
		BLINK3=BLINK3_FLASH, 			 //тип свечения BLINK3_FLASH
		BLINK4=BLINK4_FLASH, 			 //тип свечения BLINK4_FLASH
		BLINK5=BLINK5_FLASH,			 //тип свечения BLINK5_FLASH
		BLINK6=BLINK6_FLASH,			 //тип свечения BLINK5_FLASH
	  BLINK7=BLINK7_FLASH,			 //тип свечения BLINK5_FLASH
} LedFlash;

/* Структура Cветодиодов*/
typedef struct {
	 LedColor Color; 						//Переменная Color типа данных LedColor. Задает цвет светодиода
	 LedFlash Flash; 						//Переменная Flash типа данных LedFlash. Задает тип свечения
	 int FlashKvantPeriodCount; //текущее значение счетчика в периоде кванта свечения (максимальное значение - FLASH_KVANT_PERIOD_CODE)
	 char FlashKvantCount; 			//текущее значение кванта свечения (максимальное значение - FLASH_KVANT_COUNT)
	int pin[COLOR_AMOUNT];			//номер пина, которому подключен светодиод
}LedControl;
extern LedControl LED1, LED2; //объявление глобальных переменных LED1, LED2, тип данных которых структура LedControl

/*====================================================================================================================================================================*/
/*===============================================================ПЕРЕМЕННЫЕ ДЛЯ УПРАВЛЕНИЯ РЕЛЕ=======================================================================*/
/*====================================================================================================================================================================*/

/* Перечисление NORM_NOT_NORM. Status - тип данных перечисления NORM_NOT_NORM.*/
typedef enum NORM_NOT_NORM {NOT_NORM, NORM} RelStatus; //NORM - детектируемая реле ошибка отсутствует, NOT_NORM - детектируемая реле ошибка присутствует

/* Структура состояния реле*/
typedef struct {
   RelStatus ReleStatus; //Переменная ReleStatus типа данных RelStatus. Задает в каком состоянии находится Реле в проводящем (NOT_NORM) или не проводящем (NORM)
	 int pin;							 //номер пина, которому подключено реле
}ReleControl;
extern ReleControl RELE1_AC, RELE2_BATTERY, RELE3_STABLE_WORK; //объявление глобальных переменных RELE1_AC, RELE2_BATTERY, RELE_WARNING, тип данных которых структура ReleControl

/*====================================================================================================================================================================*/
/*===============================================================ПЕРЕМЕННЫЕ ДЛЯ АЦП===================================================================================*/
/*====================================================================================================================================================================*/

/* Перечисление ADCch. ADCchannel - тип данных перечисления ADCch.*/
typedef enum ADCch {
	ADC_I_LOAD_ch			=	ADC_CH_ADC0<<ADC_CHANNEL_SHIFT, 	//Канал АЦП для тока нагрузки
	ADC_I_BATTERY_ch	=	ADC_CH_ADC1<<ADC_CHANNEL_SHIFT,		//Канал АЦП для тока батареи
	ADC_U_LOAD_ch			=	ADC_CH_ADC2<<ADC_CHANNEL_SHIFT,		//Канал АЦП для напряжения нагрузки
	ADC_U_BATTERY_ch	=	ADC_CH_ADC3<<ADC_CHANNEL_SHIFT,		//Канал АЦП для напряжения батареи
	ADC_U_KAN_D_ch		=	ADC_CH_ADC4<<ADC_CHANNEL_SHIFT,		//Канал АЦП для напряжения с КАН-Д
	ADC_U_ZERO_ch			=	ADC_CH_ADC5<<ADC_CHANNEL_SHIFT,		//Канал АЦП для псевдо нулевого потенциала (Vcc/2)
	ADC_KAN_D_TYPE		=	ADC_CH_ADC7<<ADC_CHANNEL_SHIFT		//Канал АЦП определения типа подключенного КАН-Д
} ADCchannel;


typedef struct {
	 ADCchannel Channel; 								//Переменная Channel типа данных ADCchannel. Наименование канала оцифровки
	 uint16_t adc_data[MEAS_DATA];  		// массив оцифрованных значений
	 uint32_t adc_data_sum;							// сумма всех элементов массива adc_data
   uint16_t avr;								    	// среднее значение массива оцифрованных значений в кодовом представлении
   float avr_real;							  		// среднее значение массива оцифрованных значений в СИ
	 float Convert_coef;								// коэффициент преобразования из кодового представления в представление СИ (из avr в avr_real)
	 uint16_t	index;								    // Текущий мгновенный индекс элемента массива после оцифровки
}ADCcontrol;
//объявление глобальных переменных ADC0_I_LOAD, ADC1_I_BATTERY, ADC2_U_LOAD, ADC3_U_BATTERY,ADC4_U_KAN_D, ADC5_U_ZERO, ADC7_KAN_D_TYPE тип данных которых структура ADCcontrol
extern ADCcontrol ADC0_I_LOAD, ADC1_I_BATTERY, ADC2_U_LOAD, ADC3_U_BATTERY,ADC4_U_KAN_D, ADC5_U_ZERO, ADC7_KAN_D_TYPE; 

extern int ADCready_to_calculate; //флаг готовности АЦП к расчету средних значений токов и напряжений
extern int ADC_avr_calculate_end; 		//Средние значение каналов АЦП расчитаны (для стартового сбора информации) Значение при старте - NO;  
/*====================================================================================================================================================================*/
/*===============================================================ПЕРЕМЕННЫЕ СИГНАЛОВ ПРЕДУПРЕЖДЕНИЙ===================================================================*/
/*====================================================================================================================================================================*/

typedef struct {
  Status WarningStatus ;						//Статус Предупреждения (YES - предупреждение есть, NO - предупреждения нет)
	MDR_PORT_TypeDef* Port;						//Порт к которому подключена ножка сигнализирующая о предупреждении
	uint32_t	Pin;								    //Ножка порта к которому подключена ножка сигнализирующая о предупреждении
}Warning;

extern Warning Wrng_I_LOAD, Wrng_U_LOAD, Wrng_U_KAN_D; //структуры типа структуры Warning
extern char warning_flag; //флаг наличия хотя бы одного предупреждения

/*====================================================================================================================================================================*/
/*===============================================================ПЕРЕМЕННЫЕ СЧЕТЧИКОВ===============================================================================*/
/*====================================================================================================================================================================*/


typedef struct {
  int Count;			//счет счетчика
	SwitchStatus Status;	//статус счетчика - ON считает, OFF не счиает
	Status Flag;		//флаг счетчика - YES счетчик досчитал до MaxValue, NO счетчик не досчитал до MaxValue
	Time MaxValue; 	//максмиальное значение до которого считает счетчик
}Counter;

/* Комментарии по счетчикам
Counter_Check_Battery_Connect 						 - счетчик времени между проверками о подключении Батареи
Counter_Check_Battery_Connect_Current_Drop - счетчик времени для ожидания спада тока до 0 если батарея отключена
Counter_Anti_Bounce											   - счетчик для выдерживания антидребезга
Counter_Transient_Process 								 - счетчик ожидания окончания переходного процесса, используется для того, чтобы не срабатывала защита по 
																							 превышению максимального значения тока разряда батареи в момент ее включения в режиме DISCHARGE
Counter_Transient_Process_UPS							 - счетчик ожидания спада напряжения на выходе КАН-Д ниже порога в момент переключения в режима заряд в режим разряд. 
																						 Используется для предотвращения обратного переключения в режим заряд из режима разряд в случае если только что произошло 
																						 переключение из режима заряд в режим разряд. Используется в CHECK_UPS_DISCHARGE_TO_CHARGE (в CHECK_UPS_CHARGE_TO_DISCHARGE применяется для симметрии, хз нужно ли это)
Counter_Transient_Process_I_Battery_Impossible_Interrupt - счетчик ожидания завершения установившегося значения тока батареи после включения ИРН-2,который был выключен вследствии невозможности ограничиния тока заряда батареи
Counter_Starting_Initialization						 - счетчик стратовой инициализации и индиакции
*/
extern Counter Counter_Check_Battery_Connect, Counter_Check_Battery_Connect_Voltage_Drop, Counter_Anti_Bounce, Counter_Transient_Process, Counter_Transient_Process_UPS,
Counter_Transient_Process_I_Battery_Impossible_Interrupt, Counter_Starting_Initialization;

extern Counter Counter_Between_Package;

/*====================================================================================================================================================================*/
/*===============================================================ПЕРЕМЕННЫЕ ДЛЯ БАТАРЕИ===============================================================================*/
/*====================================================================================================================================================================*/

//Cтруктура Уравнительного заряда батаери
typedef struct{
	Status Need; 													 // флаг необходимости (YES), отсутствия необходимости (NO) уравнительного заряда. Применяется в случае: 1) Первой зарядки батареи, 2) Переразряда батареи (BATTERY_LEVEL_LESS_5), 3)Хронического недозаряда батареи  
	float I_Battery[TIME_CHECKING_I_BATTERY_IS_CONST_EQUALIZING_CHARGE]; //массив из данных о величине тока батареи в режиме EQUALIZING (Уравнительный заряд)
	Counter Counter_I_Battery_Write_Value; //счетчик, который при переполнении записывает значения тока батареи в режиме EQUALIZING (Уравнительный заряд) 																					 
	Counter Counter_I_Battery_Is_Constant; //счетчик считающий в течении какого времени ток заряда батареи в режиме EQUALIZING (Уравнительный заряд) не изменяется больше чем на DELTA_OF_I_BATTERY_EQUALIZING_CHARGE																					 
}Bat_Equal_Charge;

typedef struct {
  int CapacityPins; 	 					// переменная хранящая в себе информацию о пинах, на которых выставляют емкость батареи
	BatteryCapacity Capacity; 	  // переменная хранящая в себе информацию о емкости выбранной батареи
	int TimeDischargePins;  			// переменная хранящая в себе информацию о пинах, на которых выставляют время разряда батареи
	Counter Counter_Battery_Discharge; 	 // структура счетчика времени допустимого разряда батареи
	Counter Counter_Check_I_Battery; 	 	 // структура счетчика времени ожидания устранения режима, при котором ток заряжающий/разряжающий батарею больше I_BATTERY_MAX_CHARGE/I_BATTERY_MAX_DISCHARGE
	Counter Counter_UnderCharge;			 	 // структура счетчика количества недозарядов батареи, если в течении счета хоть один раз будет полная зарядка, то счетчик сбрасывается
	int Charge_Control;								 	 // Требуемое напряжение с ЦАП (в кодовом представлении) для формирования напряжения на выходе повышающего преобразователя определенного напряжения
	float Level;											 	 // уровень заряда батареи 
	float I_Battery_Impossible_Interrupt;// Величина тока заряда батареи, которую не возможно было ограничить
	Bat_Equal_Charge Equalizing_Charge;	 // стуктура уравнительного заряда 
	UPS_Flag UPS_Mode_Has_Changed_Flag;	 // Флаг ИБП-Д сигнализирующий о переключениях из одного режима в другой
	Status I_Charge_Is_Limited_Flag; 		 //Флаг ограничения тока заряда батареи током нагрузки
	Status I_Charge_Is_Less_Min_Flag; 	 //Флаг прекращения зарядки из-за уменьшения тока заряда батареи до величины меньше минимальной (Battery.Capacity*UPS_D.I_Charge_min_koef), флаг работает только если UPS_D.Control_I_Battery_Min_Charge = YES
	Status I_Battery_Discharge_More_Max_Value;  		// статус флага о превышении тока разряда максимального значения (по сути нужен, чтобы изменять индикацию LED2 если ток разряда превысил максимум)
	float Internal_Resistor;			//Внутренее сопротивление батареи
	float Idle_Voltage;						//Напряжение холостого хода
	float Temperature;						// текущая температура батареи 
	unsigned char Temperature_Max;					// максимально допустимая температура батареи	
	unsigned char Temperature_Min_Charge;		// минимально допустимая температура батареи при заряде
	unsigned char Temperature_Min_Discharge;// минимально допустимая температура батареи при разряде
	SwitchStatus Status_Join_To_Booster;		// статус Батареи относительно повышающего преобразователя YES - Батарея подключена к ИРН-2, NO - батарея не подключена к ИРН-2
	SwitchStatus Status_Join_To_Load;				// статус Батареи относительно нагрузки YES - Батарея подключена к нагрузке, NO - батарея к нагрузке не подключена 	 
}Bat;
//структура батареи
extern Bat Battery;
	
 

/*====================================================================================================================================================================*/
/*===============================================================ПЕРЕМЕННЫЕ ДЛЯ ТЕМПЕРАТУРНОГО ДАТЧИКА================================================================*/
/*====================================================================================================================================================================*/

typedef struct {
	uint8_t Data[NUMBER_OF_LAST_RECIEVED_BYTE+1];	//массив байтов данных температуры в кодовом представлении, отправленных датчиком температуры
	uint8_t Byte_number;											//номер байта в массиве байтов
	uint16_t Temperature_code;								//температура в кодовом представлении
	float Temperature_real;										//температура в Цельсиях
	Sign Sign;																//знак температуры 
	float Temperature_coef;										//температурный коэффициент переводящий Temperature_code в Temperature_real
	char id[ROM_bytes];												//уникальный номер датчика температуры (ROM), защитый производителем в его память
  char index;																//порядковый номер подключенного датчика температуры
	Status Fault_Connect;											//статус ошибки связи, YES - ошибка есть, NO - ошибки нету
	Counter count_Fault_Connect;							//счетчик количества неудавшихся попыток связи с датчиком температуры
}TempSens;
//Структура датчика температуры
extern TempSens TemperatureSensor1;


typedef struct {
	Counter count_Fault_Connect; 							//счетчик количества неудавшихся попыток связи с преобразователем I2C-OW
	Status Fault_Connect;											//статус ошибки связи, YES - ошибка есть, NO - ошибки нету
	Counter Counter_ACK_Flag;							 		//счетчик времени ожидания выставления Подчиненным устройством по линии I2C флага подтвержения принятия команды (ACK)
	Counter Counter_I2C_Command_End;					//счетчик времени для окончания передачи команды по интерфейсу I2C*/														
}I2C_OW_Conv;
//Структура преобразователя I2C-OW
extern I2C_OW_Conv I2C_OW_Converter;

/*====================================================================================================================================================================*/
/*===============================================================ПЕРЕМЕННЫЕ, ПАРАМЕТРЫ RS485, MODBUS==================================================================*/
/*====================================================================================================================================================================*/

//структура минимальных и максимальных значений. 
typedef struct {
	float Min_Value;
	float Max_Value;
	float Min_Value_Discharge;					//Min_Value_Discharge используется для записи минимальной температуры в режиме разряд
	float Max_Value_Discharge;					//Max_Value_Discharge используется для записи максимального значение тока разряда батареи
}Min_Max;

typedef struct {
	Min_Max Load;							//Миниальное и Максимальное значение для Нагрузки
	Min_Max Battery;					//Миниальное и Максимальное значение для Батареи
	Min_Max KAN_D;						//Миниальное и Максимальное значение для КАН-Д
} Parameters;

extern Parameters I, U, T;



/* Перечисление с номерами регисторов с данными для обмена с ПК */
typedef enum {
	U_MCU_REG			= 1,									//1. R	Текущая величина напряжения на выходе КАН-Д
	U_KAN_D_REG,												//2. R	Текущая величина напряжения на выходе КАН-Д
	U_LOAD_REG,													//3. R	Текущая величина напряжения на нагрузке
	U_BATTERY_REG,											//4. R	Текущая величина напряжения на батареи
	I_BATTERY_REG,											//5. R	Текущая величина тока батареи
	I_LOAD_REG,													//6. R	Текущая величина тока нагрузки
	MODE_REG,														//7. R	Состояние трех реле, и четырех событий
	STATUS_CHARGE_MODE,									//8. R/W	Активация (1) или нет (0) режима конфигурации устройства, соответствующей режиму Заряд в реальной эксплуатации
	SET_U_BATTERY_LIMIT_VALUE_REG,			//9. R/W	Установка максимального (1) или минимального (0) значения напряжения на клеммном разъеме куда подключается батарея
	STATUS_DISCHARGE_MODE,							//10.R/W	Активация (1) или нет (0) режима конфигурации устройства, соответствующей режиму Разряд в реальной эксплуатации
	T_BATTERY_1_REG,										//11. R	Текущая величина температуры
	STATUS_SWITCHES,										//12. R Положение переключателей Времени разряда, Емкости батареи и типа выборанного КАН-Д
}Modbus_REG;

//структура данных передаваемых по RS485
typedef struct {
	
	uint8_t Package_Data[MAX_DATA_SIZE_BYTES];	//Массив принятых/отправленных данных пакета. одна ячейка - один байт пакета
	uint8_t Package_Data_Index;									//Номер принятого/отправленного байта данных пакета
	uint8_t Package_Size;												//Размер пакета в байтах
	uint8_t Command;														//Тип команды: Код 03 – чтение значений из нескольких регистров хранения, Код 06 – запись значений в один регистр хранения, Код 17 – чтение наименования устройства.
	Modbus_REG Registor_Adress;
	uint16_t Amount_Registor_Read_Or_Write;		//количество регистров для чтения или записи
	uint16_t Data;										//Полезные данные, которые запрашивают/отправляют
	Status CRC_Is_Ok;									//Флаг корректности CRC, YES - данные передались корректно, NO - данные передались не корректно
	Status Package_Is_Sending;				//Флаг передачи паката данных, YES - передача идет, NO - передача не идет
	Status Package_Is_New;						//YES - пакет новый (то есть он не обработан), NO - пакет старый и он уже обработан
	Counter Counter_Delay_Between_Bytes; //счетчик времени между концом приема предыдущего байта и началом приема следующего байта в пакете
	Counter Counter_Waiting_Receive_End; //счетчик времени переполнение которого обозачает, что пакет данных передался

}RS485_data;

extern RS485_data RS485;

//структура данных Идентификационной карты устройства
typedef struct {
	uint8_t Device_Name[DEVICE_NAME_BYTE];						//Имя устройства
	uint8_t Firmware_Version[FIRMWARE_VERSION_BYTE];	//Версия устройства/ПО
	uint8_t Order_Number[ORDER_NUMBER_BYTE];					//Номер заказа
	uint8_t Batch_Number[BATCH_NUMBER_BYTE];					//Номер партии
	uint8_t Number_In_Batch[NUMBER_IN_BATCH_BYTE];		//Номер в партии
} Device_ID_Struct;
	

//структура данных передаваемых по Modbus
typedef struct {
	uint8_t Device_Adress;						//Адрес устройства
	uint8_t Type_Of_KAN_D;						//Тип применяемого КАН-Д
	unsigned int Battery_Capacity_User;	//Емкость батареи, задаваемая пользователем
	unsigned int Time_Discharge_User;		//Максимальное время разряда батареи, задаваемое пользователем минуты+секунды
	uint16_t Time_Discharge_User_Min;	//Максимальное время разряда батареи, задаваемое пользователем часть минут
	uint16_t Time_Discharge_User_Sec;	//Максимальное время разряда батареи, задаваемое пользователем часть секунд
	Parameters I,U,T;									//Граничные параметры, задаваемые пользователем
	float U_Tricle;										//Уровень напряжения на батареи, превышение которого переведет режим заряда из Восстановительного режима (TRICLE_CHARGE) в режим Быстрой зарядки (BULK_CHARGE) 
	float U_Over;													//Уровень напряжения на батареи, который должен поддерживаться в режиме Перезаряда (OVER_CHARGE)
	float U_Equalizing;										//Уровень напряжения на батареи, который должен поддерживаться в режиме Уравнительного заряда (EQUALIZING_CHARGE)
	float	U_Float;												//Уровень напряжения на батареи, который должен поддерживаться в Буферном режиме (FLOAT_CHARGE) 
	uint16_t I_Tricle_koef;									//Токовый коэффициент в режиме TRICLE_CHARGE 
	uint16_t I_Bulk_koef;										//Токовый коэффициент в режиме BULK_CHARGE 
	uint16_t I_Over_koef;										//Токовый коэффициент в режиме OVER_CHARGE
	uint16_t I_Charge_Min_koef;							//Токовый коэффициент, определяющий минимальный ток заряда в режиме Быстрая зарядка (BULK_CHARGE) Imin=Battery.Capacity*I_Charge_min_koef.  В ходе работы принимается во внимание в случае, если Control_I_Battery_Min_Charge = 1	
	uint16_t T_Compensation_koef_Over;				//Коэффициент температурной компенсации в режиме OVER_CHARGE (Перезаряд) 
	uint16_t T_Compensation_koef_Float;			//Коэффициент температурной компенсации в режиме FLOAT_CHARGE (Буферный)
	float Battery_Internal_Resistor;			//Внутреннее сопротивление батареи 
	Status Remout_Control;								//Дистанционное отключение АКБ. YES – отключение Батареи запрещено,  NO – отключение Батареи разрешено
	Status Control_I_Battery_Min_Charge;	//Режим слежения за минимальным током заряда батареи При значении тока меньше I_BATTERY_MIN_CHARGE заряд прекращается. YES – слежение ведется,  NO – слежение не ведется
	Status Reset_Default_Settings;				//Сброс до заводских настроек. YES - сброс разрешен, NO - сброс не разрешен
	Power_KAN_D	P_KAN_D;									//Мощность КАН-Д
	Device_ID_Struct Device_ID;						//идентификатор устройства
}UPS_D_data;

extern UPS_D_data Modbus, UPS_D, UPS_D_buf;





//структура данных используемых при тестировании ИБП-Д
typedef struct {
	SwitchStatus Charge_Mode;			//Активация (1) или нет (0) режима конфигурации устройства, соответствующей режиму Заряд в реальной эксплуатации
	Status U_Battery_Limit_Value;	//Установка максимального (1) или минимального (0) значения напряжения на клеммном разъеме куда подключается батарея
	SwitchStatus Discharge_Mode;	//Активация (1) или нет (0) режима конфигурации устройства, соответствующей режиму Разряд в реальной эксплуатации
} UPS_D_Testing;

extern UPS_D_Testing Testing;



