//+------------------------------------------------------------------+
//|                                                          abs.mq4 |
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
      FolderCreate("HPC_MQL",0);
      string ls_file="HPC_MQL/_OHLC.csv";       //File OHL
      string ls_File="HPC_MQL/abc.csv";           //File abc
      int li_Ohandle=FileOpen(ls_file,FILE_READ|FILE_WRITE|FILE_CSV);        //OHC handle
      if(li_Ohandle!=0)
       {
             FileWrite(li_Ohandle,Open[1],Close[1], High[1], Low[1]);
          
              
       }
       FileClose(li_Ohandle);
       Print("Size of File : " , FileSize(li_Ohandle));
   
//---
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
