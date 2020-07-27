//+------------------------------------------------------------------+
//|                                  _HPCS_convStringChar_MT4_WE.mq4 |
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
         char lc_1D_Array[]={'p','o','o','j','a'};       //Character Array
         char lc_1D_Conv_Array[];                         //Converted Array
         string ls_String = CharArrayToString(lc_1D_Array) ;      //String
       
         Print("Conversion From Character to string : ",CharArrayToString(lc_1D_Array));
         
         Print("Conversion from String to array : ",StringToCharArray(ls_String,lc_1D_Conv_Array,0,-1,CP_ACP));
         for(int i=0;i<StringToCharArray(ls_String,lc_1D_Conv_Array,0,-1,CP_ACP);i++)
               Print(CharToStr(lc_1D_Conv_Array[i]));
            
                  
    }
//+------------------------------------------------------------------+
