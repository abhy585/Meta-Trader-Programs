//+------------------------------------------------------------------+
//|                                  _HPCS_Stochastic_IND_MT4_WE.mq4 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#property indicator_chart_window
#property indicator_buffers 2
#property indicator_color1 clrBlue
#property indicator_color2 clrRed
double gd_buy[];       //buy
double gd_sell[];       //sell
datetime gdt_prev;

//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- indicator buffers mapping
   
         gdt_prev=iTime(Symbol(),0,0);
         SetIndexBuffer(0,gd_buy);
         SetIndexStyle(0,DRAW_ARROW,0,05);
         SetIndexArrow(0,233);
         SetIndexBuffer(1,gd_sell);
         SetIndexStyle(1,DRAW_ARROW,0,05);
         SetIndexArrow(0,234);
         
   
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

         if(fd_isNewbar())
         {
         
                //  double ld_return = iStochastic(NULL,0,5,3,3,MODE_SMA,0,MODE_MAIN,0);
                  //if(ld_return>0)
                    if(iStochastic(NULL,0,5,3,3,MODE_SMA,0,MODE_MAIN,0)>iStochastic(NULL,0,5,3,3,MODE_SMA,0,MODE_SIGNAL,0))     
                     {
                                    gd_buy[1]=Open[1]+10*Point;
                                    
                     }
                     else if(iStochastic(NULL,0,5,3,3,MODE_SMA,0,MODE_MAIN,0)>iStochastic(NULL,0,5,3,3,MODE_SMA,0,MODE_SIGNAL,0))
                     {        
                                    gd_sell[1]=Open[1]+10*Point;
                                    
                      }
          }
                              
//--- return value of prev_calculated for next call
   return(rates_total);
  }
//+------------------------------------------------------------------+
bool fd_isNewbar()
{

      datetime ldt_temp = iTime(Symbol(),0,0);
      if(ldt_temp != gdt_prev)
      {
                  gdt_prev = ldt_temp;
                  return true;
                  
                  
       }
       return false;
}
       
                  
