#line 1 "C:/Programs/Keil v537/Packs/Milandr/MDR32FxQI/1.0/Libraries/SPL/MDR32FxQI/src/MDR32FxQI_adc.c"



















 

 
#line 1 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\SPL\\MDR32FxQI\\inc\\MDR32FxQI_adc.h"




















 

 







 
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


   

   

   









 


#line 24 "C:/Programs/Keil v537/Packs/Milandr/MDR32FxQI/1.0/Libraries/SPL/MDR32FxQI/src/MDR32FxQI_adc.c"



 



 



 





 
void ADC_DeInit(void)
{
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_CFG = 0;
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_CFG = 0;
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_H_LEVEL = 0;
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_L_LEVEL = 0;
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_RESULT;
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_STATUS = 0;
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_CHSEL = 0;


    ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_H_LEVEL = 0;
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_L_LEVEL = 0;
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_RESULT;
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_STATUS = 0;
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_CHSEL = 0;





}







 
void ADC_Init(const ADC_InitTypeDef* ADC_InitStruct)
{
    uint32_t tmpreg_CFG;
    uint32_t tmpreg_MSK;




     

    ((void)0U);
    ((void)0U);

    ((void)0U);
    ((void)0U);
    ((void)0U);
    ((void)0U);
    ((void)0U);




    tmpreg_CFG = ADC_InitStruct->ADC_TempSensor
               + ADC_InitStruct->ADC_TempSensorAmplifier
               + ADC_InitStruct->ADC_TempSensorConversion
               + ADC_InitStruct->ADC_IntVRefConversion;


    tmpreg_CFG += (ADC_InitStruct->ADC_StartDelay << 28)
               +   ADC_InitStruct->ADC_SynchronousMode
               +  (ADC_InitStruct->ADC_IntVRefTrimming << 21);


    tmpreg_MSK = ((uint32_t)0xF0000000)
               | ((uint32_t)0x00020000)
               | ((uint32_t)0x00040000)
               | ((uint32_t)0x00080000)
               | ((uint32_t)0x00100000);

    tmpreg_MSK |= ((uint32_t)0x01E00000)
               |  ((uint32_t)0x00010000);






    ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_CFG = (((MDR_ADC_TypeDef *) (0x40088000))->ADC1_CFG & ~tmpreg_MSK) + tmpreg_CFG;
}






 
void ADC_StructInit(ADC_InitTypeDef* ADC_InitStruct)
{

    ADC_InitStruct->ADC_SynchronousMode     = ADC_SyncMode_Independent;
    ADC_InitStruct->ADC_StartDelay           = 0;

    ADC_InitStruct->ADC_TempSensor           = ADC_TEMP_SENSOR_Disable;
    ADC_InitStruct->ADC_TempSensorAmplifier  = ADC_TEMP_SENSOR_AMPLIFIER_Disable;
    ADC_InitStruct->ADC_TempSensorConversion = ADC_TEMP_SENSOR_CONVERSION_Disable;
    ADC_InitStruct->ADC_IntVRefConversion    = ADC_VREF_CONVERSION_Disable;
    ADC_InitStruct->ADC_IntVRefTrimming      = 0;




}








 
void ADC_SetTrim(uint32_t Trim)
{
    uint32_t tmpreg;

     
    ((void)0U);


    tmpreg = ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_CFG & ~((uint32_t)0x01E00000);
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_CFG = tmpreg + (Trim << 21);

#line 170 "C:/Programs/Keil v537/Packs/Milandr/MDR32FxQI/1.0/Libraries/SPL/MDR32FxQI/src/MDR32FxQI_adc.c"
}









 
void ADC1_Init(const ADCx_InitTypeDef* ADCx_InitStruct)
{
    uint32_t tmpreg_CFG1;
    uint32_t tmpreg_CFG2;

     
    ((void)0U);
    ((void)0U);
    ((void)0U);
    ((void)0U);
    ((void)0U);
    ((void)0U);
    ((void)0U);
    ((void)0U);
    ((void)0U);
    ((void)0U);
    ((void)0U);
    ((void)0U);

    tmpreg_CFG1 = ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_CFG;

    tmpreg_CFG1 &= ~(((uint32_t)0x00000004)
                   | ((uint32_t)0x00000008)
                   | ((uint32_t)0x00000200)
                   | ((uint32_t)0x000001F0)
                   | ((uint32_t)0x00000400)
                   | ((uint32_t)0x00000800)
                   | ((uint32_t)0x0000F000)
                   | ((uint32_t)0x0E000000));

    tmpreg_CFG1 += ADCx_InitStruct->ADC_ClockSource
                 + ADCx_InitStruct->ADC_SamplingMode
                 + ADCx_InitStruct->ADC_ChannelSwitching
                 + (ADCx_InitStruct->ADC_ChannelNumber << 4)
                 + ADCx_InitStruct->ADC_LevelControl
                 + ADCx_InitStruct->ADC_VRefSource
                 + ADCx_InitStruct->ADC_Prescaler
                 + (ADCx_InitStruct->ADC_DelayGo << 25);

    tmpreg_CFG2 = ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_CFG;
    tmpreg_CFG2 &= ~((uint32_t)0x00020000);
    tmpreg_CFG2 += ADCx_InitStruct->ADC_IntVRefSource << 17;


    ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_L_LEVEL = ADCx_InitStruct->ADC_LowLevel;
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_H_LEVEL = ADCx_InitStruct->ADC_HighLevel;
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_CHSEL   = ADCx_InitStruct->ADC_Channels;

    ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_CFG = tmpreg_CFG1;
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_CFG = tmpreg_CFG2;
}











 
void ADC2_Init(const ADCx_InitTypeDef* ADCx_InitStruct)
{
    uint32_t tmpreg_CFG2;

     
    ((void)0U);
    ((void)0U);
    ((void)0U);
    ((void)0U);
    ((void)0U);
    ((void)0U);
    ((void)0U);
    ((void)0U);
    ((void)0U);
    ((void)0U);
    ((void)0U);
    ((void)0U);

    tmpreg_CFG2 = ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_CFG;

    tmpreg_CFG2 &= ~(((uint32_t)0x00000004)
                   | ((uint32_t)0x00000008)
                   | ((uint32_t)0x00000200)
                   | ((uint32_t)0x000001F0)
                   | ((uint32_t)0x00000400)
                   | ((uint32_t)0x00000800)
                   | ((uint32_t)0x00040000)
                   | ((uint32_t)0x0000F000)
                   | ((uint32_t)0x0E000000));

    tmpreg_CFG2 += ADCx_InitStruct->ADC_ClockSource
                 + ADCx_InitStruct->ADC_SamplingMode
                 + ADCx_InitStruct->ADC_ChannelSwitching
                 + (ADCx_InitStruct->ADC_ChannelNumber << 4)
                 + ADCx_InitStruct->ADC_LevelControl
                 + ADCx_InitStruct->ADC_VRefSource
                 + (ADCx_InitStruct->ADC_IntVRefSource << 18)
                 + ADCx_InitStruct->ADC_Prescaler
                 + (ADCx_InitStruct->ADC_DelayGo << 25);

    ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_L_LEVEL = ADCx_InitStruct->ADC_LowLevel;
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_H_LEVEL = ADCx_InitStruct->ADC_HighLevel;
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_CHSEL   = ADCx_InitStruct->ADC_Channels;

    ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_CFG = tmpreg_CFG2;
}







 
void ADCx_StructInit(ADCx_InitTypeDef* ADCx_InitStruct)
{
    ADCx_InitStruct->ADC_ClockSource      = ADC_CLOCK_SOURCE_CPU;
    ADCx_InitStruct->ADC_SamplingMode     = ADC_SAMPLING_MODE_SINGLE_CONV;
    ADCx_InitStruct->ADC_ChannelSwitching = ADC_CH_SWITCHING_Disable;
    ADCx_InitStruct->ADC_ChannelNumber    = ADC_CH_ADC0;
    ADCx_InitStruct->ADC_Channels         = 0;
    ADCx_InitStruct->ADC_LevelControl     = ADC_LEVEL_CONTROL_Disable;
    ADCx_InitStruct->ADC_LowLevel         = 0;
    ADCx_InitStruct->ADC_HighLevel        = 0;
    ADCx_InitStruct->ADC_VRefSource       = ADC_VREF_SOURCE_INTERNAL;
    ADCx_InitStruct->ADC_IntVRefSource    = ADC_INT_VREF_SOURCE_INEXACT;
    ADCx_InitStruct->ADC_Prescaler        = ADC_CLK_div_None;
    ADCx_InitStruct->ADC_DelayGo          = 0;
}





 
void ADC1_Cmd(FunctionalState NewState)
{
    uint32_t tmpreg_CFG;

     
    ((void)0U);

    tmpreg_CFG = ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_CFG;

     
    if (NewState != DISABLE)
    {
         
        tmpreg_CFG |= ((uint32_t)0x00000001);
    }
    else
    {
         
        tmpreg_CFG &= ~((uint32_t)0x00000001);
    }

     
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_CFG = tmpreg_CFG;
}








 
void ADC2_Cmd(FunctionalState NewState)
{
    uint32_t tmpreg_CFG;

     
    ((void)0U);

    tmpreg_CFG = ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_CFG;

     
    if (NewState != DISABLE)
    {
         
        tmpreg_CFG |= ((uint32_t)0x00000001);
    }
    else
    {
         
        tmpreg_CFG &= ~((uint32_t)0x00000001);
    }

     
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_CFG = tmpreg_CFG;
}






 
void ADC1_SetChannel(ADCx_Channel_Number Channel)
{
    uint32_t tmpreg_CFG;

     
    ((void)0U);

    tmpreg_CFG = ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_CFG;
    tmpreg_CFG &= ~((uint32_t)0x000001F0);
    tmpreg_CFG += Channel << 4;
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_CFG = tmpreg_CFG;
}








 
void ADC2_SetChannel(ADCx_Channel_Number Channel)
{
    uint32_t tmpreg_CFG;

     
    ((void)0U);

    tmpreg_CFG = ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_CFG;
    tmpreg_CFG &= ~((uint32_t)0x000001F0);
    tmpreg_CFG += Channel << 4;
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_CFG = tmpreg_CFG;
}







 
void ADC1_SetChannels(uint32_t ChannelMask)
{
     
    ((void)0U);

    ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_CHSEL = ChannelMask;
}









 
void ADC2_SetChannels(uint32_t ChannelMask)
{
     
    ((void)0U);

    ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_CHSEL = ChannelMask;
}







 
void ADC1_OperationModeConfig(ADCx_Sampling_Mode SamplingMode, ADCx_Channel_Switching SwitchingMode)
{
    uint32_t tmpreg_CFG;

     
    ((void)0U);
    ((void)0U);

    tmpreg_CFG = ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_CFG;
    tmpreg_CFG &= ~(((uint32_t)0x00000008) | ((uint32_t)0x00000200));
    tmpreg_CFG += (uint32_t)SamplingMode + (uint32_t)SwitchingMode;
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_CFG = tmpreg_CFG;
}









 
void ADC2_OperationModeConfig(ADCx_Sampling_Mode SamplingMode, ADCx_Channel_Switching SwitchingMode)
{
    uint32_t tmpreg_CFG;

     
    ((void)0U);
    ((void)0U);

    tmpreg_CFG = ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_CFG;
    tmpreg_CFG &= ~(((uint32_t)0x00000008) | ((uint32_t)0x00000200));
    tmpreg_CFG += (uint32_t)SamplingMode + (uint32_t)SwitchingMode;
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_CFG = tmpreg_CFG;
}






 
void ADC1_SamplingModeConfig(ADCx_Sampling_Mode SamplingMode)
{
    uint32_t tmpreg_CFG;

     
    ((void)0U);

    tmpreg_CFG = ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_CFG;
    tmpreg_CFG &= ~((uint32_t)0x00000008);
    tmpreg_CFG += (uint32_t)SamplingMode;
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_CFG = tmpreg_CFG;
}








 
void ADC2_SamplingModeConfig(ADCx_Sampling_Mode SamplingMode)
{
    uint32_t tmpreg_CFG;

     
    ((void)0U);

    tmpreg_CFG = ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_CFG;
    tmpreg_CFG &= ~((uint32_t)0x00000008);
    tmpreg_CFG += (uint32_t)SamplingMode;
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_CFG = tmpreg_CFG;
}






 
void ADC1_ChannelSwithingConfig(ADCx_Channel_Switching SwitchingMode)
{
    uint32_t tmpreg_CFG;

     
    ((void)0U);

    tmpreg_CFG = ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_CFG;
    tmpreg_CFG &= ~((uint32_t)0x00000200);
    tmpreg_CFG += (uint32_t)SwitchingMode;
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_CFG = tmpreg_CFG;
}








 
void ADC2_ChannelSwithingConfig(ADCx_Channel_Switching SwitchingMode)
{
    uint32_t tmpreg_CFG;

     
    ((void)0U);

    tmpreg_CFG = ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_CFG;
    tmpreg_CFG &= ~((uint32_t)0x00000200);
    tmpreg_CFG += (uint32_t)SwitchingMode;
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_CFG = tmpreg_CFG;
}








 
void ADC1_LevelsConfig(uint32_t LowLevel, uint32_t HighLevel, ADCx_Level_Control NewState)
{
    uint32_t tmpreg_CFG;

     
    ((void)0U);
    ((void)0U);
    ((void)0U);

    tmpreg_CFG = ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_CFG;
    tmpreg_CFG &= ~((uint32_t)0x00000400);
    tmpreg_CFG += (uint32_t)NewState;
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_CFG = tmpreg_CFG;

    ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_L_LEVEL = LowLevel;
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_H_LEVEL = HighLevel;
}










 
void ADC2_LevelsConfig(uint32_t LowLevel, uint32_t HighLevel, ADCx_Level_Control NewState)
{
    uint32_t tmpreg_CFG;

     
    ((void)0U);
    ((void)0U);
    ((void)0U);

    tmpreg_CFG = ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_CFG;
    tmpreg_CFG &= ~((uint32_t)0x00000400);
    tmpreg_CFG += (uint32_t)NewState;
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_CFG = tmpreg_CFG;

    ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_L_LEVEL = LowLevel;
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_H_LEVEL = HighLevel;
}






 
void ADC1_SetLowLevel(uint32_t LowLevel)
{
     
    ((void)0U);

    ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_L_LEVEL = LowLevel;
}








 
void ADC2_SetLowLevel(uint32_t LowLevel)
{
     
    ((void)0U);

    ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_L_LEVEL = LowLevel;
}






 
void ADC1_SetHighLevel(uint32_t HighLevel)
{
     
    ((void)0U);

    ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_H_LEVEL = HighLevel;
}








 
void ADC2_SetHighLevel(uint32_t HighLevel)
{
     
    ((void)0U);

    ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_H_LEVEL = HighLevel;
}






 
void ADC1_Start(void)
{
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_CFG |= ((uint32_t)0x00000002);
}








 
void ADC2_Start(void)
{
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_CFG |= ((uint32_t)0x00000002);
}






 
uint32_t ADC1_GetResult(void)
{
    return ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_RESULT;
}








 
uint32_t ADC2_GetResult(void)
{
    return ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_RESULT;
}






 
uint32_t ADC_GetStatus(void)
{

    return ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_STATUS + (((MDR_ADC_TypeDef *) (0x40088000))->ADC2_STATUS << 16);



}





 
uint32_t ADC1_GetStatus(void)
{
    return ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_STATUS;
}








 
uint32_t ADC2_GetStatus(void)
{
    return ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_STATUS;
}






 
FlagStatus ADC_GetFlagStatus(ADC_Flags Flag)
{
    FlagStatus bitstatus;

     
    ((void)0U);

    if ((ADC_GetStatus() & (uint32_t)Flag) == 0)
    {
        bitstatus = RESET;
    }
    else
    {
        bitstatus = SET;
    }

    return bitstatus;
}





 
FlagStatus ADC1_GetFlagStatus(ADCx_Flags Flag)
{
    FlagStatus bitstatus;

     
    ((void)0U);

    if ((((MDR_ADC_TypeDef *) (0x40088000))->ADC1_STATUS & (uint32_t)Flag) == 0)
    {
        bitstatus = RESET;
    }
    else
    {
        bitstatus = SET;
    }

    return bitstatus;
}








 
FlagStatus ADC2_GetFlagStatus(ADCx_Flags Flag)
{
    FlagStatus bitstatus;

     
    ((void)0U);

    if ((((MDR_ADC_TypeDef *) (0x40088000))->ADC2_STATUS & (uint32_t)Flag) == 0)
    {
        bitstatus = RESET;
    }
    else
    {
        bitstatus = SET;
    }

    return bitstatus;
}






 
void ADC1_ClearOverwriteFlag(void)
{
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_STATUS &= ~ADCx_FLAG_OVERWRITE;
}








 
void ADC2_ClearOverwriteFlag(void)
{
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_STATUS &= ~ADCx_FLAG_OVERWRITE;
}






 
void ADC1_ClearOutOfRangeFlag(void)
{
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_STATUS &= ~ADCx_FLAG_OUT_OF_RANGE;
}








 
void ADC2_ClearOutOfRangeFlag(void)
{
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_STATUS &= ~ADCx_FLAG_OUT_OF_RANGE;
}







 
void ADC_ITConfig(ADC_IT_Def ADC_IT, FunctionalState NewState)
{
    uint32_t tmpreg_ADC1_IE;
    uint32_t tmpreg_ADC_IT;

    uint32_t tmpreg_ADC2_IE;


     
    ((void)0U);
    ((void)0U);

    tmpreg_ADC1_IE = ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_STATUS;
    tmpreg_ADC_IT = (uint32_t)ADC_IT << 2;

     
    if (NewState != DISABLE)
    {
         
        tmpreg_ADC1_IE |= tmpreg_ADC_IT & 0xFFFF;
    }
    else
    {
         
        tmpreg_ADC1_IE &= ~(tmpreg_ADC_IT & 0xFFFF);
    }

     
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_STATUS = tmpreg_ADC1_IE;



    tmpreg_ADC2_IE = ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_STATUS;

     
    if (NewState != DISABLE)
    {
         
        tmpreg_ADC2_IE |= tmpreg_ADC_IT >> 16;
    }
    else
    {
         
        tmpreg_ADC2_IE &= ~(tmpreg_ADC_IT >> 16);
    }
     
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_STATUS = tmpreg_ADC2_IE;

}






 
void ADC1_ITConfig(ADC_IT_Def ADC_IT, FunctionalState NewState)
{
    uint32_t tmpreg_ADC1_IE;

     
    ((void)0U);
    ((void)0U);

    tmpreg_ADC1_IE = ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_STATUS;

     
    if (NewState != DISABLE)
    {
         
        tmpreg_ADC1_IE |= ((uint32_t)ADC_IT << 2);
    }
    else
    {
         
        tmpreg_ADC1_IE &= ~((uint32_t)ADC_IT << 2);
    }

     
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_STATUS = tmpreg_ADC1_IE;
}









 
void ADC2_ITConfig(ADC_IT_Def ADC_IT, FunctionalState NewState)
{
    uint32_t tmpreg_ADC2_IE;

     
    ((void)0U);
    ((void)0U);

    tmpreg_ADC2_IE = ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_STATUS;

     
    if (NewState != DISABLE)
    {
         
        tmpreg_ADC2_IE |= ((uint32_t)ADC_IT << 2);
    }
    else
    {
         
        tmpreg_ADC2_IE &= ~((uint32_t)ADC_IT << 2);
    }

     
    ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_STATUS = tmpreg_ADC2_IE;
}






 
ITStatus ADC_GetITStatus(ADC_IT_Def ADC_IT)
{
    ITStatus bitstatus;
    uint32_t tmpreg;

     
    ((void)0U);

    tmpreg = ADC_GetStatus();
    tmpreg &= (tmpreg >> 2) & (uint32_t)ADC_IT;

    if (tmpreg == 0)
    {
        bitstatus = RESET;
    }
    else
    {
        bitstatus = SET;
    }

    return bitstatus;
}





 
ITStatus ADC1_GetITStatus(ADC_IT_Def ADC_IT)
{
    ITStatus bitstatus;
    uint32_t tmpreg;

     
    ((void)0U);

    tmpreg = ((MDR_ADC_TypeDef *) (0x40088000))->ADC1_STATUS;
    tmpreg &= (tmpreg >> 2) & (uint32_t)ADC_IT;

    if (tmpreg == 0)
    {
        bitstatus = RESET;
    }
    else
    {
        bitstatus = SET;
    }

  return bitstatus;
}








 
ITStatus ADC2_GetITStatus(ADC_IT_Def ADC_IT)
{
    ITStatus bitstatus;
    uint32_t tmpreg;

     
    ((void)0U);

    tmpreg = ((MDR_ADC_TypeDef *) (0x40088000))->ADC2_STATUS;
    tmpreg &= (tmpreg >> 2) & (uint32_t)ADC_IT;

    if (tmpreg == 0)
    {
        bitstatus = RESET;
    }
    else
    {
        bitstatus = SET;
    }

    return bitstatus;
}


   

   

   



 


