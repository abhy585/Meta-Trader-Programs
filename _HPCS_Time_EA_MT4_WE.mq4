//+------------------------------------------------------------------+
//|                                            _HPCS_Time_MT4_WE.mq4 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
//---
        string   ls_Start="03:30";       //Start time
         string   ls_Stop="10:00";        //Stop Time
         ObjectCreate(ChartID(),"_obj",OBJ_LABEL,0,0,0);
         if(StringToTime(ls_Start)>TimeCurrent() && StringToTime(ls_Stop)<TimeCurrent())
                  ObjectSetText("_obj","EA OPERATES",20,"Verdana",Green);
          else
                  ObjectSetText("_obj","EA NOT OPERATES",20,"Verdana",Red);
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
   
  }
//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
//---
   
    
   
  }
//+------------------------------------------------------------------+
//| Tester function                                                  |
//+------------------------------------------------------------------+
double OnTester()
  {
//---
   double ret=0.0;
//---

//---
   return(ret);
  }
//+------------------------------------------------------------------+
