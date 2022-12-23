#line 1 "RS485_interface.c"
#line 1 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\SPL\\MDR32FxQI\\inc\\MDR32FxQI_uart.h"




















 

 







 
#line 1 ".\\RTE\\Device\\MDR32F9Q2I\\MDR32FxQI_config.h"

















 

















 




 







 
#line 1 "C:\\Programs\\Keil v537\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
 
 





 









     
#line 27 "C:\\Programs\\Keil v537\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"
     











#line 46 "C:\\Programs\\Keil v537\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"





 

     

     
typedef   signed          char int8_t;
typedef   signed short     int int16_t;
typedef   signed           int int32_t;
typedef   signed       __int64 int64_t;

     
typedef unsigned          char uint8_t;
typedef unsigned short     int uint16_t;
typedef unsigned           int uint32_t;
typedef unsigned       __int64 uint64_t;

     

     
     
typedef   signed          char int_least8_t;
typedef   signed short     int int_least16_t;
typedef   signed           int int_least32_t;
typedef   signed       __int64 int_least64_t;

     
typedef unsigned          char uint_least8_t;
typedef unsigned short     int uint_least16_t;
typedef unsigned           int uint_least32_t;
typedef unsigned       __int64 uint_least64_t;

     

     
typedef   signed           int int_fast8_t;
typedef   signed           int int_fast16_t;
typedef   signed           int int_fast32_t;
typedef   signed       __int64 int_fast64_t;

     
typedef unsigned           int uint_fast8_t;
typedef unsigned           int uint_fast16_t;
typedef unsigned           int uint_fast32_t;
typedef unsigned       __int64 uint_fast64_t;

     




typedef   signed           int intptr_t;
typedef unsigned           int uintptr_t;


     
typedef   signed     long long intmax_t;
typedef unsigned     long long uintmax_t;




     

     





     





     





     

     





     





     





     

     





     





     





     

     






     






     






     

     


     


     


     

     
#line 216 "C:\\Programs\\Keil v537\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     



     






     
    
 



#line 241 "C:\\Programs\\Keil v537\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"

     







     










     











#line 305 "C:\\Programs\\Keil v537\\ARM\\ARMCC\\Bin\\..\\include\\stdint.h"






 
#line 51 ".\\RTE\\Device\\MDR32F9Q2I\\MDR32FxQI_config.h"
#line 1 ".\\RTE\\_Target_1\\RTE_Components.h"







 




 
 



#line 52 ".\\RTE\\Device\\MDR32F9Q2I\\MDR32FxQI_config.h"

 




 





 
#line 1 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"


 

 





 



 



 






  #pragma anon_unions


 
typedef enum IRQn
{
 
  NonMaskableInt_IRQn     = -14,   
  HardFault_IRQn          = -13,   
  MemoryManagement_IRQn   = -12,   
  BusFault_IRQn           = -11,   
  UsageFault_IRQn         = -10,   
  SVCall_IRQn             = -5,    
  PendSV_IRQn             = -2,    
  SysTick_IRQn            = -1,    

 
  CAN1_IRQn               =  0,    
  CAN2_IRQn               =  1,    
  USB_IRQn                =  2,    
  DMA_IRQn                =  5,    
  UART1_IRQn              =  6,    
  UART2_IRQn              =  7,    
  SSP1_IRQn               =  8,    
  I2C_IRQn                =  10,   
  POWER_IRQn              =  11,   
  WWDG_IRQn               =  12,   
  Timer1_IRQn             =  14,   
  Timer2_IRQn             =  15,   
  Timer3_IRQn             =  16,   
  ADC_IRQn                =  17,   
  COMPARATOR_IRQn         =  19,   
  SSP2_IRQn               =  20,   
  BACKUP_IRQn             =  27,   
  EXT_INT1_IRQn           =  28,   
  EXT_INT2_IRQn           =  29,   
  EXT_INT4_IRQn           =  31    
} IRQn_Type;



 

 





   

 
#line 1 ".\\RTE\\Device\\MDR32F9Q2I\\MDR32FxQI_config.h"

















 

















 




 
#line 313 ".\\RTE\\Device\\MDR32F9Q2I\\MDR32FxQI_config.h"



 

#line 79 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"
#line 1 "C:\\Programs\\Keil v537\\Packs\\ARM\\CMSIS\\5.9.0\\CMSIS\\Core\\Include\\core_cm3.h"
 




 
















 










#line 35 "C:\\Programs\\Keil v537\\Packs\\ARM\\CMSIS\\5.9.0\\CMSIS\\Core\\Include\\core_cm3.h"

















 




 



 

#line 1 "C:\\Programs\\Keil v537\\Packs\\ARM\\CMSIS\\5.9.0\\CMSIS\\Core\\Include\\cmsis_version.h"
 




 
















 










 
#line 64 "C:\\Programs\\Keil v537\\Packs\\ARM\\CMSIS\\5.9.0\\CMSIS\\Core\\Include\\core_cm3.h"

 









 







#line 114 "C:\\Programs\\Keil v537\\Packs\\ARM\\CMSIS\\5.9.0\\CMSIS\\Core\\Include\\core_cm3.h"

#line 1 "C:\\Programs\\Keil v537\\Packs\\ARM\\CMSIS\\5.9.0\\CMSIS\\Core\\Include\\cmsis_compiler.h"
 




 
















 




#line 29 "C:\\Programs\\Keil v537\\Packs\\ARM\\CMSIS\\5.9.0\\CMSIS\\Core\\Include\\cmsis_compiler.h"



 
#line 1 "C:\\Programs\\Keil v537\\Packs\\ARM\\CMSIS\\5.9.0\\CMSIS\\Core\\Include\\cmsis_armcc.h"
 




 
















 









 













   
   
   

 




 
#line 111 "C:\\Programs\\Keil v537\\Packs\\ARM\\CMSIS\\5.9.0\\CMSIS\\Core\\Include\\cmsis_armcc.h"

 





















 



 




 






 







 






 








 






 






 








 








 

__attribute__((section(".rev16_text"))) static __inline __asm uint32_t __REV16(uint32_t value)
{
  rev16 r0, r0
  bx lr
}








 

__attribute__((section(".revsh_text"))) static __inline __asm int16_t __REVSH(int16_t value)
{
  revsh r0, r0
  bx lr
}









 









 








 
#line 277 "C:\\Programs\\Keil v537\\Packs\\ARM\\CMSIS\\5.9.0\\CMSIS\\Core\\Include\\cmsis_armcc.h"







 











 












 












 














 














 














 










 









 









 









 

__attribute__((section(".rrx_text"))) static __inline __asm uint32_t __RRX(uint32_t value)
{
  rrx r0, r0
  bx lr
}








 








 








 








 








 








 


#line 525 "C:\\Programs\\Keil v537\\Packs\\ARM\\CMSIS\\5.9.0\\CMSIS\\Core\\Include\\cmsis_armcc.h"

   


 



 





 
 






 
 





 
static __inline uint32_t __get_CONTROL(void)
{
  register uint32_t __regControl         __asm("control");
  return(__regControl);
}






 
static __inline void __set_CONTROL(uint32_t control)
{
  register uint32_t __regControl         __asm("control");
  __regControl = control;
  __isb(0xF);
}






 
static __inline uint32_t __get_IPSR(void)
{
  register uint32_t __regIPSR          __asm("ipsr");
  return(__regIPSR);
}






 
static __inline uint32_t __get_APSR(void)
{
  register uint32_t __regAPSR          __asm("apsr");
  return(__regAPSR);
}






 
static __inline uint32_t __get_xPSR(void)
{
  register uint32_t __regXPSR          __asm("xpsr");
  return(__regXPSR);
}






 
static __inline uint32_t __get_PSP(void)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  return(__regProcessStackPointer);
}






 
static __inline void __set_PSP(uint32_t topOfProcStack)
{
  register uint32_t __regProcessStackPointer  __asm("psp");
  __regProcessStackPointer = topOfProcStack;
}






 
static __inline uint32_t __get_MSP(void)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  return(__regMainStackPointer);
}






 
static __inline void __set_MSP(uint32_t topOfMainStack)
{
  register uint32_t __regMainStackPointer     __asm("msp");
  __regMainStackPointer = topOfMainStack;
}






 
static __inline uint32_t __get_PRIMASK(void)
{
  register uint32_t __regPriMask         __asm("primask");
  return(__regPriMask);
}






 
static __inline void __set_PRIMASK(uint32_t priMask)
{
  register uint32_t __regPriMask         __asm("primask");
  __regPriMask = (priMask);
}









 







 







 
static __inline uint32_t  __get_BASEPRI(void)
{
  register uint32_t __regBasePri         __asm("basepri");
  return(__regBasePri);
}






 
static __inline void __set_BASEPRI(uint32_t basePri)
{
  register uint32_t __regBasePri         __asm("basepri");
  __regBasePri = (basePri & 0xFFU);
}







 
static __inline void __set_BASEPRI_MAX(uint32_t basePri)
{
  register uint32_t __regBasePriMax      __asm("basepri_max");
  __regBasePriMax = (basePri & 0xFFU);
}






 
static __inline uint32_t __get_FAULTMASK(void)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  return(__regFaultMask);
}






 
static __inline void __set_FAULTMASK(uint32_t faultMask)
{
  register uint32_t __regFaultMask       __asm("faultmask");
  __regFaultMask = (faultMask & (uint32_t)1U);
}









 
static __inline uint32_t __get_FPSCR(void)
{





   return(0U);

}






 
static __inline void __set_FPSCR(uint32_t fpscr)
{





  (void)fpscr;

}


 


 



 

#line 885 "C:\\Programs\\Keil v537\\Packs\\ARM\\CMSIS\\5.9.0\\CMSIS\\Core\\Include\\cmsis_armcc.h"
 


#line 35 "C:\\Programs\\Keil v537\\Packs\\ARM\\CMSIS\\5.9.0\\CMSIS\\Core\\Include\\cmsis_compiler.h"




 
#line 280 "C:\\Programs\\Keil v537\\Packs\\ARM\\CMSIS\\5.9.0\\CMSIS\\Core\\Include\\cmsis_compiler.h"




#line 116 "C:\\Programs\\Keil v537\\Packs\\ARM\\CMSIS\\5.9.0\\CMSIS\\Core\\Include\\core_cm3.h"

















 
#line 160 "C:\\Programs\\Keil v537\\Packs\\ARM\\CMSIS\\5.9.0\\CMSIS\\Core\\Include\\core_cm3.h"

 






 
#line 176 "C:\\Programs\\Keil v537\\Packs\\ARM\\CMSIS\\5.9.0\\CMSIS\\Core\\Include\\core_cm3.h"

 




 












 



 






 



 
typedef union
{
  struct
  {
    uint32_t _reserved0:27;               
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} APSR_Type;

 


















 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:23;               
  } b;                                    
  uint32_t w;                             
} IPSR_Type;

 






 
typedef union
{
  struct
  {
    uint32_t ISR:9;                       
    uint32_t _reserved0:1;                
    uint32_t ICI_IT_1:6;                  
    uint32_t _reserved1:8;                
    uint32_t T:1;                         
    uint32_t ICI_IT_2:2;                  
    uint32_t Q:1;                         
    uint32_t V:1;                         
    uint32_t C:1;                         
    uint32_t Z:1;                         
    uint32_t N:1;                         
  } b;                                    
  uint32_t w;                             
} xPSR_Type;

 






























 
typedef union
{
  struct
  {
    uint32_t nPRIV:1;                     
    uint32_t SPSEL:1;                     
    uint32_t _reserved1:30;               
  } b;                                    
  uint32_t w;                             
} CONTROL_Type;

 






 







 



 
typedef struct
{
  volatile uint32_t ISER[8U];                
        uint32_t RESERVED0[24U];
  volatile uint32_t ICER[8U];                
        uint32_t RESERVED1[24U];
  volatile uint32_t ISPR[8U];                
        uint32_t RESERVED2[24U];
  volatile uint32_t ICPR[8U];                
        uint32_t RESERVED3[24U];
  volatile uint32_t IABR[8U];                
        uint32_t RESERVED4[56U];
  volatile uint8_t  IP[240U];                
        uint32_t RESERVED5[644U];
  volatile  uint32_t STIR;                    
}  NVIC_Type;

 



 







 



 
typedef struct
{
  volatile const  uint32_t CPUID;                   
  volatile uint32_t ICSR;                    
  volatile uint32_t VTOR;                    
  volatile uint32_t AIRCR;                   
  volatile uint32_t SCR;                     
  volatile uint32_t CCR;                     
  volatile uint8_t  SHP[12U];                
  volatile uint32_t SHCSR;                   
  volatile uint32_t CFSR;                    
  volatile uint32_t HFSR;                    
  volatile uint32_t DFSR;                    
  volatile uint32_t MMFAR;                   
  volatile uint32_t BFAR;                    
  volatile uint32_t AFSR;                    
  volatile const  uint32_t PFR[2U];                 
  volatile const  uint32_t DFR;                     
  volatile const  uint32_t ADR;                     
  volatile const  uint32_t MMFR[4U];                
  volatile const  uint32_t ISAR[5U];                
        uint32_t RESERVED0[5U];
  volatile uint32_t CPACR;                   
} SCB_Type;

 















 






























 




