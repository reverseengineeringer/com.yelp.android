package com.yelp.android.appdata;

import com.yelp.android.util.YelpLog;

class d
  extends Thread
{
  d(AppData paramAppData) {}
  
  public void run()
  {
    try
    {
      com.yelp.android.services.d.a();
      return;
    }
    catch (Exception localException)
    {
      YelpLog.error(a, "AppData.onConfigurationChanged calling HttpRequestWrapped.reset()", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */