package com.google.android.gms.analytics;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

class ai
  implements q
{
  private static ai Cc;
  private static Object xO = new Object();
  private final Context mContext;
  
  protected ai(Context paramContext)
  {
    mContext = paramContext;
  }
  
  public static ai fl()
  {
    synchronized (xO)
    {
      ai localai = Cc;
      return localai;
    }
  }
  
  public static void y(Context paramContext)
  {
    synchronized (xO)
    {
      if (Cc == null) {
        Cc = new ai(paramContext);
      }
      return;
    }
  }
  
  public boolean ac(String paramString)
  {
    return "&sr".equals(paramString);
  }
  
  protected String fm()
  {
    DisplayMetrics localDisplayMetrics = mContext.getResources().getDisplayMetrics();
    return widthPixels + "x" + heightPixels;
  }
  
  public String getValue(String paramString)
  {
    if (paramString == null) {}
    while (!paramString.equals("&sr")) {
      return null;
    }
    return fm();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */