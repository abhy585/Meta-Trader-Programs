//+------------------------------------------------------------------+
//|                                    HPCS_dateTimeInput_MT4_WE.mq4 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#property show_inputs
input datetime idt_tm = D'2019.06.05 09:50:40'; //Time
//+------------------------------------------------------------------+
//| Script program start function                                    |
//+------------------------------------------------------------------+
void OnStart()
  {
//---
         Print("Day     : ",TimeDay(idt_tm));
         Print("Month   : ",TimeMonth(idt_tm));
         Print("Year    : ",TimeYear(idt_tm));
         Print("Minute  : ",TimeMinute(idt_tm));
         Print("Seconds : ",TimeSeconds(idt_tm));
         Print("Time day of Week : ",TimeDayOfWeek(idt_tm));
         Print("Time Day of Year : ",TimeDayOfYear(idt_tm));
//+------------------------------------------------------------------+
  }