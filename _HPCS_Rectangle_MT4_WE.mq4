//+------------------------------------------------------------------+
//|                                       _HPCS_Rectangle_MT4_WE.mq4 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#property indicator_chart_window
#property script_show_inputs



//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- indicator buffers mapping
        ObjectCreate(ChartID(),"Rectangle",OBJ_RECTANGLE_LABEL,0,0,0,0);
        ObjectSetInteger(ChartID(),"Rectangle",OBJPROP_XDISTANCE,100);
        ObjectSetInteger(ChartID(),"Rectangle",OBJPROP_YDISTANCE,100);
        ObjectSetInteger(ChartID(),"Rectangle",OBJPROP_XSIZE,200);
        ObjectSetInteger(ChartID(),"Rectangle",OBJPROP_YSIZE,400);
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
   
//--- return value of prev_calculated for next call
   return(rates_total);
  }
//+------------------------------------------------------------------+
