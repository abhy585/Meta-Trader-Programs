//+------------------------------------------------------------------+
//|                                   _HPCS_TBSignals_IND_MT4_WE.mq4 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#property indicator_chart_window
#property show_inputs
#property indicator_buffers 2
#property indicator_color1 clrRed
#property indicator_color2 clrBlue
double gd_top[]    ;     //Top signal
double gd_bottom[]  ;    //Bottom Signal
datetime idt_prevTime;
int gi_bufferIndexT=0;           //topIndex
int gi_bufferIndexB=0;           //BottomIndex
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- indicator buffers mapping
            idt_prevTime=iTime(Symbol(),0,0);
            SetIndexBuffer(0,gd_top);
            SetIndexStyle(0,DRAW_ARROW);
            SetIndexArrow(0,233);
            SetIndexBuffer(1,gd_bottom);
            SetIndexStyle(1,DRAW_ARROW);
            SetIndexArrow(1,232);
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
               
               if(fb_isNewBar())
               {        
                    
                     if(Open[2]>Open[1] && Open[2]>Open[3])
                     {     
                             Print("satisfied");
                              gd_top[gi_bufferIndexT++]=Open[2]+10*Point;
                              
                      }
                      else if(Open[2]<Open[1] && Open[2]<Open[3])
                      {
                              Print("Satisfied");
                              gd_bottom[gi_bufferIndexB++]=Close[2]-10*Point;
                              
                              
                       }
                       
                }
                     
                     
                     
                   
//--- return value of prev_calculated for next call
   return(rates_total);
  }
//+------------------------------------------------------------------+
bool  fb_isNewBar()
{        
         datetime ldt_temp = iTime(Symbol(),0,0);
         if(ldt_temp!=idt_prevTime)
         {     
                     idt_prevTime=ldt_temp;
                     return true;
                     
                     
          }
          return false;
          
 }