//+------------------------------------------------------------------+
//|                                        _HPCS_PSAR_IND_MT4_WE.mq4 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#property indicator_chart_window
#property indicator_buffers 2
#property indicator_color1 clrRed
#property indicator_color2 clrBlue
double gd_Rdot[];       //redDot
double gd_bDot[];       //blueDot
datetime gdt_prev;
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- indicator buffers mapping
            gdt_prev = iTime(Symbol(),0,0);
            SetIndexBuffer(0,gd_Rdot);
            SetIndexStyle(0,DRAW_ARROW,STYLE_DOT);
            SetIndexArrow(0,159);
            SetIndexBuffer(1,gd_bDot);
            SetIndexStyle(1,DRAW_ARROW,STYLE_DOT);
            SetIndexArrow(1,159);
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
            if(fd_isNewBar())
            {
                     if(iSAR(NULL,0,0.02,0.2,0)>0)
                           gd_Rdot[1] = Open[1]+20*Point;
                      else if(iSAR(NULL,0,0.02,0.2,0)<0)
                            gd_bDot[1] = Open[1]+20*Point;
                            
                            
            }
                                 
                       
                     
//--- return value of prev_calculated for next call
   return(rates_total);
  }
//+------------------------------------------------------------------+
bool fd_isNewBar()
{
         datetime ldt_temp = iTime(Symbol(),0,0);
         if(ldt_temp != gdt_prev)
         {
                  gdt_prev = ldt_temp;
                  return true;
          }
           
           return false;
           
           
}