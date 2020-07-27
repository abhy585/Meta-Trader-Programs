//+------------------------------------------------------------------+
//|                                     min_max_range_size_Array.mq4 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
      int ii_1D_array[]={1,2,32,55,65};         //Array
      
      Print("Maximal of Array : ",ii_1D_array[ArrayMaximum(ii_1D_array)]);
      Print("Minimal of Array : ",ii_1D_array[ArrayMinimum(ii_1D_array)]);
      Print("Size of Array    : ",ArraySize(ii_1D_array));
      Print("Range of Array   : ",ArrayRange(ii_1D_array,0));
  }
//+------------------------------------------------------------------+
