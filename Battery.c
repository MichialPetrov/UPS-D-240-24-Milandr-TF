#include "MDR32FxQI_port.h"
#include "Battery.h"
#include "Global_Var.h"
#include "Defines.h"





void Battery_Capacity()
{
 int type_of_battaty=0;
 type_of_battaty=BATTERY_CAPACITY_PINS;
	switch (type_of_battaty)
	{
		case BATTERY_CAPACITY_4_5_Ah:
			LED1.Color=YELLOW;
			LED1.Flash=BLINK2;
			LED2.Color=YELLOW;
			LED2.Flash=BLINK1;
		break;
		case BATTERY_CAPACITY_7_2_Ah:
			LED1.Color=GREEN;
			LED1.Flash=BLINK1;
			LED2.Color=RED;
			LED2.Flash=BLINK2;
		break;
		case BATTERY_CAPACITY_12_Ah:
			LED1.Color=RED;
			LED1.Flash=PERMAMENT;
			LED2.Color=YELLOW;
			LED2.Flash=BLINK1;			
		break;
		case BATTERY_CAPACITY_26_Ah:
			LED1.Color=GREEN;
			LED1.Flash=BLINK2;
			LED2.Color=RED;
			LED2.Flash=BLINK1;		
		break;
		case BATTERY_CAPACITY_USER:
			LED1.Color=YELLOW;
			LED1.Flash=PERMAMENT;
			LED2.Color=RED;
			LED2.Flash=BLINK2;		
		break;
		default:
			
		break;

	}
}