#line 462 "C:\\Programs\\Keil v537\\Packs\\ARM\\CMSIS\\5.9.0\\CMSIS\\Core\\Include\\core_cm3.h"

 





















 









 


















 










































 









 















 


















 


















 









 















 







 



 
typedef struct
{
        uint32_t RESERVED0[1U];
  volatile const  uint32_t ICTR;                    



        uint32_t RESERVED1[1U];

} SCnSCB_Type;

 



 
#line 692 "C:\\Programs\\Keil v537\\Packs\\ARM\\CMSIS\\5.9.0\\CMSIS\\Core\\Include\\core_cm3.h"

 







 



 
typedef struct
{
  volatile uint32_t CTRL;                    
  volatile uint32_t LOAD;                    
  volatile uint32_t VAL;                     
  volatile const  uint32_t CALIB;                   
} SysTick_Type;

 












 



 



 









 







 



 
typedef struct
{
  volatile  union
  {
    volatile  uint8_t    u8;                  
    volatile  uint16_t   u16;                 
    volatile  uint32_t   u32;                 
  }  PORT [32U];                          
        uint32_t RESERVED0[864U];
  volatile uint32_t TER;                     
        uint32_t RESERVED1[15U];
  volatile uint32_t TPR;                     
        uint32_t RESERVED2[15U];
  volatile uint32_t TCR;                     
        uint32_t RESERVED3[32U];
        uint32_t RESERVED4[43U];
  volatile  uint32_t LAR;                     
  volatile const  uint32_t LSR;                     
        uint32_t RESERVED5[6U];
  volatile const  uint32_t PID4;                    
  volatile const  uint32_t PID5;                    
  volatile const  uint32_t PID6;                    
  volatile const  uint32_t PID7;                    
  volatile const  uint32_t PID0;                    
  volatile const  uint32_t PID1;                    
  volatile const  uint32_t PID2;                    
  volatile const  uint32_t PID3;                    
  volatile const  uint32_t CID0;                    
  volatile const  uint32_t CID1;                    
  volatile const  uint32_t CID2;                    
  volatile const  uint32_t CID3;                    
} ITM_Type;

 



 



























 









   







 



 
typedef struct
{
  volatile uint32_t CTRL;                    
  volatile uint32_t CYCCNT;                  
  volatile uint32_t CPICNT;                  
  volatile uint32_t EXCCNT;                  
  volatile uint32_t SLEEPCNT;                
  volatile uint32_t LSUCNT;                  
  volatile uint32_t FOLDCNT;                 
  volatile const  uint32_t PCSR;                    
  volatile uint32_t COMP0;                   
  volatile uint32_t MASK0;                   
  volatile uint32_t FUNCTION0;               
        uint32_t RESERVED0[1U];
  volatile uint32_t COMP1;                   
  volatile uint32_t MASK1;                   
  volatile uint32_t FUNCTION1;               
        uint32_t RESERVED1[1U];
  volatile uint32_t COMP2;                   
  volatile uint32_t MASK2;                   
  volatile uint32_t FUNCTION2;               
        uint32_t RESERVED2[1U];
  volatile uint32_t COMP3;                   
  volatile uint32_t MASK3;                   
  volatile uint32_t FUNCTION3;               
} DWT_Type;

 






















































 



 



 



 



 



 



 



























   







 



 
typedef struct
{
  volatile const  uint32_t SSPSR;                   
  volatile uint32_t CSPSR;                   
        uint32_t RESERVED0[2U];
  volatile uint32_t ACPR;                    
        uint32_t RESERVED1[55U];
  volatile uint32_t SPPR;                    
        uint32_t RESERVED2[131U];
  volatile const  uint32_t FFSR;                    
  volatile uint32_t FFCR;                    
  volatile const  uint32_t FSCR;                    
        uint32_t RESERVED3[759U];
  volatile const  uint32_t TRIGGER;                 
  volatile const  uint32_t FIFO0;                   
  volatile const  uint32_t ITATBCTR2;               
        uint32_t RESERVED4[1U];
  volatile const  uint32_t ITATBCTR0;               
  volatile const  uint32_t FIFO1;                   
  volatile uint32_t ITCTRL;                  
        uint32_t RESERVED5[39U];
  volatile uint32_t CLAIMSET;                
  volatile uint32_t CLAIMCLR;                
        uint32_t RESERVED7[8U];
  volatile const  uint32_t DEVID;                   
  volatile const  uint32_t DEVTYPE;                 
} TPI_Type;

 



 



 












 






 



 





















 






 





















 






 



 


















 






   








 



 
typedef struct
{
  volatile const  uint32_t TYPE;                    
  volatile uint32_t CTRL;                    
  volatile uint32_t RNR;                     
  volatile uint32_t RBAR;                    
  volatile uint32_t RASR;                    
  volatile uint32_t RBAR_A1;                 
  volatile uint32_t RASR_A1;                 
  volatile uint32_t RBAR_A2;                 
  volatile uint32_t RASR_A2;                 
  volatile uint32_t RBAR_A3;                 
  volatile uint32_t RASR_A3;                 
} MPU_Type;



 









 









 



 









 






























 








 



 
typedef struct
{
  volatile uint32_t DHCSR;                   
  volatile  uint32_t DCRSR;                   
  volatile uint32_t DCRDR;                   
  volatile uint32_t DEMCR;                   
} CoreDebug_Type;

 




































 






 







































 







 






 







 


 







 

 
#line 1388 "C:\\Programs\\Keil v537\\Packs\\ARM\\CMSIS\\5.9.0\\CMSIS\\Core\\Include\\core_cm3.h"

#line 1397 "C:\\Programs\\Keil v537\\Packs\\ARM\\CMSIS\\5.9.0\\CMSIS\\Core\\Include\\core_cm3.h"






 










 


 



 





 

#line 1448 "C:\\Programs\\Keil v537\\Packs\\ARM\\CMSIS\\5.9.0\\CMSIS\\Core\\Include\\core_cm3.h"

