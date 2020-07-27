//+------------------------------------------------------------------+
//|                                        HPCS_arrayCopy_MT4_WE.mq4 |
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
      int ii_SourceArray[]={21,23,45,32,67};       //Source Array
      int ii_DestinationArray[];                   //Destination Array
     // ArrayResize(ii_DestinationArray,ArraySize(ii_SourceArray));
      for(int i=0;i<ArraySize(ii_SourceArray);i++)
         Print(ii_SourceArray[i]);
         
      ArrayCopy(ii_DestinationArray,ii_SourceArray,0,0,WHOLE_ARRAY);
     // printf("***Copied Array***");
     // Print(ArraySize(ii_DestinationArray));
      for(int i=0;i<ArraySize(ii_DestinationArray);i++)
         Print(ii_DestinationArray[i]);
      ArrayFree(ii_SourceArray);
      Print(ArraySize(ii_SourceArray));
          
  }
//+------------------------------------------------------------------+
