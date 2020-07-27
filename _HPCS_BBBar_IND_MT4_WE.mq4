//+------------------------------------------------------------------+
//|                                       _HPCS_BBBar_IND_MT4_WE.mq4 |
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
#property indicator_color1 clrAqua
#property indicator_color2 clrRed
double   gd_Open[]   ;   //bulishBar
double   gd_Close[]    ;  //bearishBar
int gi_bufferIndex=0;
datetime gdt_prev;
int openIndex,closeIndex;
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- indicator buffers mapping
         gdt_prev=iTime(Symbol(),0,0);
         SetIndexBuffer(0,gd_Open);
         SetIndexStyle(0,DRAW_HISTOGRAM,0,15);
         
         SetIndexBuffer(1,gd_Close);
         SetIndexStyle(1,DRAW_HISTOGRAM,0,15);
         
        // SetIndexBuffer(1,gd_bearish);
         //SetIndexStyle(1,DRAW_COLORLINE,0,20);
         
       
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
         int li_limit=rates_total-prev_calculated;
         if(prev_calculated==0)
         {
               for(int i=Bars-5;i>0;i--)
               {                //Bearish
                                      
                                   gd_Close[i] = Open[i];
                                   gd_Open[i] = Close[i];
                        //    if(Open[i]<Open[i-1] && Open[i-1]<
               }
               ArraySetAsSeries(gd_Close,true);
               ArraySetAsSeries(gd_Open,true);
        }
        else if(fb_isNewBar())
        {   
                 
//                 if(Open[0]>Close[0])
//                           {     
//                                       gd_bullish[i]=Open[i]+10*Point;
//                                      Bearish
//                                      
//                                   gd_Close[closeIndex++] = Open[0];
//                                       
//                            }
//                            else  if(Open[0]<Close[0])
//                           {     
//                                   gd_Open[openIndex++] = Close[0];
//                                       
//                            }
                       
                            gd_Close[1] = Open[1];
                            gd_Open[1] = Close[1];
        }
        
        //Print(ArraySize(gd_Close), " ",ArraySize(gd_Open));
   
            
//--- return value of prev_calculated for next call
   return(rates_total);
  }
//+------------------------------------------------------------------+
bool fb_isNewBar()
{     

         datetime ldt_Temp=iTime(Symbol(),0,0);
         if(gdt_prev!=ldt_Temp)
         {        
                  gdt_prev=ldt_Temp;
                  
                  return true;
          }
          return false;
 }
          
         