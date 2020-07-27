//+------------------------------------------------------------------+
//|                                               arrayCopy_Free.mq4 |
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
      int ii_SourceArray[]={21,23,45,32,67};
      int ii_DestinationArray[];
      for(int i=0;i<ArraySize(ii_SourceArray);i++)
         Print(ii_SourceArray[i]);
      ArrayCopy(ii_SourceArray,ii_DestinationArray,0,0,WHOLE_ARRAY);
      printf("***Copied Array***");
      for(int i=0;i<ArraySize(ii_DestinationArray);i++)
         Print(ii_DestinationArray[i]);
          
         
  //    ArrayFree(ii_ArrayS);
   
  }
//+------------------------------------------------------------------+
