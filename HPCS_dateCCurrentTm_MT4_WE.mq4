//+------------------------------------------------------------------+
//|                                   HPCS_dateCCurrentTm_MT4_WE.mq4 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#property show_inputs
input datetime _startDtTime = D'2019.06.05 00:00:01';             //Start Time
input datetime _stopDtTime =  D'2019.06.05 11:30:40';             //Stop Time
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
        // Print("Current Time : ",TimeCurrent());
         if(TimeCurrent()> _startDtTime && TimeCurrent()< _stopDtTime)
                  Print("OK");
          else
                  Print("NOT OK");
   
  }
//+------------------------------------------------------------------+
