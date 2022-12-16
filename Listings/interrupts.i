#line 1 "Interrupts.c"
#line 1 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\SPL\\MDR32FxQI\\inc\\MDR32FxQI_timer.h"




















 

 







 
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











 

#line 33 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\SPL\\MDR32FxQI\\inc\\MDR32FxQI_timer.h"



 



 



 



 
typedef enum
{
    TIMER_CntMode_ClkFixedDir  = (((uint32_t)0x0) << 6),  
    TIMER_CntMode_ClkChangeDir = (((uint32_t)0x1) << 6),  
    TIMER_CntMode_EvtFixedDir  = (((uint32_t)0x2) << 6),  
    TIMER_CntMode_EvtChangeDir = (((uint32_t)0x3) << 6)   
} TIMER_Counter_Mode_TypeDef;








 
typedef enum
{
    TIMER_CntDir_Up = (((uint32_t)0x0) << 3),  
    TIMER_CntDir_Dn = (((uint32_t)0x1) << 3)   
} TIMER_Counter_Dir_TypeDef;






 
typedef enum
{
    TIMER_EvSrc_TIM_CLK = (((uint32_t)0x0) << 8),  
    TIMER_EvSrc_TM1     = (((uint32_t)0x1) << 8),  
    TIMER_EvSrc_TM2     = (((uint32_t)0x2) << 8),  
    TIMER_EvSrc_TM3     = (((uint32_t)0x3) << 8),  
    TIMER_EvSrc_CH1     = (((uint32_t)0x4) << 8),  
    TIMER_EvSrc_CH2     = (((uint32_t)0x5) << 8),  
    TIMER_EvSrc_CH3     = (((uint32_t)0x6) << 8),  
    TIMER_EvSrc_CH4     = (((uint32_t)0x7) << 8),  
    TIMER_EvSrc_ETR     = (((uint32_t)0x8) << 8)   
} TIMER_Event_Src_TypeDef;

#line 99 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\SPL\\MDR32FxQI\\inc\\MDR32FxQI_timer.h"



 
typedef enum
{
    TIMER_FDTS_TIMER_CLK_div_1 = (((uint32_t)0x0) << 4),  
    TIMER_FDTS_TIMER_CLK_div_2 = (((uint32_t)0x1) << 4),  
    TIMER_FDTS_TIMER_CLK_div_3 = (((uint32_t)0x2) << 4),  
    TIMER_FDTS_TIMER_CLK_div_4 = (((uint32_t)0x3) << 4)   
} TIMER_Filter_Sampl_Clk_TypeDef;








 
typedef enum
{
    TIMER_ARR_Update_Immediately     =  (((uint32_t)0x0) << 1),  
    TIMER_ARR_Update_On_CNT_Overflow =  (((uint32_t)0x1) << 1)   
} TIMER_ARR_Update_Mode_TypeDef;






 
typedef enum
{
    TIMER_Filter_1FF_at_TIMER_CLK   = ((uint32_t)0x0),  
    TIMER_Filter_2FF_at_TIMER_CLK   = ((uint32_t)0x1),  
    TIMER_Filter_4FF_at_TIMER_CLK   = ((uint32_t)0x2),  
    TIMER_Filter_8FF_at_TIMER_CLK   = ((uint32_t)0x3),  
    TIMER_Filter_6FF_at_FTDS_div_2  = ((uint32_t)0x4),  
    TIMER_Filter_8FF_at_FTDS_div_2  = ((uint32_t)0x5),  
    TIMER_Filter_6FF_at_FTDS_div_4  = ((uint32_t)0x6),  
    TIMER_Filter_8FF_at_FTDS_div_4  = ((uint32_t)0x7),  
    TIMER_Filter_6FF_at_FTDS_div_8  = ((uint32_t)0x8),  
    TIMER_Filter_8FF_at_FTDS_div_8  = ((uint32_t)0x9),  
    TIMER_Filter_5FF_at_FTDS_div_16 = ((uint32_t)0xA),  
    TIMER_Filter_6FF_at_FTDS_div_16 = ((uint32_t)0xB),  
    TIMER_Filter_8FF_at_FTDS_div_16 = ((uint32_t)0xC),  
    TIMER_Filter_5FF_at_FTDS_div_32 = ((uint32_t)0xD),  
    TIMER_Filter_6FF_at_FTDS_div_32 = ((uint32_t)0xE),  
    TIMER_Filter_8FF_at_FTDS_div_32 = ((uint32_t)0xF)   
} TIMER_Filter_Config_TypeDef;

#line 167 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\SPL\\MDR32FxQI\\inc\\MDR32FxQI_timer.h"



 
typedef enum
{
    TIMER_ETR_Prescaler_None  = (((uint32_t)0x0) << 2),  
    TIMER_ETR_Prescaler_div_2 = (((uint32_t)0x1) << 2),  
    TIMER_ETR_Prescaler_div_4 = (((uint32_t)0x2) << 2),  
    TIMER_ETR_Prescaler_div_8 = (((uint32_t)0x3) << 2)   
} TIMER_ETR_Prescaler_TypeDef;








 
typedef enum
{
   TIMER_ETRPolarity_NonInverted = (((uint32_t)0x0) << 1),  
   TIMER_ETRPolarity_Inverted    = (((uint32_t)0x1) << 1)   
} TIMER_ETR_Polarity_TypeDef;






 
typedef enum
{
    TIMER_BRKPolarity_NonInverted = (((uint32_t)0x0) << 0),  
    TIMER_BRKPolarity_Inverted    = (((uint32_t)0x1) << 0)   
} TIMER_BRK_Polarity_TypeDef;






 
typedef enum
{
    TIMER_CHANNEL1 = ((uint32_t)0x0),  
    TIMER_CHANNEL2 = ((uint32_t)0x1),  
    TIMER_CHANNEL3 = ((uint32_t)0x2),  
    TIMER_CHANNEL4 = ((uint32_t)0x3)   
} TIMER_Channel_Number_TypeDef;








 
typedef enum
{
    TIMER_CH_MODE_PWM     = (((uint32_t)0x0) << 15),  
    TIMER_CH_MODE_CAPTURE = (((uint32_t)0x1) << 15)   
} TIMER_CH_Mode_TypeDef;






 
typedef enum
{
    TIMER_CH_ETR_RESET_Disable = (((uint32_t)0x0) << 13),  
    TIMER_CH_ETR_RESET_Enable  = (((uint32_t)0x1) << 13)   
} TIMER_CH_ETR_RESET_TypeDef;






 
typedef enum
{
    TIMER_CH_BRK_RESET_Disable = (((uint32_t)0x0) << 12),  
    TIMER_CH_BRK_RESET_Enable  = (((uint32_t)0x1) << 12)   
} TIMER_CH_BRK_RESET_TypeDef;






 
typedef enum
{
    TIMER_CH_REF_Format0 = (((uint32_t)0x0) << 9),  
    TIMER_CH_REF_Format1 = (((uint32_t)0x1) << 9), 


 
    TIMER_CH_REF_Format2 = (((uint32_t)0x2) << 9), 


 
    TIMER_CH_REF_Format3 = (((uint32_t)0x3) << 9), 

 
    TIMER_CH_REF_Format4 = (((uint32_t)0x4) << 9),  
    TIMER_CH_REF_Format5 = (((uint32_t)0x5) << 9),  
    TIMER_CH_REF_Format6 = (((uint32_t)0x6) << 9), 


 
    TIMER_CH_REF_Format7 = (((uint32_t)0x7) << 9)  


 
} TIMER_CH_REF_Format_TypeDef;

#line 297 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\SPL\\MDR32FxQI\\inc\\MDR32FxQI_timer.h"



 
typedef enum
{
    TIMER_CH_Prescaler_None  = ((uint32_t)0x0),  
    TIMER_CH_Prescaler_div_2 = ((uint32_t)0x1),  
    TIMER_CH_Prescaler_div_4 = ((uint32_t)0x2),  
    TIMER_CH_Prescaler_div_8 = ((uint32_t)0x3)   
} TIMER_CH_Prescaler_TypeDef;








 
typedef enum
{
    TIMER_CH_EvSrc_PE     = (((uint32_t)0x0) << 4),  
    TIMER_CH_EvSrc_NE     = (((uint32_t)0x1) << 4),  
    TIMER_CH_EvSrc_PE_OC1 = (((uint32_t)0x2) << 4),  
    TIMER_CH_EvSrc_PE_OC2 = (((uint32_t)0x3) << 4)   
} TIMER_CH_Event_Src_TypeDef;








 
typedef enum
{
    TIMER_CH_CCR1EvSrc_PE     = (((uint32_t)0x0) << 0),  
    TIMER_CH_CCR1EvSrc_NE     = (((uint32_t)0x1) << 0),  
    TIMER_CH_CCR1EvSrc_NE_OC1 = (((uint32_t)0x2) << 0),  
    TIMER_CH_CCR1EvSrc_NE_OC2 = (((uint32_t)0x3) << 0)   
} TIMER_CH_CCR1_Event_Src_TypeDef;








 
typedef enum
{
    TIMER_CH_CCR_Update_Immediately = (((uint32_t)0x0) << 3),  
    TIMER_CH_CCR_Update_On_CNT_eq_0 = (((uint32_t)0x1) << 3)   
} TIMER_CH_CCR_Update_Mode_TypeDef;






 
typedef enum
{
    TIMER_CHOPolarity_NonInverted = ((uint32_t)0x0),  
    TIMER_CHOPolarity_Inverted    = ((uint32_t)0x1)   
} TIMER_CH_OUT_Polarity_TypeDef;






 
typedef enum
{
    TIMER_CH_OutSrc_Only_0 = ((uint32_t)0x0),  
    TIMER_CH_OutSrc_Only_1 = ((uint32_t)0x1),  
    TIMER_CH_OutSrc_REF    = ((uint32_t)0x2),  
    TIMER_CH_OutSrc_DTG    = ((uint32_t)0x3)   
} TIMER_CH_OUT_Src_TypeDef;








 
typedef enum
{
    TIMER_CH_OutMode_Input     = ((uint32_t)0x0),  
    TIMER_CH_OutMode_Output    = ((uint32_t)0x1),  
    TIMER_CH_OutMode_REF_as_OE = ((uint32_t)0x2),  
    TIMER_CH_OutMode_DTG_as_OE = ((uint32_t)0x3)   
} TIMER_CH_OUT_Mode_TypeDef;








 
typedef enum
{
    TIMER_CH_DTG_ClkSrc_TIMER_CLK = (((uint32_t)0x0) << 4),  
    TIMER_CH_DTG_ClkSrc_FDTS      = (((uint32_t)0x1) << 4)   
} TIMER_CH_DTG_Clk_Src_TypeDef;






 
typedef enum
{
    TIMER_STATUS_CNT_ZERO         = (((uint32_t)0x1) <<  0),  
    TIMER_STATUS_CNT_ARR          = (((uint32_t)0x1) <<  1),  
    TIMER_STATUS_ETR_RISING_EDGE  = (((uint32_t)0x1) <<  2),  
    TIMER_STATUS_ETR_FALLING_EDGE = (((uint32_t)0x1) <<  3),  
    TIMER_STATUS_BRK              = (((uint32_t)0x1) <<  4),  
    TIMER_STATUS_CCR_CAP_CH1      = (((uint32_t)0x1) <<  5),  
    TIMER_STATUS_CCR_CAP_CH2      = (((uint32_t)0x1) <<  6),  
    TIMER_STATUS_CCR_CAP_CH3      = (((uint32_t)0x1) <<  7),  
    TIMER_STATUS_CCR_CAP_CH4      = (((uint32_t)0x1) <<  8),  
    TIMER_STATUS_CCR_REF_CH1      = (((uint32_t)0x1) <<  9),  
    TIMER_STATUS_CCR_REF_CH2      = (((uint32_t)0x1) << 10),  
    TIMER_STATUS_CCR_REF_CH3      = (((uint32_t)0x1) << 11),  
    TIMER_STATUS_CCR_REF_CH4      = (((uint32_t)0x1) << 12),  
    TIMER_STATUS_CCR_CAP1_CH1     = (((uint32_t)0x1) << 13),  
    TIMER_STATUS_CCR_CAP1_CH2     = (((uint32_t)0x1) << 14),  
    TIMER_STATUS_CCR_CAP1_CH3     = (((uint32_t)0x1) << 15),  
    TIMER_STATUS_CCR_CAP1_CH4     = (((uint32_t)0x1) << 16)   
} TIMER_Status_Flags_TypeDef;

#line 455 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\SPL\\MDR32FxQI\\inc\\MDR32FxQI_timer.h"

#line 473 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\SPL\\MDR32FxQI\\inc\\MDR32FxQI_timer.h"



#line 497 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\SPL\\MDR32FxQI\\inc\\MDR32FxQI_timer.h"



 
typedef enum
{
    TIMER_HCLKdiv1   = ((uint32_t)0x00),
    TIMER_HCLKdiv2   = ((uint32_t)0x01),
    TIMER_HCLKdiv4   = ((uint32_t)0x02),
    TIMER_HCLKdiv8   = ((uint32_t)0x03),
    TIMER_HCLKdiv16  = ((uint32_t)0x04),
    TIMER_HCLKdiv32  = ((uint32_t)0x05),
    TIMER_HCLKdiv64  = ((uint32_t)0x06),
    TIMER_HCLKdiv128 = ((uint32_t)0x07)
} TIMER_Clock_BRG_TypeDef;

#line 521 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\SPL\\MDR32FxQI\\inc\\MDR32FxQI_timer.h"




 
typedef struct
{

    uint16_t TIMER_IniCounter;       
 




    uint16_t TIMER_Prescaler;        

 

    uint16_t TIMER_Period;           

 





    uint16_t TIMER_CounterMode;      
 
    uint16_t TIMER_CounterDirection; 
 
    uint16_t TIMER_EventSource;      
 
    uint16_t TIMER_FilterSampling;   
 
    uint16_t TIMER_ARR_UpdateMode;   
 
    uint16_t TIMER_ETR_FilterConf;   
 
    uint16_t TIMER_ETR_Prescaler;    
 
    uint16_t TIMER_ETR_Polarity;     
 
    uint16_t TIMER_BRK_Polarity;     
 
} TIMER_CntInitTypeDef;



 
typedef struct
{
    uint16_t TIMER_CH_Number;           
 
    uint16_t TIMER_CH_Mode;             
 
    uint16_t TIMER_CH_ETR_Ena;          
 
    uint16_t TIMER_CH_ETR_Reset;        
 
    uint16_t TIMER_CH_BRK_Reset;        
 
    uint16_t TIMER_CH_REF_Format;       
 
    uint16_t TIMER_CH_Prescaler;        
 
    uint16_t TIMER_CH_EventSource;      
 
    uint16_t TIMER_CH_FilterConf;       
 
    uint16_t TIMER_CH_CCR_UpdateMode;   
 
    uint16_t TIMER_CH_CCR1_Ena;         
 
    uint16_t TIMER_CH_CCR1_EventSource; 
 
} TIMER_ChnInitTypeDef;



 
typedef struct
{
    uint16_t TIMER_CH_Number;            
 
    uint16_t TIMER_CH_DirOut_Polarity;   
 
    uint16_t TIMER_CH_DirOut_Source;     
 
    uint16_t TIMER_CH_DirOut_Mode;       
 
    uint16_t TIMER_CH_NegOut_Polarity;   
 
    uint16_t TIMER_CH_NegOut_Source;     
 
    uint16_t TIMER_CH_NegOut_Mode;       
 
    uint16_t TIMER_CH_DTG_MainPrescaler; 

 
    uint16_t TIMER_CH_DTG_AuxPrescaler;  

 
    uint16_t TIMER_CH_DTG_ClockSource;   
 
} TIMER_ChnOutInitTypeDef;

   




 



 





   

   




 




 


   




 

void TIMER_DeInit(MDR_TIMER_TypeDef* TIMERx);

void TIMER_CntInit(MDR_TIMER_TypeDef* TIMERx, const TIMER_CntInitTypeDef* TIMER_CntInitStruct);
void TIMER_CntStructInit(TIMER_CntInitTypeDef* TIMER_CntInitStruct);

void TIMER_Cmd(MDR_TIMER_TypeDef* TIMERx, FunctionalState NewState);





    void TIMER_SetCounter(MDR_TIMER_TypeDef* TIMERx, uint16_t Counter);
    uint16_t TIMER_GetCounter(MDR_TIMER_TypeDef* TIMERx);


void TIMER_SetCntPrescaler(MDR_TIMER_TypeDef* TIMERx, uint16_t Prescaler);
uint16_t TIMER_GetCntPrescaler(MDR_TIMER_TypeDef* TIMERx);






    void TIMER_SetCntAutoreload(MDR_TIMER_TypeDef* TIMERx, uint16_t Autoreload);
    void TIMER_CntAutoreloadConfig(MDR_TIMER_TypeDef* TIMERx, uint16_t Autoreload, TIMER_ARR_Update_Mode_TypeDef UpdateMode);
    uint16_t TIMER_GetCntAutoreload(MDR_TIMER_TypeDef* TIMERx);


void TIMER_CntEventSourceConfig(MDR_TIMER_TypeDef* TIMERx, TIMER_Event_Src_TypeDef EventSource);
void TIMER_FilterSamplingConfig(MDR_TIMER_TypeDef* TIMERx, TIMER_Filter_Sampl_Clk_TypeDef Prescaler);
void TIMER_CounterModeConfig(MDR_TIMER_TypeDef* TIMERx, TIMER_Counter_Mode_TypeDef Mode);
void TIMER_SetCounterDirection(MDR_TIMER_TypeDef* TIMERx, TIMER_Counter_Dir_TypeDef Direction);
void TIMER_ETRInputConfig(MDR_TIMER_TypeDef* TIMERx, TIMER_ETR_Prescaler_TypeDef Prescaler, TIMER_ETR_Polarity_TypeDef Polarity, TIMER_Filter_Config_TypeDef Filter);
void TIMER_ETRFilterConfig(MDR_TIMER_TypeDef* TIMERx, TIMER_Filter_Config_TypeDef Filter);
void TIMER_ETRPrescalerConfig(MDR_TIMER_TypeDef* TIMERx, TIMER_ETR_Prescaler_TypeDef Prescaler);
void TIMER_ETRPolarityConfig(MDR_TIMER_TypeDef* TIMERx, TIMER_ETR_Polarity_TypeDef Polarity);
void TIMER_BRKPolarityConfig(MDR_TIMER_TypeDef* TIMERx, TIMER_BRK_Polarity_TypeDef Polarity);
TIMER_Counter_Dir_TypeDef TIMER_GetCounterDirection(MDR_TIMER_TypeDef* TIMERx);
FlagStatus TIMER_GetCntWriteComplete(MDR_TIMER_TypeDef* TIMERx);

void TIMER_ChnInit(MDR_TIMER_TypeDef* TIMERx, const TIMER_ChnInitTypeDef* TIMER_ChnInitStruct);
void TIMER_ChnStructInit(TIMER_ChnInitTypeDef* TIMER_ChnInitStruct);






    void TIMER_SetChnCompare(MDR_TIMER_TypeDef* TIMERx, TIMER_Channel_Number_TypeDef Channel, uint16_t Compare);
    void TIMER_ChnCompareConfig(MDR_TIMER_TypeDef* TIMERx, TIMER_Channel_Number_TypeDef Channel, uint16_t Compare, TIMER_CH_CCR_Update_Mode_TypeDef UpdateMode);
    uint16_t TIMER_GetChnCapture(MDR_TIMER_TypeDef* TIMERx, TIMER_Channel_Number_TypeDef Channel);







    void TIMER_SetChnCompare1(MDR_TIMER_TypeDef* TIMERx, TIMER_Channel_Number_TypeDef Channel, uint16_t Compare);
    void TIMER_ChnCompare1Config(MDR_TIMER_TypeDef* TIMERx, TIMER_Channel_Number_TypeDef Channel, uint16_t Compare, TIMER_CH_CCR_Update_Mode_TypeDef UpdateMode);
    uint16_t TIMER_GetChnCapture1(MDR_TIMER_TypeDef* TIMERx, TIMER_Channel_Number_TypeDef Channel);


void TIMER_ChnETR_Cmd(MDR_TIMER_TypeDef* TIMERx, TIMER_Channel_Number_TypeDef Channel, FunctionalState NewState);
void TIMER_ChnETRResetConfig(MDR_TIMER_TypeDef* TIMERx, TIMER_Channel_Number_TypeDef Channel, TIMER_CH_ETR_RESET_TypeDef NewState);
void TIMER_ChnBRKResetConfig(MDR_TIMER_TypeDef* TIMERx, TIMER_Channel_Number_TypeDef Channel, TIMER_CH_BRK_RESET_TypeDef NewState);
void TIMER_ChnREFFormatConfig(MDR_TIMER_TypeDef* TIMERx, TIMER_Channel_Number_TypeDef Channel, TIMER_CH_REF_Format_TypeDef Format);
void TIMER_ChnCapturePrescalerConfig(MDR_TIMER_TypeDef* TIMERx, TIMER_Channel_Number_TypeDef Channel, TIMER_CH_Prescaler_TypeDef Prescaler);
void TIMER_ChnEventSourceConfig(MDR_TIMER_TypeDef* TIMERx, TIMER_Channel_Number_TypeDef Channel, TIMER_CH_Event_Src_TypeDef EventSource);
void TIMER_ChnFilterConfig(MDR_TIMER_TypeDef* TIMERx, TIMER_Channel_Number_TypeDef Channel, TIMER_Filter_Config_TypeDef Filter);
FlagStatus TIMER_GetChnWriteComplete(MDR_TIMER_TypeDef* TIMERx, TIMER_Channel_Number_TypeDef Channel);
void TIMER_ChnCCR1_EventSourceConfig(MDR_TIMER_TypeDef* TIMERx, TIMER_Channel_Number_TypeDef Channel, TIMER_CH_CCR1_Event_Src_TypeDef EventSource);
void TIMER_ChnCCR1_Cmd(MDR_TIMER_TypeDef* TIMERx, TIMER_Channel_Number_TypeDef Channel, FunctionalState NewState);

void TIMER_ChnOutInit(MDR_TIMER_TypeDef* TIMERx, const TIMER_ChnOutInitTypeDef* TIMER_ChnOutInitStruct);
void TIMER_ChnOutStructInit(TIMER_ChnOutInitTypeDef* TIMER_ChnOutInitStruct);
void TIMER_ChnOutConfig(MDR_TIMER_TypeDef* TIMERx, TIMER_Channel_Number_TypeDef Channel, TIMER_CH_OUT_Src_TypeDef OutSource, TIMER_CH_OUT_Mode_TypeDef Mode, TIMER_CH_OUT_Polarity_TypeDef Polarity);
void TIMER_ChnOutSourceConfig(MDR_TIMER_TypeDef* TIMERx, TIMER_Channel_Number_TypeDef Channel, TIMER_CH_OUT_Src_TypeDef OutSource);
void TIMER_ChnOutModeConfig(MDR_TIMER_TypeDef* TIMERx, TIMER_Channel_Number_TypeDef Channel, TIMER_CH_OUT_Mode_TypeDef Mode);
void TIMER_ChnOutPolarityConfig(MDR_TIMER_TypeDef* TIMERx, TIMER_Channel_Number_TypeDef Channel, TIMER_CH_OUT_Polarity_TypeDef Polarity);
void TIMER_ChnNOutConfig(MDR_TIMER_TypeDef* TIMERx, TIMER_Channel_Number_TypeDef Channel, TIMER_CH_OUT_Src_TypeDef OutSource, TIMER_CH_OUT_Mode_TypeDef Mode, TIMER_CH_OUT_Polarity_TypeDef Polarity);
void TIMER_ChnNOutSourceConfig(MDR_TIMER_TypeDef* TIMERx, TIMER_Channel_Number_TypeDef Channel, TIMER_CH_OUT_Src_TypeDef OutSource);
void TIMER_ChnNOutModeConfig(MDR_TIMER_TypeDef* TIMERx, TIMER_Channel_Number_TypeDef Channel, TIMER_CH_OUT_Mode_TypeDef Mode);
void TIMER_ChnNOutPolarityConfig(MDR_TIMER_TypeDef* TIMERx, TIMER_Channel_Number_TypeDef Channel, TIMER_CH_OUT_Polarity_TypeDef Polarity);
void TIMER_ChnOutDTGConfig(MDR_TIMER_TypeDef* TIMERx, TIMER_Channel_Number_TypeDef Channel, uint32_t MainPrescaler, uint32_t AuxPrescaler, TIMER_CH_DTG_Clk_Src_TypeDef ClockSource);

uint32_t TIMER_GetStatus(MDR_TIMER_TypeDef* TIMERx);
FlagStatus TIMER_GetFlagStatus(MDR_TIMER_TypeDef* TIMERx, TIMER_Status_Flags_TypeDef Flag);
void TIMER_ClearFlag(MDR_TIMER_TypeDef* TIMERx, uint32_t Flags);



    void TIMER_DMACmd(MDR_TIMER_TypeDef* TIMERx, uint32_t TIMER_DMASource, FunctionalState NewState);


