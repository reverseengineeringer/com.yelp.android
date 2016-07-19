package com.yelp.android.appdata;

import com.yelp.android.services.c;
import com.yelp.android.util.YelpLog;

class AppData$4
  extends Thread
{
  AppData$4(AppData paramAppData) {}
  
  public void run()
  {
    try
    {
      c.a();
      return;
    }
    catch (Exception localException)
    {
      YelpLog.remoteError(a, "AppData.onConfigurationChanged calling HttpRequestWrapped.reset()", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.AppData.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */