package com.yelp.android.debug;

import android.text.TextUtils;

public class h
{
  private final String a;
  
  public h(String paramString)
  {
    if ((TextUtils.isEmpty(paramString)) || (TextUtils.equals(paramString, "yelp")))
    {
      a = "yelp.com";
      return;
    }
    if (paramString.contains("."))
    {
      a = paramString;
      return;
    }
    if (TextUtils.equals(paramString, "stagea"))
    {
      a = "stagea.yelp.com";
      return;
    }
    if (TextUtils.equals(paramString, "stageb"))
    {
      a = "stageb.yelp.com";
      return;
    }
    a = (paramString + ".dev.yelp.com");
  }
  
  public String a()
  {
    return a;
  }
  
  public String a(String paramString)
  {
    if (c()) {
      return paramString;
    }
    if ((d()) || (e())) {
      return "stage-" + paramString;
    }
    return a.replace(".dev.yelp.com", "") + "-" + paramString;
  }
  
  public String b()
  {
    return "m." + a;
  }
  
  public boolean c()
  {
    return "yelp.com".equals(a);
  }
  
  public boolean d()
  {
    return "stagea.yelp.com".equals(a);
  }
  
  public boolean e()
  {
    return "stageb.yelp.com".equals(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.debug.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */