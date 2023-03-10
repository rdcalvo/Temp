  
        /*
      * C:\Users\Pedro H\Documents\GitHub\MestradoHeric\Matlab\simul\slprj\sim\_sharedutils\look1_binlxpw.c
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
          

      #include "look1_binlxpw.h"

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
               
real_T look1_binlxpw(real_T u0, const real_T bp0[], const real_T table[], uint32_T maxIndex)
{
    real_T frac;
    uint32_T iRght;
    uint32_T iLeft;
    uint32_T bpIdx;
    /* Lookup 1-D
   Search method: 'binary'
   Use previous index: 'off'
   Interpolation method: 'Linear'
   Extrapolation method: 'Linear'
   Use last breakpoint for index at or above upper limit: 'off'
   Remove protection against out-of-range input in generated code: 'off'
 */
    /* Prelookup - Index and Fraction
   Index Search method: 'binary'
   Extrapolation method: 'Linear'
   Use previous index: 'off'
   Use last breakpoint for index at or above upper limit: 'off'
   Remove protection against out-of-range input in generated code: 'off'
 */
    if (u0 <= bp0[0U]) {
        iLeft = 0U;
        frac = (u0 - bp0[0U]) / (bp0[1U] - bp0[0U]);
    } else if (u0 < bp0[maxIndex]) {
        /* Binary Search */
        bpIdx = maxIndex >> 1U;
        iLeft = 0U;
        iRght = maxIndex;
        while (iRght - iLeft > 1U) {
            if (u0 < bp0[bpIdx]) {
                iRght = bpIdx;
            } else {
                iLeft = bpIdx;
            }
            bpIdx = (iRght + iLeft) >> 1U;
        }
        frac = (u0 - bp0[iLeft]) / (bp0[iLeft + 1U] - bp0[iLeft]);
    } else {
        iLeft = maxIndex - 1U;
        frac = (u0 - bp0[maxIndex - 1U]) / (bp0[maxIndex] - bp0[maxIndex - 1U]);
    }
    /* Interpolation 1-D
   Interpolation method: 'Linear'
   Use last breakpoint for index at or above upper limit: 'off'
   Overflow mode: 'portable wrapping'
 */
    return (table[iLeft + 1U] - table[iLeft]) * frac + table[iLeft];
}
            

  
  
  
  
  
  
  
  
