package com.google.android.gms.analytics.internal;

import java.util.Map;

class l$a
  extends q
  implements ac.a<m>
{
  private final m a = new m();
  
  public l$a(t paramt)
  {
    super(paramt);
  }
  
  public m a()
  {
    return a;
  }
  
  public void a(String paramString, int paramInt)
  {
    if ("ga_sessionTimeout".equals(paramString))
    {
      a.c = paramInt;
      return;
    }
    d("int configuration name not recognized", paramString);
  }
  
  public void a(String paramString1, String paramString2)
  {
    a.g.put(paramString1, paramString2);
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    int j = 1;
    int k = 1;
    int i = 1;
    if ("ga_autoActivityTracking".equals(paramString))
    {
      paramString = a;
      if (paramBoolean) {}
      for (;;)
      {
        d = i;
        return;
        i = 0;
      }
    }
    if ("ga_anonymizeIp".equals(paramString))
    {
      paramString = a;
      if (paramBoolean) {}
      for (i = j;; i = 0)
      {
        e = i;
        return;
      }
    }
    if ("ga_reportUncaughtExceptions".equals(paramString))
    {
      paramString = a;
      if (paramBoolean) {}
      for (i = k;; i = 0)
      {
        f = i;
        return;
      }
    }
    d("bool configuration name not recognized", paramString);
  }
  
  public void b(String paramString1, String paramString2)
  {
    if ("ga_trackingId".equals(paramString1))
    {
      a.a = paramString2;
      return;
    }
    if ("ga_sampleFrequency".equals(paramString1)) {
      try
      {
        a.b = Double.parseDouble(paramString2);
        return;
      }
      catch (NumberFormatException paramString1)
      {
        c("Error parsing ga_sampleFrequency value", paramString2, paramString1);
        return;
      }
    }
    d("string configuration name not recognized", paramString1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.l.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */