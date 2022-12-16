void Initialization (void);
void rst_clock_init(void);
void port_init(void);
void adc_init(void);
void timer1_init(void);
void timer2_init(void);
void dac2_init(void);
void i2c_init(void);
void uart1_init(void);
void eeprom_init(void);
void interrupt_init(void);
void watchdog_init (void);
void struct_config(void);
void Default_settings(void);	//функция Default_Settings устанавливает заводские настройки аналоговых величин ИБП-Д
void Settings_From_Flash(void);//функция Settings_From_Flash загружает уставки с FLASH памяти ИБП-Д
void DeviceID_From_Flash(void);
float Temperature_Convert_From_Flash (unsigned int temp); //функция Temperature_Convert_From_Flash преобразует полученную по Modbus температуру в требуемый программой вид

