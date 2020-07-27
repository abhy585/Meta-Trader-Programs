//+------------------------------------------------------------------+
//|                                      _HPCS_Buffer_IND_MT4_WE.mq4 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#property indicator_chart_window
#property indicator_buffers 1
#property indicator_color1 clrRed
double gd_min[];
input int ii_tolerance = 5; //Tollerance
datetime gdt_prevBarTime;
int gi_BufferIndex = 0;
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- indicator buffers mapping
           
            //Saving for new bar
            gdt_prevBarTime = iTime(Symbol(),0,0);
            
            SetIndexBuffer(0,gd_min);
            SetIndexStyle(0,DRAW_ARROW);
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
         if(isNewBar())
         {
             double ld_diffBar0 =  MathAbs(Close[0] - Open[0]);
             double ld_diffBar1 =  MathAbs(Close[1] - Open[1]);
             
             double ld_finalDiff = MathAbs(ld_diffBar0 - ld_diffBar1);
             
             double ld_tollerancePrice  =  ii_tolerance * Point;
             
             if(ld_tollerancePrice < ld_finalDiff)
             {
                 //Print("Satisfied");
                 gd_min[gi_BufferIndex++] = High[1] + (10 * Point);
               
             }
            
         }
   
//--- return value of prev_calculated for next call
   return(rates_total);
  }
//+------------------------------------------------------------------+


bool isNewBar()
{
     datetime ldt_temp = iTime(Symbol(),0,0);
     
     if(gdt_prevBarTime != ldt_temp)
     {
          gdt_prevBarTime = ldt_temp;
          return true;
     }
     
     return false;

}