package com.google.android.gms.analytics;

public class d$a
  extends d.c<a>
{
  public d$a()
  {
    a("&t", "event");
  }
  
  public a a(long paramLong)
  {
    a("&ev", Long.toString(paramLong));
    return this;
  }
  
  public a a(String paramString)
  {
    a("&ec", paramString);
    return this;
  }
  
  public a b(String paramString)
  {
    a("&ea", paramString);
    return this;
  }
  
  public a c(String paramString)
  {
    a("&el", paramString);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */