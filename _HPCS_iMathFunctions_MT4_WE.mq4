//+------------------------------------------------------------------+
//|                                  _HPCS_iMathFunctions_MT4_WE.mq4 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
         double ld_data = 234.56784;      //data
         
         Print("Absolute Value : ",MathAbs(ld_data));
         Print("Smallest integer value ",MathCeil(ld_data));
         Print("Greatest Integer Value ",MathFloor(ld_data));
         Print("Maximum of Two    : ",MathMax(ld_data,300));
         Print("Minimum of Two    : ",MathMin(ld_data,300));
         Print("MOD of Data       : ",MathMod(ld_data,20.02));
         Print("Power of 23  : ",MathPow(23,5));
         Print("Random Value :",MathRand());
         Print("Round of Data : ",MathRound(ld_data));         
   
  }
//+------------------------------------------------------------------+
