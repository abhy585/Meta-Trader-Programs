//+------------------------------------------------------------------+
//|                                         _HPCS_findSub_MT4_WE.mq4 |
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
         string ls_String = "HPC Sphere ";      //String
         Print("SubString of isString : ",StringSubstr(ls_String,0,5));
  }
//+------------------------------------------------------------------+
