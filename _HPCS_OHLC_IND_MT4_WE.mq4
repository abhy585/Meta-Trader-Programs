//+------------------------------------------------------------------+
//|                                        _HPCS_OHLC_IND_MT4_WE.mq4 |
//|                        Copyright 2019, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2019, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
#property indicator_chart_window
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
  {
//--- indicator buffers mapping
          
           gRectangle("_OHLC",OBJ_RECTANGLE_LABEL,0,0,0,0,0,100,100,300,500);
           gRectangle("_open",OBJ_LABEL,0,0,0,0,0,120,150,100,50);
           gRectangle("_high",OBJ_LABEL,0,0,0,0,0,120,250,100,50);
           gRectangle("_close",OBJ_LABEL,0,0,0,0,0,120,350,100,50);
           gRectangle("_low",OBJ_LABEL,0,0,0,0,0,120,450,100,50);
           gRectangle("_openValue",OBJ_LABEL,0,0,0,0,0,250,150,100,50);
           gRectangle("_highValue",OBJ_LABEL,0,0,0,0,0,250,250,100,50);
           gRectangle("_closeValue",OBJ_LABEL,0,0,0,0,0,250,350,100,50);
           gRectangle("_lowValue",OBJ_LABEL,0,0,0,0,0,250,450,100,50);
          
          
          
//---
             // ObjectSetInteger(ChartID(),"_OHLC",OBJPROP_PRICE_SCALE,1);
              
              
              
   return(INIT_SUCCEEDED);
  }
  void gRectangle(const string name ,ENUM_OBJECT type , int window ,datetime time1 , double price1 ,datetime time2 , double price2,long xd,long yd,long xs,long ys)
  { 
              ObjectCreate(ChartID(),name,type,window,time1,price1,time2,price2);               
              ObjectSetInteger(ChartID(),name,OBJPROP_XDISTANCE,xd);
              ObjectSetInteger(ChartID(),name,OBJPROP_YDISTANCE,yd);
              ObjectSetInteger(ChartID(),name,OBJPROP_XSIZE,xs);
              ObjectSetInteger(ChartID(),name,OBJPROP_YSIZE,ys);
              ObjectSetInteger(ChartID(),name,OBJPROP_COLOR,clrBlack);
  
  
  
  
  }
  void setText(const string name , const string Text )
  {
  
            ObjectSetString(ChartID(),name,OBJPROP_TEXT,Text);
            
  
  
  
  
  
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
  
         
           setText("_open","Open");
           setText("_close","Close");
           setText("_high","High");
           setText("_low","Low");
           setText("_lowValue",(string)Low[0]);
           setText("_openValue",(string)Open[0]);
           
           setText("_highValue",(string)High[0]);
           
           setText("_closeValue",(string)Close[0]);
           
           
           
           
//---   Ob8jectSetInteger(ChartID(),"Rectangle",OBJPROP_XDISTANCE,100);

//--- return value of prev_calculated for next call
   return(rates_total);
  }
//+------------------------------------------------------------------+
