//+------------------------------------------------------------------+
//|                                    _HPCS_dateTime_IND_MT4_WE.mq4 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#property indicator_chart_window
#property indicator_buffers 1
#property  indicator_color1 clrAliceBlue
double gd_Open[];       //Open
datetime gdt_prev;
input int first_param=1;
string shortname;
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- indicator buffers mapping
   
            gdt_prev=iTime(Symbol(),0,0);
            SetIndexBuffer(0,gd_Open,INDICATOR_DATA);
           // SetIndexStyle(0,DRAW_HISTOGRAM,0,20);
            shortname=StringFormat("Demo_ChartIndicatorDelete(%d)",first_param);
                          
            IndicatorSetString(INDICATOR_SHORTNAME,shortname);
   
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
                  if(prev_calculated==0)
                  {
                  
                           for(int i=Bars-5;i>0;i--)
                           {
                           
                                    gd_Open[i]=Open[i];
                             }
                             
                    }
                  if(fd_isNewBar())
                  {
                        ChartIndicatorDelete(ChartID(),0,shortname);
                  }
                              
                  
//--- return value of prev_calculated for next call
   return(rates_total);
  }
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
//---
           // ChartIndicatorDelete(ChartID(),0,shortname);
   
  }
 bool fd_isNewBar()
 {
 
         datetime ldt_temp = iTime(Symbol(),0,0);
         if(ldt_temp!=gdt_prev)
         {
                  gdt_prev=ldt_temp;
                  return true;
          }
          
          
          return false;
}
          