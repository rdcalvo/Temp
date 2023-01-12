  
        /*
      * C:\Users\Pedro H\Documents\GitHub\MestradoHeric\Matlab\simul\slprj\sim\_sharedutils\rt_urand_Upu32_Yd_f_pw_snf.c
      * 
        * Code generation for model "RudderActuatorChannel_control_acc".
  *
  * Model version              : 1.760
  * Simulink Coder version : 8.8 (R2015a) 09-Feb-2015
  * C source code generated on : Mon Mar 20 21:33:10 2017
      * Created for block: RudderActuatorChannel_control_acc
      */


      

  
#include "rtwtypes.h"

#include "multiword_types.h"
          

      #include "rt_urand_Upu32_Yd_f_pw_snf.h"

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
                            
    
        
     

              
     real_T rt_urand_Upu32_Yd_f_pw_snf(uint32_T *u)
    {
          uint32_T lo;
uint32_T hi;
/* Uniform random number generator (random number between 0 and 1)

#define IA      16807                      magic multiplier = 7^5
#define IM      2147483647                 modulus = 2^31-1
#define IQ      127773                     IM div IA
#define IR      2836                       IM modulo IA
#define S       4.656612875245797e-10      reciprocal of 2^31-1
test = IA * (seed % IQ) - IR * (seed/IQ)
seed = test < 0 ? (test + IM) : test
return (seed*S)
 */
lo = *u % 127773U * 16807U;
hi = *u / 127773U * 2836U;
if (lo < hi) {
    *u = 2147483647U - (hi - lo);
} else {
    *u = lo - hi;
}
return (real_T)*u * 4.6566128752457969E-10;


    }
    

            

  
  
  
  
  
  
  
  
