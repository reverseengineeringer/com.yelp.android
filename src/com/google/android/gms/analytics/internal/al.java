package com.google.android.gms.analytics.internal;

public class al
  extends ac<b>
{
  public al(t paramt)
  {
    super(paramt, new a(paramt));
  }
  
  private static class a
    implements ac.a<b>
  {
    private final t a;
    private final b b;
    
    public a(t paramt)
    {
      a = paramt;
      b = new b();
    }
    
    public b a()
    {
      return b;
    }
    
    public void a(String paramString, int paramInt)
    {
      if ("ga_dispatchPeriod".equals(paramString))
      {
        b.d = paramInt;
        return;
      }
      a.f().d("Int xml configuration name not recognized", paramString);
    }
    
    public void a(String paramString1, String paramString2) {}
    
    public void a(String paramString, boolean paramBoolean)
    {
      if ("ga_dryRun".equals(paramString))
      {
        paramString = b;
        if (paramBoolean) {}
        for (int i = 1;; i = 0)
        {
          e = i;
          return;
        }
      }
      a.f().d("Bool xml configuration name not recognized", paramString);
    }
    
    public void b(String paramString1, String paramString2)
    {
      if ("ga_appName".equals(paramString1))
      {
        b.a = paramString2;
        return;
      }
      if ("ga_appVersion".equals(paramString1))
      {
        b.b = paramString2;
        return;
      }
      if ("ga_logLevel".equals(paramString1))
      {
        b.c = paramString2;
        return;
      }
      a.f().d("String xml configuration name not recognized", paramString1);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */