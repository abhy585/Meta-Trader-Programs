//+------------------------------------------------------------------+
//|                                   hpc_exploreAl_C_MsgB_Pls_P.mq4 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#property  show_inputs


//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
      MessageBox("OK","Messenger");
      Alert("alert");
      Print("Exploring Different functions");
      ChartSetString(ChartID(),CHART_COMMENT,"HI");
      PlaySound("wave file.wav ");
      
     
   }
//+------------------------------------------------------------------+