void TIMER_ITConfig(MDR_TIMER_TypeDef* TIMERx, uint32_t TIMER_IT, FunctionalState NewState);
ITStatus TIMER_GetITStatus(MDR_TIMER_TypeDef* TIMERx, TIMER_Status_Flags_TypeDef TIMER_IT);

void TIMER_BRGInit(MDR_TIMER_TypeDef* TIMERx, TIMER_Clock_BRG_TypeDef TIMER_BRG);

   

   

   









 


#line 2 "Interrupts.c"
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


   

   

   









 


#line 3 "Interrupts.c"
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

   

   

   









 


#line 4 "Interrupts.c"
#line 1 "C:\\Programs\\Keil v537\\Packs\\Milandr\\MDR32FxQI\\1.0\\Libraries\\SPL\\MDR32FxQI\\inc\\MDR32FxQI_uart.h"




















 

 







 
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

   

   

   









 


#line 5 "Interrupts.c"
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
	
 
 
 













	
#line 6 "Interrupts.c"
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


 





 				


 	




 				


	
	
 
 
 	









































	
	


















	
 
 
 							






























				





 
 
 							





#line 7 "Interrupts.c"
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



#line 8 "Interrupts.c"
#line 1 "Function.h"
void Rele_Status(); 	
void Battery_Parameters(void);  
void Set_Battery_Voltage(float Battery_Voltage); 
void Battery_Current_Stabilization(float Battery_Current); 
void Check_Status(void); 
void Mode_Of_Work(void); 
int Type_Of_KAN_D(void); 
float Choose_Current_Of_Charge_Mode(float I, float Ibat_max); 
float* Choose_Current_Of_Charge_Mode2(float I, float Ibat_max); 
 
unsigned char Check_Battery_Connect(void); 
void Calcutale_Battery_Level(void);	 
Status Check_I_LOAD_Value (void); 
 
float U_Hysteresis_KAN_D (void); 
void Testing_UPS_D(void);	



#line 9 "Interrupts.c"
#line 1 "Function_Interrupts.h"
void Led_Lighting (); 
void ADC_Calculate(); 
void Warning_Handler(); 
void Check_UPS_Charge_To_Discharge(void);
void Check_UPS_Discharge_To_Charge(void);
void Check_UPS_Discharge_To_Alarm(void);
void Check_UPS_Alarm_To_Discharge(void);
void Check_UPS_Sleep_To_Charge(void);
void Check_I_Battery_Discharge(void);
void Counter_Handling();
#line 10 "Interrupts.c"



void Timer1_IRQHandler(void)
{

	 
  TIMER_ClearFlag(((MDR_TIMER_TypeDef *) (0x40070000)), TIMER_STATUS_CNT_ARR);	
	Counter_Handling (&Counter_Starting_Initialization);
	
	
	
	
	Counter_Handling (&Battery.Counter_Check_I_Battery);
	Counter_Handling (&Counter_Anti_Bounce);
	Counter_Handling (&Counter_Transient_Process);
	Counter_Handling (&Counter_Transient_Process_UPS);
	Counter_Handling (&I2C_OW_Converter.Counter_ACK_Flag);
	Counter_Handling (&I2C_OW_Converter.Counter_I2C_Command_End);
	
	
	
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
	 
  TIMER_ClearFlag(((MDR_TIMER_TypeDef *) (0x40078000)), TIMER_STATUS_CNT_ARR);	
	__isb(0xF);	 					 
	
	Warning_Handler(&Wrng_U_KAN_D);
	Warning_Handler(&Wrng_U_LOAD);
	Warning_Handler(&Wrng_I_LOAD);
	
	
	
}


void UART1_IRQHandler(void)
{
	if (UART_GetITStatusMasked(((MDR_UART_TypeDef *) (0x40030000)), UART_IT_RX) == SET)	
	 {
	   UART_ClearITPendingBit(((MDR_UART_TypeDef *) (0x40030000)), UART_IT_RX);																
		 RS485.Package_Data[RS485.Package_Data_Index]=UART_ReceiveData(((MDR_UART_TypeDef *) (0x40030000)));	  
		 (RS485.Package_Data_Index==120)?(RS485.Package_Data_Index=0):(RS485.Package_Data_Index++);
		 RS485.Package_Is_New = YES;											
		 RS485.Counter_Waiting_Receive_End.Status = ON;		
		 RS485.Counter_Waiting_Receive_End.Count = 0;			
	 }
}






