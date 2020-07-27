//+------------------------------------------------------------------+
//|                                        _HPCS_MACD_IND_MT4_WE.mq4 |
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
double gd_buy[];     //buySignal
double gd_sell[];    //sellSignal
datetime gdt_prev;         //prev Time
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- indicator buffers mapping
            gdt_prev=iTime(Symbol(),0,0);
            SetIndexBuffer(0,gd_buy);
            SetIndexStyle(0,DRAW_ARROW,0,10);
            SetIndexArrow(0,233);
            SetIndexBuffer(1,gd_sell);
            SetIndexStyle(1,DRAW_ARROW,0,10);
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
        
        if(fd_isNewBar())
        {
             double ld_line=iMACD(NULL,0,12,26,9,PRICE_CLOSE,MODE_MAIN,0);
             if(ld_line>0)
             {          gd_sell[1]=Open[1];
             
             }
             else if(ld_line<0)
             {
                        gd_buy[1]=Open[1];
                        
              }
              
              
         }               
      
//--- return value of prev_calculated for next call
   return(rates_total);
  }
//+------------------------------------------------------------------+
bool fd_isNewBar()
{     

         datetime  ldt_Temp=iTime(Symbol(),0,0);
         if(ldt_Temp!=gdt_prev)
         {
                  gdt_prev=ldt_Temp;
                  return true;       
          }
          
          return false;
          
          
}