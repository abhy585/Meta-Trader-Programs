//+------------------------------------------------------------------+
//|                                     _HPCS_Signals_IND_MT4_WE.mq4 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#property indicator_chart_window
#property indicator_buffers 2
#property indicator_color1 Red
#property indicator_color2 Green
double gd_zero[],gd_first[];


#property show_inputs
input int ii_tolerance=10;
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- indicator buffers mapping
   
         SetIndexBuffer(0,gd_zero);
         SetIndexBuffer(1,gd_first);
      //   SetIndexArrow(
 
//---
   return(INIT_SUCCEEDED);
  }
//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int OnCalculate(const int rates_total,
                const int prev_calculated,
                const datetime &time[],
                const double &open[],
                const double &high[],
                const double &low[],
                const double &close[],
                const long &tick_volume[],
                const long &volume[],
                const int &spread[])
  {
//---
           
           
           
           
           gd_zero[0]=MathAbs(Close[0]-Open[0]);
           gd_zero[1]=MathAbs(Close[1]-Open[1]);
           if(MathAbs(gd_zero[0]-gd_zero[1])<10)
           {
                     SetIndexArrow(0,232);
                     gd_zero[0]=
           }
   
 
            
       
   
//--- return value of prev_calculated for next call
   return(rates_total);
  }
//+------------------------------------------------------------------+
