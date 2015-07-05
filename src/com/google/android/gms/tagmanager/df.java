package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.Tracker;

class df
{
  private Context mContext;
  private Tracker yO;
  private GoogleAnalytics yQ;
  
  df(Context paramContext)
  {
    mContext = paramContext;
  }
  
  private void cX(String paramString)
  {
    try
    {
      if (yQ == null)
      {
        yQ = GoogleAnalytics.getInstance(mContext);
        yQ.setLogger(new df.a());
        yO = yQ.newTracker(paramString);
      }
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public Tracker cW(String paramString)
  {
    cX(paramString);
    return yO;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.df
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */