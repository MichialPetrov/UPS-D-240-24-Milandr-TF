#include "MDR32FxQI_rst_clk.h"
#include "MDR32FxQI_port.h"
#include "MDR32FxQI_timer.h"
#include "MDR32FxQI_adc.h" 
#include "MDR32FxQI_dac.h" 
#include "MDR32FxQI_i2c.h" 
#include "MDR32FxQI_uart.h" 
#include "MDR32FxQI_eeprom.h"
#include "MDR32FxQI_iwdg.h"
#include "Initialization.h"
#include "Defines.h" 
#include "Global_Var.h"
#include "Function.h"
#include <string.h>




void Initialization (void)
{
	__disable_irq();	//запрет всех прерываний
	rst_clock_init();
	port_init();
	adc_init();
	timer1_init();
	timer2_init();
	dac2_init();
	i2c_init();
	uart1_init();
	eeprom_init();
	interrupt_init();
	watchdog_init();
	struct_config();
	DeviceID_From_Flash();
	__enable_irq();	//разрешение всех прерываний
}


void rst_clock_init(void)
{
		/* Разрешение работы внешнего высочастотного резонатора (HSE) */
  RST_CLK_HSEconfig(RST_CLK_HSE_ON);
		
  /* Проверка готовности HSE */
	while (RST_CLK_HSEstatus() != SUCCESS)
  		/* Выбор резонатора HSE для тактирования ФАПЧ ЦП (PLL_CPU) и 
   установка множителя частоты ФАПЧ на 10 */
  RST_CLK_CPU_PLLconfig(RST_CLK_CPU_PLLsrcHSEdiv1, RST_CLK_CPU_PLLmul10); 
	//почему-то предыдущяя команда не выполняется, поэтому повторяем её действие
	MDR_RST_CLK->CPU_CLOCK |=RST_CLK_CPU_C1srcHSEdiv1;
	MDR_RST_CLK->PLL_CONTROL |=(RST_CLK_USB_PLLmul10<<8);
  /* Включение ФАПЧ */
  RST_CLK_CPU_PLLcmd(ENABLE);
   /* Проверка завершения инициализации ФАПЧ */
 	while (RST_CLK_CPU_PLLstatus() != SUCCESS);
   /* Установка предделителя тактового сигнала ЦП в 1 */
  RST_CLK_CPUclkPrescaler(RST_CLK_CPUclkDIV1);
  /* Подключение выхода ФАПЧ к CPU_C3*/
  RST_CLK_CPU_PLLuse(ENABLE);
   /* Выбор тактового сигнала CPU_C3 для тактирования ЦП */
  RST_CLK_CPUclkSelection(RST_CLK_CPUclkCPU_C3);
  /* Обновление глобальной переменной SystemCoreClock, содержащей значение
  частоты центрального процессора. */
  SystemCoreClockUpdate();
	
}

void port_init(void)
{
	PORT_InitTypeDef PORT_InitStructure;
   // Запуск тактирования портов контроллера
  RST_CLK_PCLKcmd( RST_CLK_PCLK_PORTE, ENABLE);
  RST_CLK_PCLKcmd( RST_CLK_PCLK_PORTF, ENABLE);
  RST_CLK_PCLKcmd( RST_CLK_PCLK_PORTA, ENABLE);
  RST_CLK_PCLKcmd( RST_CLK_PCLK_PORTB, ENABLE);
  RST_CLK_PCLKcmd( RST_CLK_PCLK_PORTC, ENABLE);
	RST_CLK_PCLKcmd( RST_CLK_PCLK_PORTD, ENABLE);
	
  	/*Порты настройки времени разряда батареии (PA0-PA3) и емкости подключенной АКБ (PA4-PA7)*/	
	PORT_InitStructure.PORT_Pin   = PORT_Pin_0 | PORT_Pin_1 | PORT_Pin_2 | PORT_Pin_3 | PORT_Pin_4 | PORT_Pin_5 | PORT_Pin_6 | PORT_Pin_7 ;
  PORT_InitStructure.PORT_OE    = PORT_OE_IN;
  PORT_InitStructure.PORT_FUNC  = PORT_FUNC_PORT;
  PORT_InitStructure.PORT_MODE  = PORT_MODE_DIGITAL;
  PORT_InitStructure.PORT_PULL_UP = PORT_PULL_UP_ON;
  PORT_Init(MDR_PORTA, &PORT_InitStructure);
	
	/*Порты фиксаторы аварийных ситуаций PB9-U_LOAD, PB9-I_LOAD*/	
	PORT_InitStructure.PORT_Pin   = PORT_Pin_9 | PORT_Pin_10 ;
  PORT_Init(MDR_PORTB, &PORT_InitStructure);
	
	/*Порт фиксатор аварийных ситуаций PC2-U_KAN_D*/	
	PORT_InitStructure.PORT_Pin   = PORT_Pin_2;
  PORT_Init(MDR_PORTC, &PORT_InitStructure);
	
	/*Дистанционное отключение батареи PD6-U_KAN_D*/	
	PORT_InitStructure.PORT_Pin   = PORT_Pin_6;
  PORT_Init(MDR_PORTD, &PORT_InitStructure);
	
	/*PE1 - RelAC_ON/OFF - напряжение с КАН-Д (1-норма,0-нет)  
	PE2 - RelBAT_ON/OFF - статус Батареи (1-подключена и заряд больше 20%,0-отключена или заряд меньше 20%)
	PE3 - RelAlrm_ON/OFF - статус Аварии (1-авария есть,0-аварии нету)   
	PE6 - BOOST_REGELATOR - включение/отключение силовой схемы зарядки Батареи (1-включена, 0-отключена)
	PE7 - PWM_BOOST_REGULATOR - включение отключение микросхемы управления силовой схемы зарядки батареи (0-включена, 1 - отключена) */
  PORT_InitStructure.PORT_Pin   = PORT_Pin_1 | PORT_Pin_2 | PORT_Pin_3 | PORT_Pin_6 | PORT_Pin_7 ;
  PORT_InitStructure.PORT_OE    = PORT_OE_OUT;
  PORT_InitStructure.PORT_FUNC  = PORT_FUNC_PORT;
  PORT_InitStructure.PORT_MODE  = PORT_MODE_DIGITAL;
  PORT_InitStructure.PORT_SPEED = PORT_SPEED_SLOW;
  PORT_Init(MDR_PORTE, &PORT_InitStructure);
  
	/*PF1 - LED1.1, PF2 - LED1.2 - уровень заряда батареи
	PF3 - LED2.1, PF4 - LED2.2 - режим работы (сеть, БАТАРЕЯ, авария)*/	
	PORT_InitStructure.PORT_Pin   = PORT_Pin_0 | PORT_Pin_1 | PORT_Pin_2 | PORT_Pin_3;
  PORT_InitStructure.PORT_OE    = PORT_OE_OUT;
  PORT_Init(MDR_PORTF, &PORT_InitStructure);
	PORT_SetBits(MDR_PORTF, PORT_Pin_0); //Подача импульсов управления на LED1.1, LED1.2, LED2.1, LED2.2 - как транзисторы их управления pnp типа
	PORT_SetBits(MDR_PORTF, PORT_Pin_1); //то есть при инициализации они не светяться, потому что нормальное их состояние - светиться
	PORT_SetBits(MDR_PORTF, PORT_Pin_2);
	PORT_SetBits(MDR_PORTF, PORT_Pin_3);
	
	/*PB7 - BATTERY_JOIN_TO_LOAD - Включение/отключение батареи от нагрузки, - BATTERY_JOIN_TO_LOAD = ON – батарея подключена к нагрузке, BATTERY_JOIN_TO_LOAD = OFF – батарея отключена от нагрузки*/
	PORT_InitStructure.PORT_Pin   = PORT_Pin_8;
	PORT_Init(MDR_PORTB, &PORT_InitStructure);
	


}

void adc_init(void)
{
	ADC_InitTypeDef ADC_InitStructure; //Общая инициализацинная структура подсистемы АЦП  
	ADCx_InitTypeDef ADC1_InitStructure; //Инициализацинная структура для АЦП1 
	ADCx_InitTypeDef ADC2_InitStructure; //Инициализацинная структура для АЦП1 

	// Структура для инициализации портов	
	PORT_InitTypeDef PortInitStructure;
    /* Инициализация выводов АЦП  */
    /* Разрешение тактирования портов с выводами АЦП (PORTD)*/
  RST_CLK_PCLKcmd (RST_CLK_PCLK_ADC | RST_CLK_PCLK_PORTD, ENABLE);
	
   // Cделать все выводы порта D аналоговыми
	PORT_StructInit (&PortInitStructure);
	PortInitStructure.PORT_Pin = PORT_Pin_0|PORT_Pin_1|PORT_Pin_2|PORT_Pin_3|PORT_Pin_4|PORT_Pin_5|PORT_Pin_7;
	PortInitStructure.PORT_MODE = PORT_MODE_ANALOG;
	PORT_Init (MDR_PORTD, &PortInitStructure);
	
    /* Заполнение общих полей структуры ADC_InitStructure */
	/*Режим независимого запуска двух АЦП*/
	ADC_InitStructure.ADC_SynchronousMode = ADC_SyncMode_Independent;
	/*Задержка между запусками двух АЦП*/
	ADC_InitStructure.ADC_StartDelay = 0;
	// Отключение встроенного температурного датчика
	ADC_InitStructure.ADC_TempSensor = ADC_TEMP_SENSOR_Disable;
	ADC_InitStructure.ADC_TempSensorAmplifier = ADC_TEMP_SENSOR_AMPLIFIER_Disable;
	ADC_InitStructure.ADC_TempSensorConversion = ADC_TEMP_SENSOR_CONVERSION_Disable;
	//Отключение внутреннего датчика опорного напряжения
	ADC_InitStructure.ADC_IntVRefConversion = ADC_VREF_CONVERSION_Disable;
	ADC_InitStructure.ADC_IntVRefTrimming = 0;
	ADC_Init (&ADC_InitStructure);
     
		 /* Заполнение полей структуры ADС1_InitStructure*/
		 // Источник тактирования для АЦП от частоты ЦП
	ADC1_InitStructure.ADC_ClockSource = ADC_CLOCK_SOURCE_CPU;
	// Делитель частоты 8, fadc=fcpu/8=80МГц/8=10 МГц, максимально возможная частота 14МГц
	ADC1_InitStructure.ADC_Prescaler = ADC_CLK_div_8; 
	ADC1_InitStructure.ADC_SamplingMode = ADC_SAMPLING_MODE_SINGLE_CONV; /////////////!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
	// Автоматическое переключение каналов вЫключено
	ADC1_InitStructure.ADC_ChannelSwitching = ADC_CH_SWITCHING_Disable;//ADC_CH_SWITCHING_Enable; //тут
	// Канал для оцифровки=0, т.к. выбран режим нескольких каналов
	ADC1_InitStructure.ADC_ChannelNumber =ADC_CH_ADC0; //ADC_CH_ADC0_MSK ; 0; //тут
	// В автоматичиском режиме количество используемых каналов
	ADC1_InitStructure.ADC_Channels = 0;

	// В автоматическом режиме задержка между переключением каналов
	ADC1_InitStructure.ADC_DelayGo = 7;
	// Контроль за уровнем напряжения выключен
	ADC1_InitStructure.ADC_LevelControl = ADC_LEVEL_CONTROL_Disable;
	ADC1_InitStructure.ADC_LowLevel = 0;
	ADC1_InitStructure.ADC_HighLevel = 0;
	// Источник опорного напряжения - внутренний
	ADC1_InitStructure.ADC_VRefSource = ADC_VREF_SOURCE_INTERNAL;
	// Источник опорного напряжения без температурной компенсации
	ADC1_InitStructure.ADC_IntVRefSource = ADC_INT_VREF_SOURCE_INEXACT;
	ADC1_Init (&ADC1_InitStructure); // принять настройки АЦП
    /* Разрешение работы АЦП1 */
  ADC1_Cmd (ENABLE);

}

// Функция инициализация таймера 1
void timer1_init(void)
{
	   /* Структура для инициализации таймера */
	TIMER_CntInitTypeDef     TIM_CntInit;
	 /* Настройка таймера.
		 Параметры таймера Timer1: 
		 HCLK = 80 MHz, Prescaler = 43 -> Clock = HCLK/(Prescaler + 1) = 1.818181... MHz,
		 Period = 202 -> Frequency = Clock/(Period) = 9000 Hz */
	 /* Разрешение тактирования периферийного модуля таймера 1 */
	RST_CLK_PCLKcmd(RST_CLK_PCLK_TIMER1,ENABLE);
	/* Сброс таймера Timer1 */
	TIMER_DeInit(MDR_TIMER1);
			/* Разрешение тактирования Timer1 */
	TIMER_BRGInit(MDR_TIMER1, TIMER_HCLKdiv1);
			/* Заполнение полей структуры TIM_CntInit значениями по умолчанию */
	TIMER_CntStructInit(&TIM_CntInit);

	/* Заполнение полей структуры TIM_CntInit */
	/* Настройка предделителя */
	TIM_CntInit.TIMER_Prescaler                = TIMER1_PRESCALER;
	/* Настройка периода */
	TIM_CntInit.TIMER_Period                   = TIMER1_PERIOD_CODE; 
	/* Источник тактиования - внутренний генератор */
	TIM_CntInit.TIMER_CounterMode              = TIMER_CntMode_ClkFixedDir;
	/* Счет "вверх" */
	TIM_CntInit.TIMER_CounterDirection         = TIMER_CntDir_Up;
	/* Немедленное обновление счетчика по переполнению */
	TIM_CntInit.TIMER_ARR_UpdateMode           = TIMER_ARR_Update_Immediately;
	/* Инициализация Timer1 */
	TIMER_CntInit(MDR_TIMER1, &TIM_CntInit);
    
  // Разрешить прерывания по переполнению таймера 
  TIMER_ITConfig (MDR_TIMER1, TIMER_STATUS_CNT_ARR, ENABLE);
	
     /* Разрешение работы Timer1 */
  TIMER_Cmd(MDR_TIMER1, ENABLE);
}

// Функция инициализация таймера 1
void timer2_init(void)
{
	   /* Структура для инициализации таймера */
	TIMER_CntInitTypeDef     TIM_CntInit;
	 /* Настройка таймера.
		 Параметры таймера Timer1: 
		 HCLK = 80 MHz, Prescaler = 8 -> Clock = HCLK/(Prescaler + 1) = 8.888... MHz,
		 Period = 177 -> Frequency = Clock/(Period) = 50219 Hz */
	 /* Разрешение тактирования периферийного модуля таймера 1 */
	RST_CLK_PCLKcmd(RST_CLK_PCLK_TIMER2,ENABLE);
	/* Сброс таймера Timer1 */
	TIMER_DeInit(MDR_TIMER2);
			/* Разрешение тактирования Timer1 */
	TIMER_BRGInit(MDR_TIMER2, TIMER_HCLKdiv1);
			/* Заполнение полей структуры TIM_CntInit значениями по умолчанию */
	TIMER_CntStructInit(&TIM_CntInit);

	/* Заполнение полей структуры TIM_CntInit */
	/* Настройка предделителя */
	TIM_CntInit.TIMER_Prescaler                = TIMER2_PRESCALER;
	/* Настройка периода */
	TIM_CntInit.TIMER_Period                   = TIMER2_PERIOD_CODE; 
	/* Источник тактиования - внутренний генератор */
	TIM_CntInit.TIMER_CounterMode              = TIMER_CntMode_ClkFixedDir;
	/* Счет "вверх" */
	TIM_CntInit.TIMER_CounterDirection         = TIMER_CntDir_Up;
	/* Немедленное обновление счетчика по переполнению */
	TIM_CntInit.TIMER_ARR_UpdateMode           = TIMER_ARR_Update_Immediately;
	/* Инициализация Timer1 */
	TIMER_CntInit(MDR_TIMER2, &TIM_CntInit);
    
  // Разрешить прерывания по переполнению таймера 
  TIMER_ITConfig (MDR_TIMER2, TIMER_STATUS_CNT_ARR, ENABLE);
	
     /* Разрешение работы Timer1 */
  TIMER_Cmd(MDR_TIMER2, ENABLE);
}

// Функция инициализация DAC2
void dac2_init(void)
{
	// Структура для инициализации портов	
	PORT_InitTypeDef PortInitStructure;
    /* Разрешение тактирования DAC и портов с выводами DAC2 (PORTE)*/
  RST_CLK_PCLKcmd (RST_CLK_PCLK_DAC | RST_CLK_PCLK_PORTE, ENABLE);
	
   //PORTE0 аналоговый порт
	PORT_StructInit (&PortInitStructure);
	PortInitStructure.PORT_Pin = PORT_Pin_0;
	PortInitStructure.PORT_MODE = PORT_MODE_ANALOG;
	PORT_Init (MDR_PORTE, &PortInitStructure);
	
	DAC2_Init(DAC2_AVCC); // в качестве опорного напряжения для DAC2 используется напряжение питания с вывода AUCC
	DAC2_Cmd(ENABLE);
	DAC2_SetData(Nmax);	
}

// Функция инициализация I2C
void i2c_init(void)
{
	// Структура для инициализации портов	
	PORT_InitTypeDef Port_InitStructure;
	// Структура для инициализации I2C	
	I2C_InitTypeDef I2C_InitStruct;
   /* Разрешение тактирования I2C и портов с выводами I2C (PORTC)*/
  RST_CLK_PCLKcmd (RST_CLK_PCLK_I2C | RST_CLK_PCLK_PORTC, ENABLE);
	
	PORT_StructInit (&Port_InitStructure);
	//PORTC0 (SCL), PORTC1 (SDA) альтернативная функция ножек
  Port_InitStructure.PORT_PULL_UP = PORT_PULL_UP_OFF;
	Port_InitStructure.PORT_PULL_DOWN = PORT_PULL_DOWN_OFF;
	Port_InitStructure.PORT_PD_SHM = PORT_PD_SHM_ON;
	//Port_InitStructure.PORT_PD = PORT_PD_DRIVER;
	Port_InitStructure.PORT_PD = PORT_PD_OPEN;
	Port_InitStructure.PORT_SPEED = PORT_SPEED_MAXFAST;
	Port_InitStructure.PORT_MODE  = PORT_MODE_DIGITAL;
	Port_InitStructure.PORT_Pin   = PORT_Pin_0 | PORT_Pin_1 ;
  Port_InitStructure.PORT_FUNC  = PORT_FUNC_ALTER;
	Port_InitStructure.PORT_OE    = PORT_OE_OUT;
	Port_InitStructure.PORT_PD    = PORT_PD_OPEN;
	
  PORT_Init(MDR_PORTC, &Port_InitStructure);
	

  I2C_DeInit();
	I2C_InitStruct.I2C_ClkDiv = 39;
	I2C_InitStruct.I2C_Speed = I2C_SPEED_UP_TO_400KHz;
	I2C_Init(&I2C_InitStruct);
	I2C_Cmd(ENABLE);
	
	I2C_Send7bitAddress(0x32,I2C_Direction_Transmitter);
	I2C_SendByte(0xE1);
	I2C_SendSTOP();
}

void uart1_init(void)
{
	/* Настройка ножки RE, задающей направление передачи данных по шине RS485 (PB7)*/
	PORT_InitTypeDef PortInitStructure;
	PortInitStructure.PORT_Pin   = PORT_Pin_7 ;
	PortInitStructure.PORT_OE    = PORT_OE_OUT;
	PortInitStructure.PORT_FUNC  = PORT_FUNC_PORT;
	PortInitStructure.PORT_MODE  = PORT_MODE_DIGITAL;
	PortInitStructure.PORT_SPEED = PORT_SPEED_SLOW;
	PORT_Init(MDR_PORTB, &PortInitStructure);

 /* Структура для настройки портов ввода/вывода, используемых в UART1 */
	PORT_InitTypeDef Port_InitStructure_uart1;
	/* Структура для настройки UART1 */
	UART_InitTypeDef UART1_InitStructure;
	/* Инициализация ножек RX и TX */
	/* Разрешение тактирования портов с ножками RX и TX */
	RST_CLK_PCLKcmd(RST_CLK_PCLK_PORTB, ENABLE);
	RST_CLK_PCLKcmd(RST_CLK_PCLK_PORTB, ENABLE);
 
	/* Заполнение общих полей структуры Port_InitStructure */
	/* Подтяжка к питанию отключена */
	Port_InitStructure_uart1.PORT_PULL_UP = PORT_PULL_UP_OFF;
	/* Подтяжка к нулю отключена */
	Port_InitStructure_uart1.PORT_PULL_DOWN = PORT_PULL_DOWN_OFF;
	/* Триггер Шмитта отключен */
	Port_InitStructure_uart1.PORT_PD_SHM = PORT_PD_SHM_OFF;
	/* Режим работы выхода – управляемый драйвер */
	Port_InitStructure_uart1.PORT_PD = PORT_PD_DRIVER;
	/* Режим работы входного фильтра -  фильтр выключен */
	Port_InitStructure_uart1.PORT_GFEN = PORT_GFEN_OFF;
	/* Альтернативная функция порта */
	Port_InitStructure_uart1.PORT_FUNC = PORT_FUNC_ALTER;
	/* Скорость нарастания/спада - максимально быстрый фронт */
	Port_InitStructure_uart1.PORT_SPEED = PORT_SPEED_MAXFAST;
	/* Режим работы - цифровой вход/выход */
	Port_InitStructure_uart1.PORT_MODE = PORT_MODE_DIGITAL;

	/* Настройка UART1 RX на ввод */
	/* Настройка ножки порта на ввод */
	Port_InitStructure_uart1.PORT_OE = PORT_OE_IN;
	/* Указываем номер ножки,которую будет инициализировать */
	Port_InitStructure_uart1.PORT_Pin = PORT_Pin_6;
	/* Инициализация ножки */
	PORT_Init(MDR_PORTB, &Port_InitStructure_uart1); 
	
	/* Настройка UART1 TX на вывод */
	/* Настройка ножки порта на вывод */
	Port_InitStructure_uart1.PORT_OE = PORT_OE_OUT;
	/* Указываем номер ножки,которую будет инициализировать */
	Port_InitStructure_uart1.PORT_Pin = PORT_Pin_5;
	/* Инициализация ножки */
	PORT_Init(MDR_PORTB, &Port_InitStructure_uart1); 
	
		/* Инициализация UART1 */
	/* Разрешение тактирования UART1 */
	RST_CLK_PCLKcmd(RST_CLK_PCLK_UART1, ENABLE);

	/* Настройка делителя тактовой частоты UART */
	UART_BRGInit(MDR_UART1, UART_HCLKdiv1);
	/*Разрешение прерывания для UART1*/
 // NVIC_EnableIRQ(UART1_IRQn);


	/* Заполнение полей структуры UART1_InitStructure */
	/* Скорость передачи */
	UART1_InitStructure.UART_BaudRate                = UART1_IO_BAUDRATE;
	/* Количество бит данных - 8 */
	UART1_InitStructure.UART_WordLength              = UART_WordLength8b;
	/* Количество стоп бит - 1 */
	UART1_InitStructure.UART_StopBits                = UART_StopBits1;
	/* Без контроля бита паритета */
	UART1_InitStructure.UART_Parity                  = UART_Parity_No;
	/* Буфер FIFO отключен */
	UART1_InitStructure.UART_FIFOMode                = UART_FIFO_OFF;
	/* Включаем передатчик и приемник */
	UART1_InitStructure.UART_HardwareFlowControl     = 
			UART_HardwareFlowControl_RXE |
			UART_HardwareFlowControl_TXE;

	/* Инициализация UART1 */
	UART_Init(MDR_UART1, &UART1_InitStructure);
	
 
	/*Разрешение прерывания по приему*/
	UART_ITConfig(MDR_UART1,UART_IT_RX, ENABLE);
	/* Разрешение работы UART1 */
	UART_Cmd(MDR_UART1, ENABLE);
}

void eeprom_init(void)
{
    /* Enables the  clock on EEPROM */
   RST_CLK_PCLKcmd(RST_CLK_PCLK_EEPROM, ENABLE);
	 //задаем длительность паузы для гарантированного чтения данных из FLASH (EEPROM'ом в миландре называют FLASH)
	//Latency для тактирования МК с частотой до 100 МГц = 3 (у нас частота 80Мгц)
	 EEPROM_SetLatency(EEPROM_Latency_3);  
}

void interrupt_init(void)
{
	// Установка приоритет прерывания Timer2_IRQn:	приоритет 1.
	NVIC_SetPriority(Timer2_IRQn, 0);

	// Включаем прерываний Timer2_IRQn в NVIC.
	NVIC_EnableIRQ(Timer2_IRQn);

	// Установка приоритет прерывания Timer1_IRQn:	приоритет 1.
	NVIC_SetPriority(Timer1_IRQn, 1);

	// Включаем прерываний Timer1_IRQn в NVIC.
	 NVIC_EnableIRQ(Timer1_IRQn);

	// Установка приоритет прерывания UART1_IRQn: приоритет 2.
	NVIC_SetPriority(UART1_IRQn, 2);

	// Включаем прерываний UART1_IRQn в NVIC.
	NVIC_EnableIRQ(UART1_IRQn);
	
}

/*! Функция Watch_Dog  * Инициализация сторожевого таймера */
void watchdog_init (void)
 {  
	 #if (REALISE==FINAL)
	 {
	  uint8_t k;
	  RST_CLK_LSIcmd(ENABLE);//Включение внутреннего генератора LSI
	  RST_CLK_PCLKcmd(RST_CLK_PCLK_IWDG,ENABLE); // Включение тактирования сторожевого таймера IWDG. Тактируется от LSI: F_WD=F_LSI=40000Hz
		IWDG_Enable(); //Разрешение работы сторожевого таймера IWDG
		IWDG_WriteAccessEnable(); //Разрешение записи во внутренние регистры сторожевого таймера IWDG_PR,IWDG_RLR
		//while (IWDG_GetFlagStatus(IWDG_FLAG_PVU) !=SET) { } //Ожидание срабатывания схемы IWDG	
	  for(k=0;k<50;k++)	{	__asm {nop};} // небольшая задержка
  	IWDG_SetPrescaler(IWDG_Prescaler_64); //Настройка предделителя частоты IWDG: F_WD=F_LSI/IWDG_Prescaler=40000/64= 625Hz
		//while (IWDG_GetFlagStatus(IWDG_FLAG_PVU) !=SET) { } //Ожидание срабатывания схемы IWDG
	  for(k=0;k<50;k++) {	__asm {nop};}// небольшая задержка					
		IWDG_SetReload(0xFFF);//Установка значения перезагрузки IWDG: F_WD=(F_LSI/IWDG_Prescaler)/0xFFF= (40000/64)/4095= 0,152625Hz или Т_WD=6,55 сек.
		//IWDG_SetReload(0xFA);//Установка значения перезагрузки IWDG: F_WD=(F_LSI/IWDG_Prescaler)/0xFA= (40000/64)/250= 2,5 Hz или Т_WD=0,4 сек.
		IWDG_WriteAccessDisable();//Запрет записи во внутренние регистры сторожевого таймера IWDG_PR,IWDG_RLR
    /* Далее для перезагрузки использовать команду: IWDG_ReloadCounter();*/
	}
	#endif
}

void struct_config(void)
{
	LED1.pin[RED]			=	LED_CHARGE_RED;
	LED1.pin[GREEN]		=	LED_CHARGE_GREEN;
	LED1.pin[YELLOW]	=	LED_CHARGE_YELLOW;
	LED1.pin[LED_OFF]	=	LED_CHARGE_OFF;
	LED2.pin[RED]			=	LED_MODE_OF_WORK_RED;
	LED2.pin[GREEN]		=	LED_MODE_OF_WORK_GREEN;
	LED2.pin[YELLOW]	=	LED_MODE_OF_WORK_YELLOW;
	LED2.pin[LED_OFF]	=	LED_MODE_OF_WORK_OFF;
	
	RELE1_AC.pin		=	RELE_KAN_D;
	RELE2_BATTERY.pin	=	RELE_BATTERY;
	RELE3_STABLE_WORK.pin	=	RELE_WARNING; 
	
	ADC0_I_LOAD.Channel			=	ADC_I_LOAD_ch;
	ADC1_I_BATTERY.Channel	=	ADC_I_BATTERY_ch;
	ADC2_U_LOAD.Channel			=	ADC_U_LOAD_ch;
	ADC3_U_BATTERY.Channel	=	ADC_U_BATTERY_ch;
	ADC4_U_KAN_D.Channel		=	ADC_U_KAN_D_ch;
	ADC5_U_ZERO.Channel			=	ADC_U_ZERO_ch;
	ADC7_KAN_D_TYPE.Channel	=	ADC_KAN_D_TYPE;
	
	ADC0_I_LOAD.Convert_coef			=	ADC_I_LOAD_koef;
	ADC1_I_BATTERY.Convert_coef		=	ADC_I_BATTERY_koef;
	ADC2_U_LOAD.Convert_coef			=	ADC_U_LOAD_koef;
	ADC3_U_BATTERY.Convert_coef		=	ADC_U_BATTERY_koef;
	ADC4_U_KAN_D.Convert_coef			=	ADC_U_KAN_D_koef;
	ADC5_U_ZERO.Convert_coef			=	ADC_U_ZERO_koef;
	ADC7_KAN_D_TYPE.Convert_coef	=	ADC_KAN_D_TYPE_koef;
	
  Battery.Charge_Control=Nmax;
	Battery.Level=BATTERY_LEVEL_20; 										//ЭТА ВРЕМЕННАЯ НАСТРОЙКА
	Battery.Temperature=T_BATTERY_DEFAULT; 	
	Battery.Temperature_Max					  = UPS_D.T.Battery.Max_Value;
	Battery.Temperature_Min_Charge    = UPS_D.T.Battery.Min_Value; 
	Battery.Temperature_Min_Discharge = UPS_D.T.Battery.Min_Value_Discharge;
	Battery.Status_Join_To_Booster							=	ON;
	Battery.I_Battery_Discharge_More_Max_Value	=	NO;
	Battery.Counter_Check_I_Battery.MaxValue		=	TIME_5_SEC;
	Battery.UPS_Mode_Has_Changed_Flag						= UPS_FLAG_HANDLED;
	Battery.Equalizing_Charge.Need							= YES;									 //при включении ИБП-Д идет первая зарядка Батареи и следовательно нужно провести уравнительный заряд;
  
	
	Counter_Starting_Initialization.MaxValue						=	TIME_1_SEC;
	Counter_Starting_Initialization.Status							=	ON; 		
	Counter_Check_Battery_Connect.MaxValue						  =	TIME_5_SEC;
	Counter_Check_Battery_Connect.Status								=	ON; 					
	Counter_Check_Battery_Connect_Voltage_Drop.MaxValue =	TIME_30_mSEC;
	Counter_Anti_Bounce.MaxValue											  =	TIME_10_mSEC;
	Counter_Transient_Process.MaxValue								  =	TIME_150_mSEC;
	Counter_Transient_Process_UPS.MaxValue							= TIME_200_mSEC;
	Counter_Transient_Process_I_Battery_Impossible_Interrupt.MaxValue = TIME_3_SEC;
	Battery.Equalizing_Charge.Counter_I_Battery_Write_Value.MaxValue  = TIME_1_MIN; 
	Battery.Equalizing_Charge.Counter_I_Battery_Is_Constant.MaxValue  = TIME_EQUALIZING_CHARGE;
	Battery.Counter_UnderCharge.MaxValue													    = BATTERY_MAX_AMOUNT_OF_UNDERCHARGE;	
	Battery.I_Charge_Is_Less_Min_Flag 									= NO;						//по умолчанию ток зарада батареи не меньше минимального Battery.Capacity*UPS_D.I_Charge_min_koef
	
	I2C_OW_Converter.count_Fault_Connect.MaxValue				= ID_CONVERTER_I2C_to_OW_FAULT_MAX_COUNT;
	I2C_OW_Converter.count_Fault_Connect.Status					= ON; 					//разрешаем считать количество неудавщихся попыток связи с преобразователем температуры
	I2C_OW_Converter.Counter_ACK_Flag.MaxValue					=	TIME_1_mSEC;
	I2C_OW_Converter.Counter_I2C_Command_End.MaxValue		=	TIME_1_mSEC;
	
	TemperatureSensor1.Temperature_coef 						= T_koef;
	TemperatureSensor1.count_Fault_Connect.MaxValue = OW_FAULT_MAX_COUNT;
	TemperatureSensor1.count_Fault_Connect.Status		= ON; 				//разрешаем считать количество неудавщихся попыток связи с датчиком температуры
	
	Wrng_I_LOAD.Port	= MDR_PORTB;
	Wrng_U_LOAD.Port	= MDR_PORTB;
	Wrng_U_KAN_D.Port	= MDR_PORTC;
	Wrng_I_LOAD.Pin		= PORT_Pin_10;
	Wrng_U_LOAD.Pin		= PORT_Pin_9;
	Wrng_U_KAN_D.Pin	= PORT_Pin_2;
	
	
	RS485.Package_Is_New = NO;
	RS485.Counter_Waiting_Receive_End.MaxValue = TIME_1_77_mSEC;
	//RS485.Counter_Delay_Between_Bytes.MaxValue = TIME_667_mсSEC;
	UPS_D.Device_Adress 			 = DEVICE_ADRESS_DEFAULT;
	
	


}
//функция Default_Settings устанавливает заводские настройки аналоговых величин ИБП-Д
void Default_settings(void)
{
	UPS_D.Device_Adress 	 = DEVICE_ADRESS_DEFAULT;
	UPS_D.U.Load.Min_Value = U_LOAD_MIN_VALUE;
	UPS_D.U.Load.Max_Value = U_LOAD_MAX_VALUE;
	
	UPS_D.U.KAN_D.Min_Value	= U_KAN_D_MIN_VALUE;
	UPS_D.U.KAN_D.Max_Value = U_KAN_D_MAX_VALUE;
	
	UPS_D.I.Load.Min_Value = I_LOAD_MIN_VALUE;

	
	UPS_D.I.Battery.Min_Value 					= I_BATTERY_MIN;
	UPS_D.I.Battery.Max_Value 					= I_BATTERY_MAX_CHARGE;
	UPS_D.I.Battery.Min_Value_Discharge = I_BATTERY_MIN;
	
	
	UPS_D.P_KAN_D = Type_Of_KAN_D(); //определяем значение Мощности КАН-Д UPS_D.I.Load.Max_Value и UPS_D.I.Battery.Max_Value_Discharge
	
	UPS_D.U.Battery.Max_Value = U_BATTERY_MAX_VALUE;
	UPS_D.U.Battery.Min_Value = U_BATTERY_MIN_VALUE;
	
	UPS_D.T.Battery.Max_Value = T_BATTERY_MAX_VALUE;
	UPS_D.T.Battery.Min_Value = T_BATTERY_MIN_VALUE_CHARGE;
	UPS_D.T.Battery.Min_Value_Discharge = T_BATTERY_MIN_VALUE_DISCHARGE;
	
	UPS_D.U_Tricle 		 = U_BATTERY_TRICLE;
	UPS_D.U_Over	     = U_BATTERY_OVER;
	UPS_D.U_Equalizing = U_BATTERY_EQUALIZING;
	UPS_D.U_Float			 = U_BATTERY_FLOAT;

	
	UPS_D.I_Tricle_koef 		= I_TRICLE_koef;
	UPS_D.I_Bulk_koef				= I_BULK_koef;
	UPS_D.I_Over_koef				= I_OVER_koef;
	UPS_D.I_Charge_Min_koef = I_CHARGE_MIN_koef;
	
	UPS_D.T_Compensation_koef_Over 	 = T_COMPENSATION_KOEF_OVER_MODE;	
	UPS_D.T_Compensation_koef_Float	 = T_COMPENSATION_KOEF_FLOAT_MODE;	
	
	UPS_D.Control_I_Battery_Min_Charge = YES; //Режим слежения за минимальным током заряда батареи выключен
	UPS_D.Remout_Control = YES; 						  //Дистанционного запроса на отключение батареи не поступало
	
	UPS_D.Battery_Internal_Resistor = BATTERY_INTERNAL_RESISTOR_DEFAULT;
  	
	UPS_D.Battery_Capacity_User = CAPACITY_USER_DEFAULT; //емкость по умолчанию при выборе задания емкости от пользователя
	UPS_D.Time_Discharge_User   = TIME_USER_DEFAULT;		 //время разряда по умолчанию при выборе задания емкости от пользователя
}

//функция Settings_From_Flash загружает уставки с FLASH памяти ИБП-Д
void Settings_From_Flash(void)
{
	__disable_irq(); //запрещаем прерывания
	uint32_t Address=ADRESS_FLASH_SETTINGS_SAVE;
	uint32_t Data;
	//если ячейка не пустая, значит считаем уставки из FLASH. Если пустая, то значит настройки по умолчанию стоят.
	if(EEPROM_ReadWord (Address, EEPROM_Main_Bank_Select)!=CELL_IS_EMPTY)
	{
		for(uint8_t i=0; i<AMOUT_SAVED_SETTINGS; i++)
		{
			Data = EEPROM_ReadWord (Address+i*4, EEPROM_Main_Bank_Select);
			switch(i)
			{
				case 0:	UPS_D.Battery_Capacity_User						= Data;													break;
				case 1:	UPS_D.Time_Discharge_User							= Data;													break;
				case 2:	UPS_D.Device_Adress										= Data; 												break;
				case 3:	UPS_D.I_Charge_Min_koef								= (float)(Data);								break;
				case 4:	UPS_D.U.Load.Min_Value								= (float)(Data)*(1.f/FLASH_koef_1); 	break;
				case 5:	UPS_D.U.Load.Max_Value								= (float)(Data)*(1.f/FLASH_koef_1);		break;
				case 6:	UPS_D.U.Battery.Min_Value							= (float)(Data)*(1.f/FLASH_koef_1);		break;
				case 7:	UPS_D.U.Battery.Max_Value							= (float)(Data)*(1.f/FLASH_koef_1);		break;
				case 8:	UPS_D.U.KAN_D.Min_Value								= (float)(Data)*(1.f/FLASH_koef_1);		break;
				case 9:	UPS_D.U.KAN_D.Max_Value 							= (float)(Data)*(1.f/FLASH_koef_1);		break;
				case 10:	UPS_D.T.Battery.Min_Value						= Temperature_Convert_From_Flash(Data);		break;
				case 11:	UPS_D.T.Battery.Min_Value_Discharge	= Temperature_Convert_From_Flash(Data);		break;
				case 12:	UPS_D.T.Battery.Max_Value						= Temperature_Convert_From_Flash(Data);		break;
				case 13:	UPS_D.U_Tricle											= (float)(Data)*(1.f/FLASH_koef_1);		break;
				case 14:	UPS_D.U_Over												= (float)(Data)*(1.f/FLASH_koef_1);		break;
				case 15:	UPS_D.U_Equalizing									= (float)(Data)*(1.f/FLASH_koef_1);		break;
				case 16:	UPS_D.U_Float												= (float)(Data)*(1.f/FLASH_koef_1);		break;
				case 17:	UPS_D.I_Tricle_koef									= Data;		break;
				case 18:	UPS_D.I_Bulk_koef										= Data;		break;
				case 19:	UPS_D.I_Over_koef										= Data;		break;
				case 20:	UPS_D.T_Compensation_koef_Over			= Data;		break;
				case 21:	UPS_D.T_Compensation_koef_Float			= Data;		break;
			}
		}
	}
	__enable_irq();	 //разрешаем прерывания
}

/**
 * \breaf 	функция DeviceID_From_Flash загружает идентификационную карту с FLASH памяти ИБП-Д
 * \param 	temp - кодовое представление температуры, сохраненное во FLASH
 * \return  temp1 - возвращаемое знаение температура с СИ
 */
void DeviceID_From_Flash(void)
{
	__disable_irq(); //запрещаем прерывания
	
	uint32_t Address=ADRESS_FLASH_ID_DEVICE_SAVE;
	uint32_t Data;
	if(EEPROM_ReadWord (Address, EEPROM_Main_Bank_Select)!=CELL_IS_EMPTY)
	{
		for(uint8_t i=0; i<DEVICE_NAME_BYTE; i++)
			UPS_D.Device_ID.Device_Name[i] = (uint8_t)EEPROM_ReadWord (Address+i*4, EEPROM_Main_Bank_Select);
		Address += DEVICE_NAME_BYTE * 4; //коэф-т "4" потому что 32 битное число
		
		for(uint8_t i=0; i<FIRMWARE_VERSION_BYTE; i++)
			UPS_D.Device_ID.Firmware_Version[i] = (uint8_t)EEPROM_ReadWord (Address+i*4, EEPROM_Main_Bank_Select);
		Address += FIRMWARE_VERSION_BYTE * 4; //коэф-т "4" потому что 32 битное число
		
		for(uint8_t i=0; i<ORDER_NUMBER_BYTE; i++)
			UPS_D.Device_ID.Order_Number[i] = (uint8_t)EEPROM_ReadWord (Address+i*4, EEPROM_Main_Bank_Select);
		Address += ORDER_NUMBER_BYTE * 4; //коэф-т "4" потому что 32 битное число
		
		for(uint8_t i=0; i<BATCH_NUMBER_BYTE; i++)
			UPS_D.Device_ID.Batch_Number[i] = (uint8_t)EEPROM_ReadWord (Address+i*4, EEPROM_Main_Bank_Select);
		Address += BATCH_NUMBER_BYTE * 4; //коэф-т "4" потому что 32 битное число
		
		for(uint8_t i=0; i<NUMBER_IN_BATCH_BYTE; i++)
			UPS_D.Device_ID.Number_In_Batch[i] = (uint8_t)EEPROM_ReadWord (Address+i*4, EEPROM_Main_Bank_Select);
		Address += NUMBER_IN_BATCH_BYTE * 4; //коэф-т "4" потому что 32 битное число
	}
	
	__enable_irq();	 //разрешаем прерывания
}
   
/**
 * \breaf 	функция Temperature_Convert_From_Flash преобразует полученную по Modbus температуру в требуемый программой вид
 * \param 	temp - кодовое представление температуры, сохраненное во FLASH
 * \return  temp1 - возвращаемое знаение температура с СИ
 */
float Temperature_Convert_From_Flash (unsigned int temp)
{
	float temp1;
	if((temp>>Bit31)==YES) //переводим отрицательное число из дополнительного кода в прямой
		{
			temp1 = (float)((~temp)+1)*(-1);
			temp1 = (float)temp1*(1.f/FLASH_koef_1);
		}
	else temp1=(float)temp*(1.f/FLASH_koef_1);
	return temp1;
}