#line 1458 "C:\\Programs\\Keil v537\\Packs\\ARM\\CMSIS\\5.9.0\\CMSIS\\Core\\Include\\core_cm3.h"




 













 
static __inline void __NVIC_SetPriorityGrouping(uint32_t PriorityGroup)
{
  uint32_t reg_value;
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);              

  reg_value  =  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR;                                                    
  reg_value &= ~((uint32_t)((0xFFFFUL << 16U) | (7UL << 8U)));  
  reg_value  =  (reg_value                                   |
                ((uint32_t)0x5FAUL << 16U) |
                (PriorityGroupTmp << 8U)  );               
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR =  reg_value;
}






 
static __inline uint32_t __NVIC_GetPriorityGrouping(void)
{
  return ((uint32_t)((((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) >> 8U));
}







 
static __inline void __NVIC_EnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    __memory_changed();
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    __memory_changed();
  }
}









 
static __inline uint32_t __NVIC_GetEnableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISER[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}







 
static __inline void __NVIC_DisableIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    __dsb(0xF);
    __isb(0xF);
  }
}









 
static __inline uint32_t __NVIC_GetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}







 
static __inline void __NVIC_SetPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ISPR[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}







 
static __inline void __NVIC_ClearPendingIRQ(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->ICPR[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
  }
}









 
static __inline uint32_t __NVIC_GetActive(IRQn_Type IRQn)
{
  if ((int32_t)(IRQn) >= 0)
  {
    return((uint32_t)(((((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IABR[(((uint32_t)IRQn) >> 5UL)] & (1UL << (((uint32_t)IRQn) & 0x1FUL))) != 0UL) ? 1UL : 0UL));
  }
  else
  {
    return(0U);
  }
}










 
static __inline void __NVIC_SetPriority(IRQn_Type IRQn, uint32_t priority)
{
  if ((int32_t)(IRQn) >= 0)
  {
    ((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - 3)) & (uint32_t)0xFFUL);
  }
  else
  {
    ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - 3)) & (uint32_t)0xFFUL);
  }
}










 
static __inline uint32_t __NVIC_GetPriority(IRQn_Type IRQn)
{

  if ((int32_t)(IRQn) >= 0)
  {
    return(((uint32_t)((NVIC_Type *) ((0xE000E000UL) + 0x0100UL) )->IP[((uint32_t)IRQn)]               >> (8U - 3)));
  }
  else
  {
    return(((uint32_t)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] >> (8U - 3)));
  }
}












 
static __inline uint32_t NVIC_EncodePriority (uint32_t PriorityGroup, uint32_t PreemptPriority, uint32_t SubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);    
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(3)) ? (uint32_t)(3) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(3)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(3));

  return (
           ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
           ((SubPriority     & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL)))
         );
}












 
static __inline void NVIC_DecodePriority (uint32_t Priority, uint32_t PriorityGroup, uint32_t* const pPreemptPriority, uint32_t* const pSubPriority)
{
  uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);    
  uint32_t PreemptPriorityBits;
  uint32_t SubPriorityBits;

  PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(3)) ? (uint32_t)(3) : (uint32_t)(7UL - PriorityGroupTmp);
  SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(3)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(3));

  *pPreemptPriority = (Priority >> SubPriorityBits) & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL);
  *pSubPriority     = (Priority                   ) & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL);
}










 
static __inline void __NVIC_SetVector(IRQn_Type IRQn, uint32_t vector)
{
  uint32_t *vectors = (uint32_t *)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;
  vectors[(int32_t)IRQn + 16] = vector;
   
}









 
static __inline uint32_t __NVIC_GetVector(IRQn_Type IRQn)
{
  uint32_t *vectors = (uint32_t *)((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->VTOR;
  return vectors[(int32_t)IRQn + 16];
}





 
__declspec(noreturn) static __inline void __NVIC_SystemReset(void)
{
  __dsb(0xF);                                                          
 
  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR  = (uint32_t)((0x5FAUL << 16U)    |
                           (((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->AIRCR & (7UL << 8U)) |
                            (1UL << 2U)    );          
  __dsb(0xF);                                                           

  for(;;)                                                            
  {
    __nop();
  }
}

 


 



#line 1 "C:\\Programs\\Keil v537\\Packs\\ARM\\CMSIS\\5.9.0\\CMSIS\\Core\\Include\\mpu_armv7.h"





 
















 
 





 



#line 62 "C:\\Programs\\Keil v537\\Packs\\ARM\\CMSIS\\5.9.0\\CMSIS\\Core\\Include\\mpu_armv7.h"

#line 69 "C:\\Programs\\Keil v537\\Packs\\ARM\\CMSIS\\5.9.0\\CMSIS\\Core\\Include\\mpu_armv7.h"





 












   














 
#line 110 "C:\\Programs\\Keil v537\\Packs\\ARM\\CMSIS\\5.9.0\\CMSIS\\Core\\Include\\mpu_armv7.h"












                          









  










  












  




 




 




 




 





 
typedef struct {
  uint32_t RBAR; 
  uint32_t RASR; 
} ARM_MPU_Region_t;
    


 
static __inline void ARM_MPU_Enable(uint32_t MPU_Control)
{
  __dmb(0xF);
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->CTRL = MPU_Control | (1UL );

  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHCSR |= (1UL << 16U);

  __dsb(0xF);
  __isb(0xF);
}


 
static __inline void ARM_MPU_Disable(void)
{
  __dmb(0xF);

  ((SCB_Type *) ((0xE000E000UL) + 0x0D00UL) )->SHCSR &= ~(1UL << 16U);

  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->CTRL  &= ~(1UL );
  __dsb(0xF);
  __isb(0xF);
}



 
static __inline void ARM_MPU_ClrRegion(uint32_t rnr)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RNR = rnr;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RASR = 0U;
}




    
static __inline void ARM_MPU_SetRegion(uint32_t rbar, uint32_t rasr)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR = rbar;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RASR = rasr;
}





    
static __inline void ARM_MPU_SetRegionEx(uint32_t rnr, uint32_t rbar, uint32_t rasr)
{
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RNR = rnr;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR = rbar;
  ((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RASR = rasr;
}





 
static __inline void ARM_MPU_OrderedMemcpy(volatile uint32_t* dst, const uint32_t* __restrict src, uint32_t len)
{
  uint32_t i;
  for (i = 0U; i < len; ++i) 
  {
    dst[i] = src[i];
  }
}




 
static __inline void ARM_MPU_Load(ARM_MPU_Region_t const* table, uint32_t cnt) 
{
  const uint32_t rowWordSize = sizeof(ARM_MPU_Region_t)/4U;
  while (cnt > 4U) {
    ARM_MPU_OrderedMemcpy(&(((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR), &(table->RBAR), 4U*rowWordSize);
    table += 4U;
    cnt -= 4U;
  }
  ARM_MPU_OrderedMemcpy(&(((MPU_Type *) ((0xE000E000UL) + 0x0D90UL) )->RBAR), &(table->RBAR), cnt*rowWordSize);
}

#line 1785 "C:\\Programs\\Keil v537\\Packs\\ARM\\CMSIS\\5.9.0\\CMSIS\\Core\\Include\\core_cm3.h"




 





 








 
static __inline uint32_t SCB_GetFPUType(void)
{
    return 0U;            
}


 



 





 













 
static __inline uint32_t SysTick_Config(uint32_t ticks)
{
  if ((ticks - 1UL) > (0xFFFFFFUL ))
  {
    return (1UL);                                                    
  }

  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->LOAD  = (uint32_t)(ticks - 1UL);                          
  __NVIC_SetPriority (SysTick_IRQn, (1UL << 3) - 1UL);  
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->VAL   = 0UL;                                              
  ((SysTick_Type *) ((0xE000E000UL) + 0x0010UL) )->CTRL  = (1UL << 2U) |
                   (1UL << 1U)   |
                   (1UL );                          
  return (0UL);                                                      
}



 



 





 

extern volatile int32_t ITM_RxBuffer;                               










 
static __inline uint32_t ITM_SendChar (uint32_t ch)
{
  if (((((ITM_Type *) (0xE0000000UL) )->TCR & (1UL )) != 0UL) &&       
      ((((ITM_Type *) (0xE0000000UL) )->TER & 1UL               ) != 0UL)   )      
  {
    while (((ITM_Type *) (0xE0000000UL) )->PORT[0U].u32 == 0UL)
    {
      __nop();
    }
    ((ITM_Type *) (0xE0000000UL) )->PORT[0U].u8 = (uint8_t)ch;
  }
  return (ch);
}







 
static __inline int32_t ITM_ReceiveChar (void)
{
  int32_t ch = -1;                            

  if (ITM_RxBuffer != ((int32_t)0x5AA55AA5U))
  {
    ch = ITM_RxBuffer;
    ITM_RxBuffer = ((int32_t)0x5AA55AA5U);        
  }

  return (ch);
}







 
static __inline int32_t ITM_CheckChar (void)
{

  if (ITM_RxBuffer == ((int32_t)0x5AA55AA5U))
  {
    return (0);                               
  }
  else
  {
    return (1);                               
  }
}

 










#line 80 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"
#line 1 ".\\RTE\\Device\\MDR32F9Q2I\\system_MDR32F9Q2I.h"


 



 



 



 

 







#line 26 ".\\RTE\\Device\\MDR32F9Q2I\\system_MDR32F9Q2I.h"



 

extern uint32_t SystemCoreClock;     

   



 

extern void SystemInit(void);
extern void SystemCoreClockUpdate(void);

   







   

   

   



 

#line 81 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"



 

typedef enum {RESET = 0, SET = !RESET} FlagStatus, ITStatus, BitStatus;



typedef enum {DISABLE = 0, ENABLE = !DISABLE} FunctionalState;


typedef enum {ERROR = 0, SUCCESS = !ERROR} ErrorStatus;

   



 



 



 

 
typedef struct
{
  volatile uint32_t ID;
  volatile uint32_t DLC;
  volatile uint32_t DATAL;
  volatile uint32_t DATAH;
}MDR_CAN_BUF_TypeDef;

 
typedef struct
{
  volatile uint32_t MASK;
  volatile uint32_t FILTER;
}MDR_CAN_BUF_FILTER_TypeDef;

 
typedef struct
{
  volatile uint32_t CONTROL;
  volatile uint32_t STATUS;
  volatile uint32_t BITTMNG;
       uint32_t RESERVED0;
  volatile uint32_t INT_EN;
       uint32_t RESERVED1[2];
  volatile uint32_t OVER;
  volatile uint32_t RXID;
  volatile uint32_t RXDLC;
  volatile uint32_t RXDATAL;
  volatile uint32_t RXDATAH;
  volatile uint32_t TXID;
  volatile uint32_t TXDLC;
  volatile uint32_t DATAL;
  volatile uint32_t DATAH;
  volatile uint32_t BUF_CON[32];
  volatile uint32_t INT_RX;
  volatile uint32_t RX;
  volatile uint32_t INT_TX;
  volatile uint32_t TX;
       uint32_t RESERVED2[76];
    MDR_CAN_BUF_TypeDef CAN_BUF[32];
       uint32_t RESERVED3[64];
    MDR_CAN_BUF_FILTER_TypeDef CAN_BUF_FILTER[32];
}MDR_CAN_TypeDef;

   



 



  

 
 






 






   



  

 
 
#line 201 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 217 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   



  

 
 
#line 232 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 240 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   



  

 
 






 






   



  

 
 
 
 



 



   



  

 
 
 
 
#line 295 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 303 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   



  

 
 
 
 





 





   



  

 
 
 
 





 





   



  

 
 
#line 362 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 372 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   

   

   



 



 

 
typedef struct
{
  volatile uint32_t CTRL;
  volatile uint32_t STS;
  volatile uint32_t TS;
  volatile uint32_t NTS;
}MDR_USB_SEP_TypeDef;

 
typedef struct
{
  volatile uint32_t RXFD;
       uint32_t RESERVED0;
  volatile uint32_t RXFDC_L;
  volatile uint32_t RXFDC_H;
  volatile uint32_t RXFC;
       uint32_t RESERVED1[11];
  volatile uint32_t TXFD;
       uint32_t RESERVED2[3];
  volatile uint32_t TXFDC;
       uint32_t RESERVED3[11];
}MDR_USB_SEP_FIFO_TypeDef;

 
typedef struct
{
  volatile uint32_t HTXC;
  volatile uint32_t HTXT;
  volatile uint32_t HTXLC;
  volatile uint32_t HTXSE;
  volatile uint32_t HTXA;
  volatile uint32_t HTXE;
  volatile uint32_t HFN_L;
  volatile uint32_t HFN_H;
  volatile uint32_t HIS;
  volatile uint32_t HIM;
  volatile uint32_t HRXS;
  volatile uint32_t HRXP;
  volatile uint32_t HRXA;
  volatile uint32_t HRXE;
  volatile uint32_t HRXCS;
  volatile uint32_t HSTM;
       uint32_t RESERVED0[16];
  volatile uint32_t HRXFD;
       uint32_t RESERVED1;
  volatile uint32_t HRXFDC_L;
  volatile uint32_t HRXFDC_H;
  volatile uint32_t HRXFC;
       uint32_t RESERVED2[11];
  volatile uint32_t HTXFD;
       uint32_t RESERVED3[3];
  volatile uint32_t HTXFC;
       uint32_t RESERVED4[11];
    MDR_USB_SEP_TypeDef USB_SEP[4];
  volatile uint32_t SC;
  volatile uint32_t SLS;
  volatile uint32_t SIS;
  volatile uint32_t SIM;
  volatile uint32_t SA;
  volatile uint32_t SFN_L;
  volatile uint32_t SFN_H;
       uint32_t RESERVED5[9];
    MDR_USB_SEP_FIFO_TypeDef USB_SEP_FIFO[4];
  volatile uint32_t HSCR;
  volatile uint32_t HSVR;
}MDR_USB_TypeDef;

   



 



  

 
 





 





   



  

 
 





 





   



  

 
 





 





   



  

 
 





 





   



  

 
 
#line 551 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 561 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   



  

 
 






 






   



  

 
 
#line 599 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 609 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   



  

 
 






 






   



  

 
 






 






   



  

 
 






 






   



  

 
 
#line 689 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 699 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   



  

 
 



 



   

   

   



 



 

 
typedef struct
{
  volatile uint32_t CMD;
  volatile uint32_t ADR;
  volatile uint32_t DI;
  volatile uint32_t DO;
  volatile uint32_t KEY;
}MDR_EEPROM_TypeDef;

   



 



  

 
 
#line 761 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 773 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   

   

   



 



 

 
typedef struct
{
  volatile uint32_t CLOCK_STATUS;
  volatile uint32_t PLL_CONTROL;
  volatile uint32_t HS_CONTROL;
  volatile uint32_t CPU_CLOCK;
  volatile uint32_t USB_CLOCK;
  volatile uint32_t ADC_MCO_CLOCK;
  volatile uint32_t RTC_CLOCK;
  volatile uint32_t PER_CLOCK;
  volatile uint32_t CAN_CLOCK;
  volatile uint32_t TIM_CLOCK;
  volatile uint32_t UART_CLOCK;
  volatile uint32_t SSP_CLOCK;
}MDR_RST_CLK_TypeDef;

   



 



  

 
 




 




   



  

 
 
#line 840 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 848 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   



  

 
 



 



   



  

 
 





 





   



  

 
 





 





   



  

 
 





 





   



  

 
 





 





   



  

 
 





 





   



  

 
 
#line 973 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 981 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   



  

 
 





 





   



  

 
 





 





   

   

   



 



 

 
typedef struct
{
  volatile uint32_t STATUS;
  volatile uint32_t CFG;
  volatile uint32_t CTRL_BASE_PTR;
  volatile uint32_t ALT_CTRL_BASE_PTR;
  volatile uint32_t WAITONREQ_STATUS;
  volatile uint32_t CHNL_SW_REQUEST;
  volatile uint32_t CHNL_USEBURST_SET;
  volatile uint32_t CHNL_USEBURST_CLR;
  volatile uint32_t CHNL_REQ_MASK_SET;
  volatile uint32_t CHNL_REQ_MASK_CLR;
  volatile uint32_t CHNL_ENABLE_SET;
  volatile uint32_t CHNL_ENABLE_CLR;
  volatile uint32_t CHNL_PRI_ALT_SET;
  volatile uint32_t CHNL_PRI_ALT_CLR;
  volatile uint32_t CHNL_PRIORITY_SET;
  volatile uint32_t CHNL_PRIORITY_CLR;
       uint32_t RESERVED0[3];
  volatile uint32_t ERR_CLR;
}MDR_DMA_TypeDef;

   



 



  

 
 





 





   



  

 
 



 



   

   

   



 



 

 
typedef struct
{
  volatile uint32_t DR;
  volatile uint32_t RSR_ECR;
       uint32_t RESERVED0[4];
  volatile uint32_t FR;
       uint32_t RESERVED1;
  volatile uint32_t ILPR;
  volatile uint32_t IBRD;
  volatile uint32_t FBRD;
  volatile uint32_t LCR_H;
  volatile uint32_t CR;
  volatile uint32_t IFLS;
  volatile uint32_t IMSC;
  volatile uint32_t RIS;
  volatile uint32_t MIS;
  volatile uint32_t ICR;
  volatile uint32_t DMACR;
}MDR_UART_TypeDef;

   



 



  

 
 






 






   



  

 
 





 





   



  

 
 
#line 1191 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 1202 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   



  

 
 
#line 1218 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 1227 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   



  

 
 
#line 1248 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 1262 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   



  

 
 



 



   



  

 
 
#line 1297 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 1310 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   



  

 
 
#line 1330 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 1343 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   



  

 
 
#line 1363 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 1376 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   



  

 
 
#line 1396 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 1409 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   



  

 
 




 




   

   

   



 



 

 
typedef struct
{
  volatile uint32_t CR0;
  volatile uint32_t CR1;
  volatile uint32_t DR;
  volatile uint32_t SR;
  volatile uint32_t CPSR;
  volatile uint32_t IMSC;
  volatile uint32_t RIS;
  volatile uint32_t MIS;
  volatile uint32_t ICR;
  volatile uint32_t DMACR;
}MDR_SSP_TypeDef;

   



 



  

 
 






 






   



  

 
 





 





   



  

 
 






 






   



  

 
 





 





   



  

 
 





 





   



  

 
 





 





   



  

 
 



 



   



  

 
 



 



   

   

   



 



 

 
typedef struct
{
  volatile uint32_t PRL;
  volatile uint32_t PRH;
  volatile uint32_t CTR;
  volatile uint32_t RXD;
  volatile uint32_t STA;
  volatile uint32_t TXD;
  volatile uint32_t CMD;
}MDR_I2C_TypeDef;

   



 



  

 
 




 




   



  

 
 






 






   



  

 
 
#line 1690 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 1698 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   

   

   



 



 

 
typedef struct
{
  volatile uint32_t PVDCS;
}MDR_POWER_TypeDef;

   



 



  

 
 
#line 1740 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 1751 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   

   

   



 



 

 
typedef struct
{
  volatile uint32_t CR;
  volatile uint32_t CFR;
  volatile uint32_t SR;
}MDR_WWDG_TypeDef;

   



 



  

 
 



 



   



  

 
 




 




   

   

   



 



 

 
typedef struct
{
  volatile uint32_t KR;
  volatile uint32_t PR;
  volatile uint32_t RLR;
  volatile uint32_t SR;
}MDR_IWDG_TypeDef;

   



 



  

 
 



 



   

   

   



 



 

 
typedef struct
{
  volatile uint32_t CNT;
  volatile uint32_t PSG;
  volatile uint32_t ARR;
  volatile uint32_t CNTRL;
  volatile uint32_t CCR1;
  volatile uint32_t CCR2;
  volatile uint32_t CCR3;
  volatile uint32_t CCR4;
  volatile uint32_t CH1_CNTRL;
  volatile uint32_t CH2_CNTRL;
  volatile uint32_t CH3_CNTRL;
  volatile uint32_t CH4_CNTRL;
  volatile uint32_t CH1_CNTRL1;
  volatile uint32_t CH2_CNTRL1;
  volatile uint32_t CH3_CNTRL1;
  volatile uint32_t CH4_CNTRL1;
  volatile uint32_t CH1_DTG;
  volatile uint32_t CH2_DTG;
  volatile uint32_t CH3_DTG;
  volatile uint32_t CH4_DTG;
  volatile uint32_t BRKETR_CNTRL;
  volatile uint32_t STATUS;
  volatile uint32_t IE;
  volatile uint32_t DMA_RE;
  volatile uint32_t CH1_CNTRL2;
  volatile uint32_t CH2_CNTRL2;
  volatile uint32_t CH3_CNTRL2;
  volatile uint32_t CH4_CNTRL2;
  volatile uint32_t CCR11;
  volatile uint32_t CCR21;
  volatile uint32_t CCR31;
  volatile uint32_t CCR41;
}MDR_TIMER_TypeDef;

   



 



  

 
 
#line 1922 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 1931 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   



  

 
 
#line 1949 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 1960 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   



  

 
 
#line 1975 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 1983 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   



  

 
 




 




   



  

 
 





 





   



  

 
 
#line 2036 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 2046 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   



  

 
 
#line 2063 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 2073 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   



  

 
 
#line 2090 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 2100 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   



  

 
 




 




   

   

   



 



 

 
typedef struct
{
  volatile uint32_t ADC1_CFG;
  volatile uint32_t ADC2_CFG;
  volatile uint32_t ADC1_H_LEVEL;
  volatile uint32_t ADC2_H_LEVEL;
  volatile uint32_t ADC1_L_LEVEL;
  volatile uint32_t ADC2_L_LEVEL;
  volatile uint32_t ADC1_RESULT;
  volatile uint32_t ADC2_RESULT;
  volatile uint32_t ADC1_STATUS;
  volatile uint32_t ADC2_STATUS;
  volatile uint32_t ADC1_CHSEL;
  volatile uint32_t ADC2_CHSEL;
}MDR_ADC_TypeDef;

   



 



  

 
 
#line 2178 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 2197 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   



  

 
 
#line 2218 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 2232 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   



  

 
 
 



 



   



  

 
 
 






 






   

   

   



 



 

 
typedef struct
{
  volatile uint32_t CFG;
  volatile uint32_t DAC1_DATA;
  volatile uint32_t DAC2_DATA;
} MDR_DAC_TypeDef;

   



 



  

 
 






 






   



  

 
 



 



   



  
 
 


 


   


   

   



 



 

 
typedef struct
{
  volatile uint32_t CFG;
  volatile uint32_t RESULT;
  volatile uint32_t RESULT_LATCH;
}MDR_COMP_TypeDef;

   



 



  

 
 
#line 2390 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 2402 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   



  

 
 




 




   

   

   



 



 

 
typedef struct
{
  volatile uint32_t RXTX;
  volatile uint32_t OE;
  volatile uint32_t FUNC;
  volatile uint32_t ANALOG;
  volatile uint32_t PULL;
  volatile uint32_t PD;
  volatile uint32_t PWR;
  volatile uint32_t GFEN;
}MDR_PORT_TypeDef;

   



 



  

 
 
#line 2475 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 2493 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   



  

 
 



 



   



  

 
 



 



   



  

 
 
#line 2548 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 2566 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   

   

   



 



 

 
typedef struct
{
  volatile uint32_t REG_00;
  volatile uint32_t REG_01;
  volatile uint32_t REG_02;
  volatile uint32_t REG_03;
  volatile uint32_t REG_04;
  volatile uint32_t REG_05;
  volatile uint32_t REG_06;
  volatile uint32_t REG_07;
  volatile uint32_t REG_08;
  volatile uint32_t REG_09;
  volatile uint32_t REG_0A;
  volatile uint32_t REG_0B;
  volatile uint32_t REG_0C;
  volatile uint32_t REG_0D;
  volatile uint32_t REG_0E;
  volatile uint32_t REG_0F;
  volatile uint32_t RTC_CNT;
  volatile uint32_t RTC_DIV;
  volatile uint32_t RTC_PRL;
  volatile uint32_t RTC_ALRM;
  volatile uint32_t RTC_CS;
}MDR_BKP_TypeDef;

   



 



  

 
 
#line 2626 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 2635 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   



  

 
 
#line 2659 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 2676 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   



  

 
 
#line 2692 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 2703 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   

   

   



 



 

 
typedef struct
{
       uint32_t RESERVED0[20];
  volatile uint32_t NAND_CYCLES;
  volatile uint32_t CONTROL;
}MDR_EBC_TypeDef;

   



 



  

 
 
#line 2745 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 2754 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   



  

 
 
#line 2769 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

 
#line 2777 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   

   

   

   




 

#line 2819 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   



 

#line 2854 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\CMSIS\\MDR32FxQI\\DeviceSupport\\MDR32F9Q2I\\inc\\MDR32F9Q2I.h"

   





   

   

   





 

#line 67 ".\\RTE\\Device\\MDR32F9Q2I\\MDR32FxQI_config.h"
#line 75 ".\\RTE\\Device\\MDR32F9Q2I\\MDR32FxQI_config.h"









     

























































 
























    


#line 193 ".\\RTE\\Device\\MDR32F9Q2I\\MDR32FxQI_config.h"


















 
 



 


 
 




 


 
 







 



 



 













#line 275 ".\\RTE\\Device\\MDR32F9Q2I\\MDR32FxQI_config.h"


















 
#line 305 ".\\RTE\\Device\\MDR32F9Q2I\\MDR32FxQI_config.h"











 

#line 33 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\SPL\\MDR32FxQI\\inc\\MDR32FxQI_uart.h"



 



 



 



 
typedef enum
{
    UART_WordLength5b = ((uint16_t)0x00),
    UART_WordLength6b = ((uint16_t)0x20),
    UART_WordLength7b = ((uint16_t)0x40),
    UART_WordLength8b = ((uint16_t)0x60)
} UART_Word_Length_TypeDef;








 
typedef enum
{
    UART_StopBits1 = ((uint16_t)0x00),
    UART_StopBits2 = ((uint16_t)0x08)
} UART_Stop_Bits_TypeDef;






 
typedef enum
{
    UART_Parity_No   = ((uint16_t)0x00),
    UART_Parity_Even = ((uint16_t)0x06),
    UART_Parity_Odd  = ((uint16_t)0x02),
    UART_Parity_1    = ((uint16_t)0x82),
    UART_Parity_0    = ((uint16_t)0x86)
} UART_Parity_TypeDef;









 
typedef enum
{
    UART_FIFO_OFF = ((uint16_t)0x00),
    UART_FIFO_ON  = ((uint16_t)0x10)
} UART_FIFO_Mode_TypeDef;






 
typedef enum
{
    UART_HardwareFlowControl_None  = ((uint16_t)0x0000),
    UART_HardwareFlowControl_CTSEn = ((uint16_t)0x8000),
    UART_HardwareFlowControl_RTSEn = ((uint16_t)0x4000),
    UART_HardwareFlowControl_Out2  = ((uint16_t)0x2000),
    UART_HardwareFlowControl_Out1  = ((uint16_t)0x1000),
    UART_HardwareFlowControl_RTS   = ((uint16_t)0x0800),
    UART_HardwareFlowControl_DTR   = ((uint16_t)0x0400),
    UART_HardwareFlowControl_RXE   = ((uint16_t)0x0200),
    UART_HardwareFlowControl_TXE   = ((uint16_t)0x0100),
    UART_HardwareFlowControl_LBE   = ((uint16_t)0x0080)
} UART_Hardware_Flow_Control_TypeDef;







 
typedef enum
{
    UART_IT_OE  = ((uint32_t)0x0400),  
    UART_IT_BE  = ((uint32_t)0x0200),  
    UART_IT_PE  = ((uint32_t)0x0100),  
    UART_IT_FE  = ((uint32_t)0x0080),  
    UART_IT_RT  = ((uint32_t)0x0040),  
    UART_IT_TX  = ((uint32_t)0x0020),  
    UART_IT_RX  = ((uint32_t)0x0010),  
    UART_IT_DSR = ((uint32_t)0x0008),  
    UART_IT_DCD = ((uint32_t)0x0004),  
    UART_IT_CTS = ((uint32_t)0x0002),  
    UART_IT_RI  = ((uint32_t)0x0001)   
} UART_IT_TypeDef;

#line 149 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\SPL\\MDR32FxQI\\inc\\MDR32FxQI_uart.h"





 
typedef enum
{
    UART_IT_FIFO_LVL_2words  = ((uint32_t)0x00),  
    UART_IT_FIFO_LVL_4words  = ((uint32_t)0x01),  
    UART_IT_FIFO_LVL_8words  = ((uint32_t)0x02),  
    UART_IT_FIFO_LVL_12words = ((uint32_t)0x03),  
    UART_IT_FIFO_LVL_14words = ((uint32_t)0x04)   
} UART_IT_FIFO_TypeDef;









 
typedef enum
{
    UART_DMA_RXE   = ((uint32_t)0x01),
    UART_DMA_TXE   = ((uint32_t)0x02),
    UART_DMA_ONERR = ((uint32_t)0x04)
} UART_DMA_Req_TypeDef;









 
typedef enum
{
    UART_IrDAMode_LowPower = ((uint32_t)0x04),
    UART_IrDAMode_Normal   = ((uint32_t)0x00)
} UART_IrDA_Mode_TypeDef;






 
typedef enum
{
    UART_FLAG_RI   = ((uint32_t)0x0100),
    UART_FLAG_TXFE = ((uint32_t)0x0080),
    UART_FLAG_RXFF = ((uint32_t)0x0040),
    UART_FLAG_TXFF = ((uint32_t)0x0020),
    UART_FLAG_RXFE = ((uint32_t)0x0010),
    UART_FLAG_BUSY = ((uint32_t)0x0008),
    UART_FLAG_DCD  = ((uint32_t)0x0004),
    UART_FLAG_DSR  = ((uint32_t)0x0002),
    UART_FLAG_CTS  = ((uint32_t)0x0001)
} UART_Flags_TypeDef;









 
typedef enum
{
    UART_HCLKdiv1   = ((uint32_t)0x00),
    UART_HCLKdiv2   = ((uint32_t)0x01),
    UART_HCLKdiv4   = ((uint32_t)0x02),
    UART_HCLKdiv8   = ((uint32_t)0x03),
    UART_HCLKdiv16  = ((uint32_t)0x04),
    UART_HCLKdiv32  = ((uint32_t)0x05),
    UART_HCLKdiv64  = ((uint32_t)0x06),
    UART_HCLKdiv128 = ((uint32_t)0x07)
} UART_Clock_BRG_TypeDef;








 
typedef struct
{
    uint32_t UART_BaudRate;            


 
    uint16_t UART_WordLength;          
 
    uint16_t UART_StopBits;            
 
    uint16_t UART_Parity;              
 
    uint16_t UART_FIFOMode;            
 
    uint16_t UART_HardwareFlowControl; 
 
} UART_InitTypeDef;

   




 



 



   



 

















   

   




 

void UART_DeInit(MDR_UART_TypeDef* UARTx);

ErrorStatus UART_Init(MDR_UART_TypeDef* UARTx, UART_InitTypeDef* UART_InitStruct);

void UART_StructInit(UART_InitTypeDef* UART_InitStruct);

void UART_Cmd(MDR_UART_TypeDef* UARTx, FunctionalState NewState);

void UART_ITConfig(MDR_UART_TypeDef* UARTx, uint32_t UART_IT, FunctionalState NewState);
ITStatus UART_GetITStatus(MDR_UART_TypeDef* UARTx, UART_IT_TypeDef UART_IT);
ITStatus UART_GetITStatusMasked(MDR_UART_TypeDef* UARTx, UART_IT_TypeDef UART_IT);
void UART_ClearITPendingBit(MDR_UART_TypeDef* UARTx, uint32_t UART_IT);

void UART_DMAConfig(MDR_UART_TypeDef* UARTx, UART_IT_FIFO_TypeDef UART_IT_RB_LVL, UART_IT_FIFO_TypeDef UART_IT_TB_LVL);
void UART_DMACmd(MDR_UART_TypeDef* UARTx, uint32_t UART_DMAReq, FunctionalState NewState);

void UART_SendData(MDR_UART_TypeDef* UARTx, uint8_t Data);
uint16_t UART_ReceiveData(MDR_UART_TypeDef* UARTx);
void UART_BreakLine(MDR_UART_TypeDef* UARTx, FunctionalState NewState);

void UART_IrDAConfig(MDR_UART_TypeDef* UARTx, UART_IrDA_Mode_TypeDef UART_IrDAMode);
void UART_IrDACmd(MDR_UART_TypeDef* UARTx, FunctionalState NewState);

FlagStatus UART_GetFlagStatus(MDR_UART_TypeDef* UARTx, UART_Flags_TypeDef UART_FLAG);

void UART_BRGInit(MDR_UART_TypeDef* UARTx, UART_Clock_BRG_TypeDef UART_BRG);

   

   

   









 


#line 2 "RS485_interface.c"
#line 1 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\SPL\\MDR32FxQI\\inc\\MDR32FxQI_port.h"




















 

 







 
#line 33 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\SPL\\MDR32FxQI\\inc\\MDR32FxQI_port.h"



 



 



 



 
typedef enum
{
    PORT_OE_IN  = 0x0,
    PORT_OE_OUT = 0x1
} PORT_OE_TypeDef;





 
typedef enum
{
    PORT_MODE_ANALOG  = 0x0,
    PORT_MODE_DIGITAL = 0x1
} PORT_MODE_TypeDef;





 
typedef enum
{
    PORT_PULL_UP_OFF = 0x0,
    PORT_PULL_UP_ON  = 0x1
} PORT_PULL_UP_TypeDef;





 
typedef enum
{
    PORT_PULL_DOWN_OFF = 0x0,
    PORT_PULL_DOWN_ON  = 0x1
} PORT_PULL_DOWN_TypeDef;






 
typedef enum
{
    PORT_PD_SHM_OFF = 0x0,
    PORT_PD_SHM_ON  = 0x1
} PORT_PD_SHM_TypeDef;






 
typedef enum
{
    PORT_PD_DRIVER = 0x0,
    PORT_PD_OPEN   = 0x1
} PORT_PD_TypeDef;





 
typedef enum
{
    PORT_GFEN_OFF = 0x0,
    PORT_GFEN_ON  = 0x1
} PORT_GFEN_TypeDef;





 
typedef enum
{
    PORT_FUNC_PORT    = 0x0,
    PORT_FUNC_MAIN    = 0x1,
    PORT_FUNC_ALTER   = 0x2,
    PORT_FUNC_OVERRID = 0x3
} PORT_FUNC_TypeDef;






 
typedef enum
{
    PORT_OUTPUT_OFF    = 0x0,
    PORT_SPEED_SLOW    = 0x1,
    PORT_SPEED_FAST    = 0x2,
    PORT_SPEED_MAXFAST = 0x3
} PORT_SPEED_TypeDef;






 
typedef enum
{
    PORT_Pin_0   = 0x0001U,  
    PORT_Pin_1   = 0x0002U,  
    PORT_Pin_2   = 0x0004U,  
    PORT_Pin_3   = 0x0008U,  
    PORT_Pin_4   = 0x0010U,  
    PORT_Pin_5   = 0x0020U,  
    PORT_Pin_6   = 0x0040U,  
    PORT_Pin_7   = 0x0080U,  
    PORT_Pin_8   = 0x0100U,  
    PORT_Pin_9   = 0x0200U,  
    PORT_Pin_10  = 0x0400U,  
    PORT_Pin_11  = 0x0800U,  
    PORT_Pin_12  = 0x1000U,  
    PORT_Pin_13  = 0x2000U,  
    PORT_Pin_14  = 0x4000U,  
    PORT_Pin_15  = 0x8000U,  
    PORT_Pin_All = 0xFFFFU   
} PORT_Pin_TypeDef;




#line 196 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\SPL\\MDR32FxQI\\inc\\MDR32FxQI_port.h"



 
typedef struct
{
    uint16_t               PORT_Pin;       
 
    PORT_OE_TypeDef        PORT_OE;        
 
    PORT_PULL_UP_TypeDef   PORT_PULL_UP;   
 
    PORT_PULL_DOWN_TypeDef PORT_PULL_DOWN; 
 
    PORT_PD_SHM_TypeDef    PORT_PD_SHM;    
 
    PORT_PD_TypeDef        PORT_PD;        
 
    PORT_GFEN_TypeDef      PORT_GFEN;      
 
    PORT_FUNC_TypeDef      PORT_FUNC;      
 
    PORT_SPEED_TypeDef     PORT_SPEED;     
 
    PORT_MODE_TypeDef      PORT_MODE;      
 
} PORT_InitTypeDef;

   




 



 

#line 242 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\SPL\\MDR32FxQI\\inc\\MDR32FxQI_port.h"









   

   




 

void PORT_DeInit(MDR_PORT_TypeDef* MDR_PORTx);
void PORT_Init(MDR_PORT_TypeDef* MDR_PORTx, const PORT_InitTypeDef* PORT_InitStruct);
void PORT_StructInit(PORT_InitTypeDef* PORT_InitStruct);

uint8_t PORT_ReadInputDataBit(MDR_PORT_TypeDef* MDR_PORTx, PORT_Pin_TypeDef PORT_Pin);
uint32_t PORT_ReadInputData(MDR_PORT_TypeDef* MDR_PORTx);

void PORT_SetBits(MDR_PORT_TypeDef* MDR_PORTx, uint32_t PORT_Pin);
void PORT_ResetBits(MDR_PORT_TypeDef* MDR_PORTx, uint32_t PORT_Pin);

void PORT_WriteBit(MDR_PORT_TypeDef* MDR_PORTx, uint32_t PORT_Pin, BitStatus BitVal);
void PORT_Write(MDR_PORT_TypeDef* MDR_PORTx, uint32_t PortVal);

   

   

   









 


#line 3 "RS485_interface.c"
#line 1 "Initialization.h"
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
void Default_settings(void);	
void Settings_From_Flash(void);
void DeviceID_From_Flash(void);
float Temperature_Convert_From_Flash (unsigned int temp); 

#line 4 "RS485_interface.c"
#line 1 "Global_Var.h"
#line 1 "Defines.h"
 




 
 
 











 
 
 
#line 40 "Defines.h"

 
 
 


 
 
 
 



 





 
 
#line 69 "Defines.h"

 





 






 
 
 



 





 
 
 






















 
#line 128 "Defines.h"
 
 
 









	






#line 153 "Defines.h"


#line 173 "Defines.h"

#line 183 "Defines.h"

















																								  






















#line 236 "Defines.h"




 
 
 

#line 258 "Defines.h"


#line 272 "Defines.h"

 
 
 

#line 290 "Defines.h"















 
 
 
#line 314 "Defines.h"
	
 
 
 













	
#line 2 "Global_Var.h"
#line 1 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\SPL\\MDR32FxQI\\inc\\MDR32FxQI_adc.h"




















 

 







 
#line 33 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\SPL\\MDR32FxQI\\inc\\MDR32FxQI_adc.h"



 



 



 



 



   



 






   



 
#line 86 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\SPL\\MDR32FxQI\\inc\\MDR32FxQI_adc.h"

#line 103 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\SPL\\MDR32FxQI\\inc\\MDR32FxQI_adc.h"











   



 



   

   




 




 
typedef enum
{
    ADC_SyncMode_Independent = (((uint32_t)0x0) << 16),  
    ADC_SyncMode_Synchronous = (((uint32_t)0x1) << 16)   
} ADC_SyncMode;








 
typedef enum
{
    ADC_TEMP_SENSOR_Disable = (((uint32_t)0x0) << 17),  
    ADC_TEMP_SENSOR_Enable  = (((uint32_t)0x1) << 17)   
} ADC_Temp_Sensor;






 
typedef enum
{
    ADC_TEMP_SENSOR_AMPLIFIER_Disable = (((uint32_t)0x0) << 18),  
    ADC_TEMP_SENSOR_AMPLIFIER_Enable  = (((uint32_t)0x1) << 18)   
} ADC_Temp_Sensor_Amplifier;






 
typedef enum
{
    ADC_TEMP_SENSOR_CONVERSION_Disable = (((uint32_t)0x0) << 19),  
    ADC_TEMP_SENSOR_CONVERSION_Enable  = (((uint32_t)0x1) << 19)   
} ADC_Temp_Sensor_Conversion;






 
typedef enum
{
    ADC_VREF_CONVERSION_Disable = (((uint32_t)0x0) << 20),  
    ADC_VREF_CONVERSION_Enable  = (((uint32_t)0x1) << 20)   
} ADC_Int_VRef_Conversion;






 
typedef enum
{
    ADC_CLOCK_SOURCE_CPU = (((uint32_t)0x0) << 2),  
    ADC_CLOCK_SOURCE_ADC = (((uint32_t)0x1) << 2)   
} ADCx_Clock_Source;






 
typedef enum
{
    ADC_SAMPLING_MODE_SINGLE_CONV = (((uint32_t)0x0) << 3),  
    ADC_SAMPLING_MODE_CYCLIC_CONV = (((uint32_t)0x1) << 3)   
} ADCx_Sampling_Mode;






 
typedef enum
{
    ADC_CH_SWITCHING_Disable = (((uint32_t)0x0) << 9),  
    ADC_CH_SWITCHING_Enable  = (((uint32_t)0x1) << 9)   
} ADCx_Channel_Switching;






 
typedef enum
{
    ADC_CH_ADC0        = ((uint32_t)0x00),  
    ADC_CH_ADC1        = ((uint32_t)0x01),  
    ADC_CH_ADC2        = ((uint32_t)0x02),  
    ADC_CH_ADC3        = ((uint32_t)0x03),  
    ADC_CH_ADC4        = ((uint32_t)0x04),  
    ADC_CH_ADC5        = ((uint32_t)0x05),  
    ADC_CH_ADC6        = ((uint32_t)0x06),  
    ADC_CH_ADC7        = ((uint32_t)0x07),  
    ADC_CH_ADC8        = ((uint32_t)0x08),  
    ADC_CH_ADC9        = ((uint32_t)0x09),  
    ADC_CH_ADC10       = ((uint32_t)0x0A),  
    ADC_CH_ADC11       = ((uint32_t)0x0B),  
    ADC_CH_ADC12       = ((uint32_t)0x0C),  
    ADC_CH_ADC13       = ((uint32_t)0x0D),  
    ADC_CH_ADC14       = ((uint32_t)0x0E),  
    ADC_CH_ADC15       = ((uint32_t)0x0F),  
    ADC_CH_INT_VREF    = ((uint32_t)0x1E),  
    ADC_CH_TEMP_SENSOR = ((uint32_t)0x1F)   
} ADCx_Channel_Number;

#line 271 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\SPL\\MDR32FxQI\\inc\\MDR32FxQI_adc.h"







 
typedef enum
{
    ADC_LEVEL_CONTROL_Disable = (((uint32_t)0x0) << 10),  
    ADC_LEVEL_CONTROL_Enable  = (((uint32_t)0x1) << 10)   
} ADCx_Level_Control;









 
typedef enum
{
    ADC_VREF_SOURCE_INTERNAL = (((uint32_t)0x0) << 11),  
    ADC_VREF_SOURCE_EXTERNAL = (((uint32_t)0x1) << 11)   
} ADCx_VRef_Source;






 
typedef enum
{
    ADC_INT_VREF_SOURCE_INEXACT = ((uint32_t)0x0),  
    ADC_INT_VREF_SOURCE_EXACT   = ((uint32_t)0x1)   
} ADCx_Int_VRef_Source;






 
typedef enum
{
    ADC_CLK_div_None = (((uint32_t)0x0) << 12),  
    ADC_CLK_div_2    = (((uint32_t)0x1) << 12),  
    ADC_CLK_div_4    = (((uint32_t)0x2) << 12),  
    ADC_CLK_div_8    = (((uint32_t)0x3) << 12),  
    ADC_CLK_div_16   = (((uint32_t)0x4) << 12),  
    ADC_CLK_div_32   = (((uint32_t)0x5) << 12),  
    ADC_CLK_div_64   = (((uint32_t)0x6) << 12),  
    ADC_CLK_div_128  = (((uint32_t)0x7) << 12),  
    ADC_CLK_div_256  = (((uint32_t)0x8) << 12),  
    ADC_CLK_div_512  = (((uint32_t)0x9) << 12),  
    ADC_CLK_div_1024 = (((uint32_t)0xA) << 12),  
    ADC_CLK_div_2048 = (((uint32_t)0xB) << 12)   
} ADCx_Prescaler;

#line 346 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\SPL\\MDR32FxQI\\inc\\MDR32FxQI_adc.h"



 
typedef enum
{
    ADCx_FLAG_OVERWRITE         = (((uint32_t)0x1) << 0),
    ADCx_FLAG_OUT_OF_RANGE      = (((uint32_t)0x1) << 1),
    ADCx_FLAG_END_OF_CONVERSION = (((uint32_t)0x1) << 2)
} ADCx_Flags;







 
typedef enum
{
    ADC1_FLAG_OVERWRITE         = (ADCx_FLAG_OVERWRITE         <<  0),
    ADC1_FLAG_OUT_OF_RANGE      = (ADCx_FLAG_OUT_OF_RANGE      <<  0),
    ADC1_FLAG_END_OF_CONVERSION = (ADCx_FLAG_END_OF_CONVERSION <<  0),

    ADC2_FLAG_OVERWRITE         = (ADCx_FLAG_OVERWRITE         << 16),
    ADC2_FLAG_OUT_OF_RANGE      = (ADCx_FLAG_OUT_OF_RANGE      << 16),
    ADC2_FLAG_END_OF_CONVERSION = (ADCx_FLAG_END_OF_CONVERSION << 16)

} ADC_Flags;

#line 384 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\SPL\\MDR32FxQI\\inc\\MDR32FxQI_adc.h"









 
typedef enum
{
    ADCx_IT_OUT_OF_RANGE      = (((uint32_t)0x1) << 1),
    ADCx_IT_END_OF_CONVERSION = (((uint32_t)0x1) << 2)
} ADCx_IT_Def;






 
typedef enum
{
    ADC1_IT_OUT_OF_RANGE      = (ADCx_IT_OUT_OF_RANGE      <<  0),
    ADC1_IT_END_OF_CONVERSION = (ADCx_IT_END_OF_CONVERSION <<  0),

    ADC2_IT_OUT_OF_RANGE      = (ADCx_IT_OUT_OF_RANGE      << 16),
    ADC2_IT_END_OF_CONVERSION = (ADCx_IT_END_OF_CONVERSION << 16)

} ADC_IT_Def;

#line 422 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\SPL\\MDR32FxQI\\inc\\MDR32FxQI_adc.h"







#line 444 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\SPL\\MDR32FxQI\\inc\\MDR32FxQI_adc.h"



 
typedef struct {

    ADC_SyncMode               ADC_SynchronousMode;      
 
    uint32_t                   ADC_StartDelay;           
 

    ADC_Temp_Sensor            ADC_TempSensor;           
 
    ADC_Temp_Sensor_Amplifier  ADC_TempSensorAmplifier;  
 
    ADC_Temp_Sensor_Conversion ADC_TempSensorConversion; 
 
    ADC_Int_VRef_Conversion    ADC_IntVRefConversion;    
 
    uint32_t                   ADC_IntVRefTrimming;      

 




} ADC_InitTypeDef;



 
typedef struct
{
    ADCx_Clock_Source      ADC_ClockSource;      
 

    ADCx_Sampling_Mode     ADC_SamplingMode;     
 

    ADCx_Channel_Switching ADC_ChannelSwitching; 
 

    ADCx_Channel_Number    ADC_ChannelNumber;    
 

    uint32_t               ADC_Channels;         
 

    ADCx_Level_Control     ADC_LevelControl;     
 

    uint16_t               ADC_LowLevel;         
 

    uint16_t               ADC_HighLevel;        
 

    ADCx_VRef_Source       ADC_VRefSource;       
 

    ADCx_Int_VRef_Source   ADC_IntVRefSource;    
 

    ADCx_Prescaler         ADC_Prescaler;        
 

    uint32_t               ADC_DelayGo;          
 
} ADCx_InitTypeDef;

   




 

void ADC_DeInit(void);

void ADC_Init(const ADC_InitTypeDef* ADC_InitStruct);
void ADC_StructInit(ADC_InitTypeDef* ADC_InitStruct);

void ADC_SetTrim(uint32_t Trim);

void ADC1_Init(const ADCx_InitTypeDef* ADCx_InitStruct);
void ADCx_StructInit(ADCx_InitTypeDef* ADCx_InitStruct);

void ADC1_Cmd(FunctionalState NewState);

void ADC1_SetChannel(ADCx_Channel_Number Channel);
void ADC1_SetChannels(uint32_t ChannelMask);

void ADC1_OperationModeConfig(ADCx_Sampling_Mode SamplingMode, ADCx_Channel_Switching SwitchingMode);
void ADC1_SamplingModeConfig(ADCx_Sampling_Mode SamplingMode);
void ADC1_ChannelSwithingConfig(ADCx_Channel_Switching SwitchingMode);

void ADC1_LevelsConfig(uint32_t LowLevel, uint32_t HighLevel, ADCx_Level_Control NewState);
void ADC1_SetLowLevel(uint32_t LowLevel);
void ADC1_SetHighLevel(uint32_t HighLevel);

void ADC1_Start(void);

uint32_t ADC1_GetResult(void);

uint32_t ADC_GetStatus(void);
uint32_t ADC1_GetStatus(void);

FlagStatus ADC_GetFlagStatus(ADC_Flags Flag);
FlagStatus ADC1_GetFlagStatus(ADCx_Flags Flag);

void ADC1_ClearOverwriteFlag(void);
void ADC1_ClearOutOfRangeFlag(void);

void ADC_ITConfig(ADC_IT_Def ADC_IT, FunctionalState NewState);
void ADC1_ITConfig(ADC_IT_Def ADC_IT, FunctionalState NewState);

ITStatus ADC_GetITStatus(ADC_IT_Def ADC_IT);
ITStatus ADC1_GetITStatus(ADC_IT_Def ADC_IT);



    void ADC2_Init(const ADCx_InitTypeDef* ADCx_InitStruct);
    void ADC2_Cmd(FunctionalState NewState);
    void ADC2_SetChannel(ADCx_Channel_Number Channel);
    void ADC2_SetChannels(uint32_t ChannelMask);
    void ADC2_OperationModeConfig(ADCx_Sampling_Mode SamplingMode, ADCx_Channel_Switching SwitchingMode);
    void ADC2_OperationModeConfig(ADCx_Sampling_Mode SamplingMode, ADCx_Channel_Switching SwitchingMode);
    void ADC2_SamplingModeConfig(ADCx_Sampling_Mode SamplingMode);
    void ADC2_ChannelSwithingConfig(ADCx_Channel_Switching SwitchingMode);
    void ADC2_LevelsConfig(uint32_t LowLevel, uint32_t HighLevel, ADCx_Level_Control NewState);
    void ADC2_SetLowLevel(uint32_t LowLevel);
    void ADC2_SetHighLevel(uint32_t HighLevel);
    void ADC2_Start(void);
    uint32_t ADC2_GetResult(void);
    uint32_t ADC2_GetStatus(void);
    FlagStatus ADC2_GetFlagStatus(ADCx_Flags Flag);
    void ADC2_ClearOverwriteFlag(void);
    void ADC2_ClearOutOfRangeFlag(void);
    void ADC2_ITConfig(ADC_IT_Def ADC_IT, FunctionalState NewState);
    ITStatus ADC2_GetITStatus(ADC_IT_Def ADC_IT);


   

   

   









 


#line 3 "Global_Var.h"

typedef enum No_Yes {NO, YES} Status; 			
typedef enum Off_On {OFF, ON, UNKNOW} SwitchStatus;	
enum {FAULT=4, CORRECT};	
typedef enum {NEGATIVE, POSITIVE} Sign; 						


typedef enum {TRICLE, BULK, OVER, EQUALIZING, FLOAT} ModeOfCharge;
extern ModeOfCharge MODE_CHARGE;

typedef enum {CHARGE, DISCHARGE, WAIT, SLEEP, ALARM} ModeOfWork;
extern ModeOfWork MODE, MODE_prev;

typedef enum {POWER75W=75, POWER120W=120, POWER240W=240} Power_KAN_D;

typedef enum USP {
		UPS_FLAG_CHARGE_TO_DISCHARGE, 
		UPS_FLAG_DISCHARGE_TO_CHARGE, 
		UPS_FLAG_SLEEP_TO_CHARGE, 		
		UPS_FLAG_ALARM_TO_CHARGE, 		
		UPS_FLAG_ALARM_TO_DISCHARGE,  
		UPS_FLAG_FROM_CHARGE,  				
		UPS_FLAG_FROM_DISCHARGE,  		
		UPS_FLAG_FROM_WAIT,  					
		UPS_FLAG_FROM_SLEEP,  				
		UPS_FLAG_FROM_ALARM,  				
		UPS_FLAG_HANDLED							
} UPS_Flag;

typedef enum {
	  Bit0, Bit1, Bit2, Bit3, Bit4, Bit5, Bit6, Bit7, Bit8,
		Bit9, Bit10, Bit11, Bit12, Bit13, Bit14, Bit15,
		Bit31=31,
} PORT;



 
typedef enum BatCap_Pins {
  	BATTERY_SWITCH_OFF			= (1<<Bit7)|(1<<Bit6)|(1<<Bit5)|(1<<Bit4),  
	  BATTERY_CAPACITY_USER   = (1<<Bit7)|(1<<Bit6)|(1<<Bit5)|(0<<Bit4),  
	  BATTERY_CAPACITY_4_5_Ah = (1<<Bit7)|(1<<Bit6)|(0<<Bit5)|(1<<Bit4),  
	  BATTERY_CAPACITY_5_Ah   = (1<<Bit7)|(1<<Bit6)|(0<<Bit5)|(0<<Bit4),  
  	BATTERY_CAPACITY_5_8_Ah = (1<<Bit7)|(0<<Bit6)|(1<<Bit5)|(1<<Bit4),  
    BATTERY_CAPACITY_7_2_Ah = (1<<Bit7)|(0<<Bit6)|(1<<Bit5)|(0<<Bit4),  
	  BATTERY_CAPACITY_9_Ah   = (1<<Bit7)|(0<<Bit6)|(0<<Bit5)|(1<<Bit4),  
	  BATTERY_CAPACITY_12_Ah  = (1<<Bit7)|(0<<Bit6)|(0<<Bit5)|(0<<Bit4),  
	  BATTERY_CAPACITY_18_Ah  = (0<<Bit7)|(1<<Bit6)|(1<<Bit5)|(1<<Bit4),  
	  BATTERY_CAPACITY_26_Ah  = (0<<Bit7)|(1<<Bit6)|(1<<Bit5)|(0<<Bit4),  
} BatteryCapacityPins;


typedef enum BatCap {
	  CAPACITY_SWITCH_OFF,  			   
		CAPACITY_USER_DEFAULT = 1199,	  
	  CAPACITY_4500mAh = 4500, 		   
	  CAPACITY_5000mAh = 5000, 		   
	  CAPACITY_5800mAh = 5800, 		   
    CAPACITY_7200mAh = 7200, 		   
	  CAPACITY_9000mAh = 9000, 		   
	  CAPACITY_12000mAh = 12000,     
	  CAPACITY_18000mAh = 18000,     
	  CAPACITY_26000mAh = 26000,     	  
} BatteryCapacity;


 
typedef enum  T_Discharge_Pins{
	  DISCHARGE_TIME_05_MIN   = (1<<Bit3)|(1<<Bit2)|(0<<Bit1)|(1<<Bit0),  
	  DISCHARGE_TIME_1_MIN    = (1<<Bit3)|(1<<Bit2)|(0<<Bit1)|(0<<Bit0),  
	  DISCHARGE_TIME_3_MIN    = (1<<Bit3)|(0<<Bit2)|(1<<Bit1)|(1<<Bit0),  
	  DISCHARGE_TIME_5_MIN    = (1<<Bit3)|(0<<Bit2)|(1<<Bit1)|(0<<Bit0),  
		DISCHARGE_TIME_10_MIN   = (1<<Bit3)|(0<<Bit2)|(0<<Bit1)|(1<<Bit0),  
		DISCHARGE_TIME_15_MIN   = (1<<Bit3)|(0<<Bit2)|(0<<Bit1)|(0<<Bit0),  
		DISCHARGE_TIME_20_MIN   = (0<<Bit3)|(1<<Bit2)|(1<<Bit1)|(1<<Bit0),  
		DISCHARGE_TIME_30_MIN   = (0<<Bit3)|(1<<Bit2)|(1<<Bit1)|(0<<Bit0),  
	  DISCHARGE_TIME_ENDLESS  = (1<<Bit3)|(1<<Bit2)|(1<<Bit1)|(1<<Bit0),  
		DISCHARGE_TIME_USER     = (1<<Bit3)|(1<<Bit2)|(1<<Bit1)|(0<<Bit0)      
}TimeDischargePins;

 
typedef enum  T{
		TIME_ENDLESS,											   
		TIME_667_mсSEC = 1*6,		 
		TIME_1_mSEC		 =	9000/1000,		 
		TIME_1_77_mSEC = 1*16,  
		TIME_10_mSEC	= 9000/1000*10,			 
		TIME_30_mSEC	= 3*9000/1000*10,	 
		TIME_100_mSEC = 9000/1000*10*10,  
	  TIME_150_mSEC = 15*9000/1000*10, 	 
	  TIME_200_mSEC = 20*9000/1000*10, 	 
		TIME_250_mSEC = 25*9000/1000*10, 	 
		TIME_300_mSEC = 30*9000/1000*10, 	 
	  TIME_1_SEC    = 9000,				 
		TIME_2_SEC    = 2*TIME_1_SEC,			 
		TIME_3_SEC    = 3*TIME_1_SEC,			 
	  TIME_5_SEC    = 9000*5,			 
	  TIME_05_MIN   = 9000*30, 			 
	  TIME_1_MIN    = 9000*60, 			 
	  TIME_3_MIN    = 9000*60*3, 		 
	  TIME_5_MIN    = 9000*60*5, 			 
		TIME_10_MIN   = 9000*60*10, 			 
		TIME_15_MIN   = 9000*60*15, 	 
		TIME_20_MIN   = 9000*60*20, 		 
		TIME_30_MIN   = 9000*60*30, 		 
		TIME_USER_DEFAULT = 8701*TIME_200_mSEC,  
		TIME_EQUALIZING_CHARGE   = 1 	 
}Time;

 
typedef enum {
	  U_KAN_D_LESS_MIN, 						
		U_KAN_D_MORE_MAX,							
	  U_LOAD_LESS_MIN,							
	  U_LOAD_MORE_MAX, 							
	  U_BATTERY_LESS_MIN,						
	  U_BATTERY_MORE_MAX, 					
	  I_LOAD_LESS_MIN,							
	  I_LOAD_MORE_MAX, 							
	  I_BATTERY_LESS_MIN,						
	  I_BATTERY_MORE_MAX, 					
	  T_BATTERY_LESS_MIN,						
	  T_BATTERY_MORE_MAX, 					
		REMOUT_STATUS,								
		SET_BATTERY_STATUS,						
		CHECK_BATTERY_STATUS,					
	  BATTERY_LEVEL_LESS_MIN,				
		BATTERY_TIME_DISCHARGE_END,		
		I_BATTERY_IMOSSIBLE_TO_LIMIT,	
		U_KAN_D_MORE_U_BATTERY_DISCHARGE_MODE,			
	  U_KAN_D_BETWEEN_MIN_AND_MIN_FACTORY_VALUE,	
	  AMOUNT_STATUS
}Device_Status;

extern Device_Status DStat;
extern Status device_status[AMOUNT_STATUS]; 

 
 
 
 
typedef enum Clr {RED, GREEN, YELLOW, LED_OFF} LedColor;

 
 
typedef enum Flash {
  	PERMAMENT=0xFF, 
	  BLINK1=0x0F, 			 
	  BLINK2=0x01, 			 
		BLINK3=0x0A, 			 
		BLINK4=0xAA, 			 
		BLINK5=0xCC,			 
		BLINK6=0xFC,			 
	  BLINK7=0xFA,			 
} LedFlash;

 
typedef struct {
	 LedColor Color; 						
	 LedFlash Flash; 						
	 int FlashKvantPeriodCount; 
	 char FlashKvantCount; 			
	int pin[4];			
}LedControl;
extern LedControl LED1, LED2; 

 
 
 

 
typedef enum NORM_NOT_NORM {NOT_NORM, NORM} RelStatus; 

 
typedef struct {
   RelStatus ReleStatus; 
	 int pin;							 
}ReleControl;
extern ReleControl RELE1_AC, RELE2_BATTERY, RELE3_STABLE_WORK; 

 
 
 

 
typedef enum ADCch {
	ADC_I_LOAD_ch			=	ADC_CH_ADC0<<4, 	
	ADC_I_BATTERY_ch	=	ADC_CH_ADC1<<4,		
	ADC_U_LOAD_ch			=	ADC_CH_ADC2<<4,		
	ADC_U_BATTERY_ch	=	ADC_CH_ADC3<<4,		
	ADC_U_KAN_D_ch		=	ADC_CH_ADC4<<4,		
	ADC_U_ZERO_ch			=	ADC_CH_ADC5<<4,		
	ADC_KAN_D_TYPE		=	ADC_CH_ADC7<<4		
} ADCchannel;


typedef struct {
	 ADCchannel Channel; 								
	 uint16_t adc_data[10];  		
	 uint32_t adc_data_sum;							
   uint16_t avr;								    	
   float avr_real;							  		
	 float Convert_coef;								
	 uint16_t	index;								    
}ADCcontrol;

extern ADCcontrol ADC0_I_LOAD, ADC1_I_BATTERY, ADC2_U_LOAD, ADC3_U_BATTERY,ADC4_U_KAN_D, ADC5_U_ZERO, ADC7_KAN_D_TYPE; 

extern int ADCready_to_calculate; 
extern int ADC_avr_calculate_end; 		
 
 
 

typedef struct {
  Status WarningStatus ;						
	MDR_PORT_TypeDef* Port;						
	uint32_t	Pin;								    
}Warning;

extern Warning Wrng_I_LOAD, Wrng_U_LOAD, Wrng_U_KAN_D; 
extern char warning_flag; 

 
 
 


typedef struct {
  int Count;			
	SwitchStatus Status;	
	Status Flag;		
	Time MaxValue; 	
}Counter;












 
extern Counter Counter_Check_Battery_Connect, Counter_Check_Battery_Connect_Voltage_Drop, Counter_Anti_Bounce, Counter_Transient_Process, Counter_Transient_Process_UPS,
Counter_Transient_Process_I_Battery_Impossible_Interrupt, Counter_Starting_Initialization;

extern Counter Counter_Between_Package;

 
 
 


typedef struct{
	Status Need; 													 
	float I_Battery[1]; 
	Counter Counter_I_Battery_Write_Value; 
	Counter Counter_I_Battery_Is_Constant; 
}Bat_Equal_Charge;

typedef struct {
  int CapacityPins; 	 					
	BatteryCapacity Capacity; 	  
	int TimeDischargePins;  			
	Counter Counter_Battery_Discharge; 	 
	Counter Counter_Check_I_Battery; 	 	 
	Counter Counter_UnderCharge;			 	 
	int Charge_Control;								 	 
	float Level;											 	 
	float I_Battery_Impossible_Interrupt;
	Bat_Equal_Charge Equalizing_Charge;	 
	UPS_Flag UPS_Mode_Has_Changed_Flag;	 
	Status I_Charge_Is_Limited_Flag; 		 
	Status I_Charge_Is_Less_Min_Flag; 	 
	Status I_Battery_Discharge_More_Max_Value;  		
	float Internal_Resistor;			
	float Idle_Voltage;						
	float Temperature;						
	unsigned char Temperature_Max;					
	unsigned char Temperature_Min_Charge;		
	unsigned char Temperature_Min_Discharge;
	SwitchStatus Status_Join_To_Booster;		
	SwitchStatus Status_Join_To_Load;				
}Bat;

extern Bat Battery;
	
 

 
 
 

typedef struct {
	uint8_t Data[0x01+1];	
	uint8_t Byte_number;											
	uint16_t Temperature_code;								
	float Temperature_real;										
	Sign Sign;																
	float Temperature_coef;										
	char id[0x08];												
  char index;																
	Status Fault_Connect;											
	Counter count_Fault_Connect;							
}TempSens;

extern TempSens TemperatureSensor1;


typedef struct {
	Counter count_Fault_Connect; 							
	Status Fault_Connect;											
	Counter Counter_ACK_Flag;							 		
	Counter Counter_I2C_Command_End;					
}I2C_OW_Conv;

extern I2C_OW_Conv I2C_OW_Converter;

 
 
 


typedef struct {
	float Min_Value;
	float Max_Value;
	float Min_Value_Discharge;					
	float Max_Value_Discharge;					
}Min_Max;

typedef struct {
	Min_Max Load;							
	Min_Max Battery;					
	Min_Max KAN_D;						
} Parameters;

extern Parameters I, U, T;



 
typedef enum {
	U_MCU_REG			= 1,									
	U_KAN_D_REG,												
	U_LOAD_REG,													
	U_BATTERY_REG,											
	I_BATTERY_REG,											
	I_LOAD_REG,													
	MODE_REG,														
	STATUS_CHARGE_MODE,									
	SET_U_BATTERY_LIMIT_VALUE_REG,			
	STATUS_DISCHARGE_MODE,							
	T_BATTERY_1_REG,										
	STATUS_SWITCHES,										
}Modbus_REG;


typedef struct {
	
	uint8_t Package_Data[120];	
	uint8_t Package_Data_Index;									
	uint8_t Package_Size;												
	uint8_t Command;														
	Modbus_REG Registor_Adress;
	uint16_t Amount_Registor_Read_Or_Write;		
	uint16_t Data;										
	Status CRC_Is_Ok;									
	Status Package_Is_Sending;				
	Status Package_Is_New;						
	Counter Counter_Delay_Between_Bytes; 
	Counter Counter_Waiting_Receive_End; 

}RS485_data;

extern RS485_data RS485;


typedef struct {
	uint8_t Device_Name[11];						
	uint8_t Firmware_Version[6];	
	uint8_t Order_Number[9];					
	uint8_t Batch_Number[8];					
	uint8_t Number_In_Batch[1];		
} Device_ID_Struct;
	


typedef struct {
	uint8_t Device_Adress;						
	uint8_t Type_Of_KAN_D;						
	unsigned int Battery_Capacity_User;	
	unsigned int Time_Discharge_User;		
	uint16_t Time_Discharge_User_Min;	
	uint16_t Time_Discharge_User_Sec;	
	Parameters I,U,T;									
	float U_Tricle;										
	float U_Over;													
	float U_Equalizing;										
	float	U_Float;												
	uint16_t I_Tricle_koef;									
	uint16_t I_Bulk_koef;										
	uint16_t I_Over_koef;										
	uint16_t I_Charge_Min_koef;							
	uint16_t T_Compensation_koef_Over;				
	uint16_t T_Compensation_koef_Float;			
	float Battery_Internal_Resistor;			
	Status Remout_Control;								
	Status Control_I_Battery_Min_Charge;	
	Status Reset_Default_Settings;				
	Power_KAN_D	P_KAN_D;									
	Device_ID_Struct Device_ID;						
}UPS_D_data;

extern UPS_D_data Modbus, UPS_D, UPS_D_buf;






typedef struct {
	SwitchStatus Charge_Mode;			
	SwitchStatus Discharge_Mode;	
	Status U_Battery_Limit_Value;	
} UPS_D_Testing;

extern UPS_D_Testing Testing;



#line 5 "RS485_interface.c"
#line 1 "Defines.h"
 




 
 
 











 
 
 
#line 40 "Defines.h"

 
 
 


 
 
 
 



 





 
 
#line 69 "Defines.h"

 





 






 
 
 



 





 
 
 






















 
#line 128 "Defines.h"
 
 
 









	






#line 153 "Defines.h"


#line 173 "Defines.h"

#line 183 "Defines.h"

















																								  






















#line 236 "Defines.h"




 
 
 

#line 258 "Defines.h"


#line 272 "Defines.h"

 
 
 

#line 290 "Defines.h"















 
 
 
#line 314 "Defines.h"
	
 
 
 













	
#line 6 "RS485_interface.c"
#line 1 "RS485_interface.h"
void RS485_SendData(unsigned char Data);
void RS485_ReadData (void);
void RS485_Handling_Data (void);							  
void RS485_Create_Transmitted_Package (void); 	
void Write_Registers_Data(void);								
void Convert_And_Save_Receive_Parameters(void); 
void Create_2Byte_Answer (short data);				  
void Create_Analog_Value_Answer (float value);  
void Create_Koef_Value_Answer (float value); 		
float Temperature_Convert (unsigned short temp);
void RS485_Create_ID_Package(void);
int CRC_Check (unsigned char* data, unsigned char length);	

int Convert_Time_Discharge (short min, short sec);
#line 7 "RS485_interface.c"
#line 1 "Configuration.h"
 
 
 



#line 13 "Configuration.h"

#line 20 "Configuration.h"

 
 
 












	





										 


																			


																		
#line 55 "Configuration.h"
								
																			
 
 
 				
				






#line 75 "Configuration.h"











#line 92 "Configuration.h"




 
 
 


 
#line 114 "Configuration.h"




 
#line 138 "Configuration.h"

 				
#line 150 "Configuration.h"
 
#line 159 "Configuration.h"
 				
#line 168 "Configuration.h"

 
 
 				
				
				
 
#line 186 "Configuration.h"


 





 				


 	




 				


	
	
 
 
 	









































	
	


















	
 
 
 							






























				





 
 
 							





#line 8 "RS485_interface.c"
#line 1 "C:\\Programs\\Keil v537\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
 
 
 
 




 








 












#line 38 "C:\\Programs\\Keil v537\\ARM\\ARMCC\\Bin\\..\\include\\string.h"


  



    typedef unsigned int size_t;    
#line 54 "C:\\Programs\\Keil v537\\ARM\\ARMCC\\Bin\\..\\include\\string.h"




extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 


#line 193 "C:\\Programs\\Keil v537\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 209 "C:\\Programs\\Keil v537\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 232 "C:\\Programs\\Keil v537\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 247 "C:\\Programs\\Keil v537\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 270 "C:\\Programs\\Keil v537\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 







#line 502 "C:\\Programs\\Keil v537\\ARM\\ARMCC\\Bin\\..\\include\\string.h"



 

#line 9 "RS485_interface.c"



void RS485_ReadData (void)
{

	if((RS485.Package_Is_New == YES)&&(RS485.Counter_Waiting_Receive_End.Flag == YES)) 
	{
	
		if(RS485.Package_Data[0x00] == UPS_D.Device_Adress)	
		{
			RS485.Command	=	RS485.Package_Data[0x01];
			RS485.Registor_Adress = (RS485.Package_Data[0x02]<<Bit8)|(RS485.Package_Data[0x03]);
			RS485.CRC_Is_Ok = (CRC_Check(RS485.Package_Data, RS485.Package_Data_Index)==0)? (YES):(NO); 
			
			RS485.Package_Size = RS485.Package_Data_Index;  
			if(RS485.CRC_Is_Ok==YES) RS485_Handling_Data();	
			RS485.CRC_Is_Ok = NO;		
			RS485.Package_Size=(RS485.Package_Size>RS485.Package_Data_Index)?(RS485.Package_Size):(RS485.Package_Data_Index);	
			{ for (uint8_t i=0; i<=RS485 . Package_Size; i++) RS485 . Package_Data[i]=0; RS485 . Package_Data_Index = 0; RS485 . Package_Is_New = NO; { RS485 . Counter_Waiting_Receive_End . Count=0; RS485 . Counter_Waiting_Receive_End . Flag=NO; RS485 . Counter_Waiting_Receive_End . Status=OFF;}; };	
		}
		else { for (uint8_t i=0; i<=RS485 . Package_Size; i++) RS485 . Package_Data[i]=0; RS485 . Package_Data_Index = 0; RS485 . Package_Is_New = NO; { RS485 . Counter_Waiting_Receive_End . Count=0; RS485 . Counter_Waiting_Receive_End . Flag=NO; RS485 . Counter_Waiting_Receive_End . Status=OFF;}; };	
		RS485.Package_Size = 0; 
	}
}


void RS485_Handling_Data (void)
{
	switch (RS485.Command)
			{
				case 0x03:
				RS485.Amount_Registor_Read_Or_Write = (RS485.Package_Data[0x04]<<Bit8)|(RS485.Package_Data[0x05]);		
				{ for (uint8_t i=0; i<=RS485 . Package_Size; i++) RS485 . Package_Data[i]=0; RS485 . Package_Data_Index = 0; RS485 . Package_Is_New = NO; { RS485 . Counter_Waiting_Receive_End . Count=0; RS485 . Counter_Waiting_Receive_End . Flag=NO; RS485 . Counter_Waiting_Receive_End . Status=OFF;}; };				
				RS485_Create_Transmitted_Package();											
				break;
				
				case 0x06:
				RS485.Amount_Registor_Read_Or_Write = 1;			
				RS485.Package_Data_Index = 0x04;		
				Write_Registers_Data();												
				Convert_And_Save_Receive_Parameters(); 				
				{ for (uint8_t i=0; i<=RS485 . Package_Size; i++) RS485 . Package_Data[i]=0; RS485 . Package_Data_Index = 0; RS485 . Package_Is_New = NO; { RS485 . Counter_Waiting_Receive_End . Count=0; RS485 . Counter_Waiting_Receive_End . Flag=NO; RS485 . Counter_Waiting_Receive_End . Status=OFF;}; };															
				RS485_Create_Transmitted_Package();						
				break;
			
				case	0x10:
				
 
				RS485.Amount_Registor_Read_Or_Write = RS485.Package_Data[0x04]/2;		
				RS485.Package_Data_Index = 0x05;		
				Write_Registers_Data();											
				Convert_And_Save_Receive_Parameters(); 			
				{ for (uint8_t i=0; i<=RS485 . Package_Size; i++) RS485 . Package_Data[i]=0; RS485 . Package_Data_Index = 0; RS485 . Package_Is_New = NO; { RS485 . Counter_Waiting_Receive_End . Count=0; RS485 . Counter_Waiting_Receive_End . Flag=NO; RS485 . Counter_Waiting_Receive_End . Status=OFF;}; };														
				RS485_Create_Transmitted_Package();					
				break;
				
				case 0x11:
				{ for (uint8_t i=0; i<=RS485 . Package_Size; i++) RS485 . Package_Data[i]=0; RS485 . Package_Data_Index = 0; RS485 . Package_Is_New = NO; { RS485 . Counter_Waiting_Receive_End . Count=0; RS485 . Counter_Waiting_Receive_End . Flag=NO; RS485 . Counter_Waiting_Receive_End . Status=OFF;}; };														
				RS485_Create_Transmitted_Package();					
				break;
	
			}
}


void Write_Registers_Data(void)
{
	for (uint8_t i=RS485.Registor_Adress; i<(RS485.Registor_Adress+RS485.Amount_Registor_Read_Or_Write); i++)
	{
		switch (i)
			{		
				case STATUS_CHARGE_MODE:												Testing.Charge_Mode 					 = (RS485.Package_Data[RS485.Package_Data_Index]<<Bit8)|RS485.Package_Data[RS485.Package_Data_Index+1];			break;	
				case SET_U_BATTERY_LIMIT_VALUE_REG:							Testing.Discharge_Mode 				 = (RS485.Package_Data[RS485.Package_Data_Index]<<Bit8)|RS485.Package_Data[RS485.Package_Data_Index+1];			break;	
				case STATUS_DISCHARGE_MODE:											Testing.U_Battery_Limit_Value  = (RS485.Package_Data[RS485.Package_Data_Index]<<Bit8)|RS485.Package_Data[RS485.Package_Data_Index+1];			break;	
			}
			RS485.Package_Data_Index+=2;
	}		
}



void Convert_And_Save_Receive_Parameters(void)
{
	







 
}
			

int Convert_Time_Discharge (short min, short sec)
{
	unsigned int minutes, seconds, time;
	minutes = min & 0x7FFF;
	minutes*= TIME_1_MIN;
	
	seconds = sec & 0x7FFF;
	seconds*= TIME_1_SEC;
	
	time = minutes + seconds;
	
	return time;
}


void RS485_Create_Transmitted_Package (void)
{
  
  	RS485.Package_Data[0x00] = UPS_D.Device_Adress; 			
  	switch (RS485.Command)
				{
					case 0x03: 					RS485.Package_Data[0x01] = 0x03;						break;
					case 0x06:					RS485.Package_Data[0x01] = 0x06;					break;
					case 0x10:	RS485.Package_Data[0x01] = 0x10;	break;
					case 0x11:			RS485.Package_Data[0x01] = 0x11;			break;
				}
  	switch (RS485.Command)
 	{
					case 0x03:
					{
						uint8_t byte_amount;
						byte_amount = RS485.Amount_Registor_Read_Or_Write * 2;		
						RS485.Package_Data[0x02] = byte_amount;
						RS485.Package_Data_Index = 0x03;			
					}
					break;
					case 0x06:
					{
						RS485.Package_Data[0x02] = RS485.Registor_Adress>>Bit8;
						RS485.Package_Data[0x03]  = RS485.Registor_Adress;
						RS485.Package_Data_Index = 0x03+1;		
					}
					break;
					
					case 0x10:
					{
						RS485.Package_Data[0x02] = RS485.Registor_Adress>>Bit8;		
						RS485.Package_Data[0x03]  = RS485.Registor_Adress;					
						RS485.Package_Data_Index = 0x03+1;
					}
					break;
					
					case 0x11:
					{
						RS485.Package_Data[0x02] = 35;
						RS485.Package_Data_Index = 0x03;			
					}
					break;
					
					
				}					
				
 if(RS485.Command == 0x10)
				{
					RS485.Package_Data[RS485.Package_Data_Index] = (RS485.Amount_Registor_Read_Or_Write>>Bit8);
					RS485.Package_Data[RS485.Package_Data_Index+1] = RS485.Amount_Registor_Read_Or_Write;
					RS485.Package_Data_Index+=2; 
				}
				else if ((RS485.Command == 0x03)||(RS485.Command == 0x06)) 
				{
					for(uint8_t i = RS485.Registor_Adress; i<(RS485.Registor_Adress+RS485.Amount_Registor_Read_Or_Write); i++)
					{
		 switch (i)
						{	
							
				 		case U_MCU_REG:						Create_Analog_Value_Answer(3.3f);												break;
				 		case U_KAN_D_REG:					Create_Analog_Value_Answer(ADC4_U_KAN_D.avr_real);			break;
				 		case U_LOAD_REG:					Create_Analog_Value_Answer(ADC2_U_LOAD.avr_real);				break;
				 		case U_BATTERY_REG:				Create_Analog_Value_Answer(ADC3_U_BATTERY.avr_real);		break;
				 		case I_BATTERY_REG:				Create_Analog_Value_Answer(ADC1_I_BATTERY.avr_real);		break;
				 		case I_LOAD_REG:					Create_Analog_Value_Answer(ADC0_I_LOAD.avr_real);				break;
				 		case MODE_REG:
								{
									short data	= 0;
									char DU=PORT_ReadInputDataBit(((MDR_PORT_TypeDef *) (0x400C0000)), PORT_Pin_6);;
									DU = (~DU)&0x01;
									data = (RELE1_AC.ReleStatus							<<Bit0)| 
												 (RELE2_BATTERY.ReleStatus				<<Bit1)| 
												 (RELE3_STABLE_WORK.ReleStatus		<<Bit2)| 
												 (Wrng_U_KAN_D.WarningStatus			<<Bit3)|
												 (Wrng_U_LOAD.WarningStatus				<<Bit4)|
												 (Wrng_I_LOAD.WarningStatus				<<Bit5)|
												 (DU															<<Bit6);
									Create_2Byte_Answer(data);							
								}	
			break;								
				 		case STATUS_CHARGE_MODE:									Create_2Byte_Answer(0);						break;
				 		case SET_U_BATTERY_LIMIT_VALUE_REG:				Create_2Byte_Answer((unsigned short)Testing.Discharge_Mode);				break;
				 	case STATUS_DISCHARGE_MODE:								Create_2Byte_Answer((unsigned short)Testing.U_Battery_Limit_Value);	break;
				 	case T_BATTERY_1_REG:
								{				
									float data;
									short data1;
									if((TemperatureSensor1.Fault_Connect==NO)&&(I2C_OW_Converter.Fault_Connect==NO))	
									{
										if(TemperatureSensor1.Temperature_real<0)	
										{
											data = (-1)*TemperatureSensor1.Temperature_real*100.f;	
											data1=(short)data;			
											data1=~(data1-1);				
											Create_2Byte_Answer(data1);
										}
										else Create_Analog_Value_Answer(TemperatureSensor1.Temperature_real);
									}
									else Create_2Byte_Answer(0x7FFF); 
								}
								break;
				 	case STATUS_SWITCHES:									
								{
									short data	= 0;
									Battery.CapacityPins=(PORT_ReadInputData(((MDR_PORT_TypeDef *) (0x400A8000)))&((1<<Bit7)|(1<<Bit6)|(1<<Bit5)|(1<<Bit4)));;
									Battery.CapacityPins >>= Bit4;
									Battery.TimeDischargePins=(PORT_ReadInputData(((MDR_PORT_TypeDef *) (0x400A8000)))&((1<<Bit3)|(1<<Bit2)|(1<<Bit1)|(1<<Bit0)));;
	
									data = (((~Battery.CapacityPins)			&0xF) <<Bit0) |
												 ((((~Battery.TimeDischargePins)&0xF) <<Bit4))	; 
									Type_Of_KAN_D();									
									if(UPS_D.Type_Of_KAN_D == POWER240W)  			data |= 0x03<<Bit8;
									else if(UPS_D.Type_Of_KAN_D == POWER120W)		data |= 0x02<<Bit8;
									else if(UPS_D.Type_Of_KAN_D == POWER75W)		data |= 0x01<<Bit8;
									
									Create_2Byte_Answer(data);	
								}
								break;
						}
						RS485.Package_Data_Index++;
						RS485.Package_Data_Index++; 
					}
				}
				
				unsigned short CRC;
				CRC = CRC_Check (RS485.Package_Data, RS485.Package_Data_Index);	
 	RS485.Package_Data[RS485.Package_Data_Index] = CRC;					
 RS485.Package_Data[RS485.Package_Data_Index+1] = CRC>>Bit8;	
				RS485.Package_Data_Index++; 																
				for (uint8_t i=0; i<=RS485.Package_Data_Index; i++) RS485_SendData(RS485.Package_Data[i]);		
}



void RS485_SendData(unsigned char Data)
{
	{((MDR_PORT_TypeDef *) (0x400B0000))->RXTX = PORT_Pin_7|(((MDR_PORT_TypeDef *) (0x400B0000))->RXTX&0xFFE0);};
	
	while (UART_GetFlagStatus(((MDR_UART_TypeDef *) (0x40030000)), UART_FLAG_TXFE) != SET);
	UART_SendData(((MDR_UART_TypeDef *) (0x40030000)),Data);
	
	while (UART_GetFlagStatus(((MDR_UART_TypeDef *) (0x40030000)), UART_FLAG_BUSY) == SET);	
	{((MDR_PORT_TypeDef *) (0x400B0000))->RXTX&= ~(PORT_Pin_7|0x001F);};
}


void Create_2Byte_Answer (short data)
{
	RS485.Package_Data[RS485.Package_Data_Index] = (data>>Bit8); 
	RS485.Package_Data[RS485.Package_Data_Index+1] = data;			 
}


void Create_Analog_Value_Answer (float value)
{
	float data;
	data = value*100.f;
	Create_2Byte_Answer((short)data);
}

void Create_Koef_Value_Answer (float value)
{
	float data;
	data = value*(float)1000.0;
	Create_2Byte_Answer((short)data);
}


float Temperature_Convert (unsigned short temp)
{
	float temp1;
	if((temp>>Bit15)==YES) 
		{
			temp1 = (uint16_t)((~temp)+1)*(-1);
			temp1 = (float)temp1*(1/100.f);
		}
	else temp1=(float)temp*(1/100.f);
	return temp1;
}


int CRC_Check (unsigned char* data, unsigned char length)
  {
	register int j;
	register unsigned int reg_crc = 0xFFFF;	
	while (length--)
	{
	  reg_crc ^= *data++;
	  for(j=0;j<8;j++)
	   {
			if(reg_crc&0x01) reg_crc=(reg_crc>>1)^0xA001;
			else reg_crc = reg_crc >> 1;
	   }
	}
	return reg_crc;
  }
	
	
	
	
	
	
























	
	
	
	
	
	
	
	
	
	
	
	
	
	

