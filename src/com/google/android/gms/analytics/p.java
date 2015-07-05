package com.google.android.gms.analytics;

import android.util.Log;

class p
  implements Logger
{
  private int yM = 2;
  
  private String af(String paramString)
  {
    return Thread.currentThread().toString() + ": " + paramString;
  }
  
  public void error(Exception paramException)
  {
    if (yM <= 3) {
      Log.e("GAV4", null, paramException);
    }
  }
  
  public void error(String paramString)
  {
    if (yM <= 3) {
      Log.e("GAV4", af(paramString));
    }
  }
  
  public int getLogLevel()
  {
    return yM;
  }
  
  public void info(String paramString)
  {
    if (yM <= 1) {
      Log.i("GAV4", af(paramString));
    }
  }
  
  public void setLogLevel(int paramInt)
  {
    yM = paramInt;
  }
  
  public void verbose(String paramString)
  {
    if (yM <= 0) {
      Log.v("GAV4", af(paramString));
    }
  }
  
  public void warn(String paramString)
  {
    if (yM <= 2) {
      Log.w("GAV4", af(paramString));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */