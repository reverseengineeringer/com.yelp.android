package com.google.android.gms.analytics;

import java.util.Map;

class al$a
  implements n.a<am>
{
  private final am Cu = new am();
  
  public void c(String paramString, int paramInt)
  {
    if ("ga_sessionTimeout".equals(paramString))
    {
      Cu.Cx = paramInt;
      return;
    }
    ae.W("int configuration name not recognized:  " + paramString);
  }
  
  public void e(String paramString1, String paramString2)
  {
    Cu.CB.put(paramString1, paramString2);
  }
  
  public void e(String paramString, boolean paramBoolean)
  {
    int j = 1;
    int k = 1;
    int i = 1;
    if ("ga_autoActivityTracking".equals(paramString))
    {
      paramString = Cu;
      if (paramBoolean) {}
      for (;;)
      {
        Cy = i;
        return;
        i = 0;
      }
    }
    if ("ga_anonymizeIp".equals(paramString))
    {
      paramString = Cu;
      if (paramBoolean) {}
      for (i = j;; i = 0)
      {
        Cz = i;
        return;
      }
    }
    if ("ga_reportUncaughtExceptions".equals(paramString))
    {
      paramString = Cu;
      if (paramBoolean) {}
      for (i = k;; i = 0)
      {
        CA = i;
        return;
      }
    }
    ae.W("bool configuration name not recognized:  " + paramString);
  }
  
  public void f(String paramString1, String paramString2)
  {
    if ("ga_trackingId".equals(paramString1))
    {
      Cu.Cv = paramString2;
      return;
    }
    if ("ga_sampleFrequency".equals(paramString1)) {
      try
      {
        Cu.Cw = Double.parseDouble(paramString2);
        return;
      }
      catch (NumberFormatException paramString1)
      {
        ae.T("Error parsing ga_sampleFrequency value: " + paramString2);
        return;
      }
    }
    ae.W("string configuration name not recognized:  " + paramString1);
  }
  
  public am fs()
  {
    return Cu;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.al.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */