package com.google.android.gms.analytics;

class z$a
  implements n.a<aa>
{
  private final aa Bi = new aa();
  
  public void c(String paramString, int paramInt)
  {
    if ("ga_dispatchPeriod".equals(paramString))
    {
      Bi.Bk = paramInt;
      return;
    }
    ae.W("int configuration name not recognized:  " + paramString);
  }
  
  public void e(String paramString1, String paramString2) {}
  
  public void e(String paramString, boolean paramBoolean)
  {
    if ("ga_dryRun".equals(paramString))
    {
      paramString = Bi;
      if (paramBoolean) {}
      for (int i = 1;; i = 0)
      {
        Bl = i;
        return;
      }
    }
    ae.W("bool configuration name not recognized:  " + paramString);
  }
  
  public aa eN()
  {
    return Bi;
  }
  
  public void f(String paramString1, String paramString2)
  {
    if ("ga_appName".equals(paramString1))
    {
      Bi.ya = paramString2;
      return;
    }
    if ("ga_appVersion".equals(paramString1))
    {
      Bi.yb = paramString2;
      return;
    }
    if ("ga_logLevel".equals(paramString1))
    {
      Bi.Bj = paramString2;
      return;
    }
    ae.W("string configuration name not recognized:  " + paramString1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.z.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */