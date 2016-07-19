package com.google.android.gms.analytics;

import com.google.android.gms.analytics.internal.f;

public final class j
{
  public static String a(int paramInt)
  {
    return a("&cd", paramInt);
  }
  
  private static String a(String paramString, int paramInt)
  {
    if (paramInt < 1)
    {
      f.a("index out of range for prefix", paramString);
      return "";
    }
    return paramString + paramInt;
  }
  
  public static String b(int paramInt)
  {
    return a("cd", paramInt);
  }
  
  public static String c(int paramInt)
  {
    return a("cm", paramInt);
  }
  
  public static String d(int paramInt)
  {
    return a("&pr", paramInt);
  }
  
  public static String e(int paramInt)
  {
    return a("pr", paramInt);
  }
  
  public static String f(int paramInt)
  {
    return a("&promo", paramInt);
  }
  
  public static String g(int paramInt)
  {
    return a("promo", paramInt);
  }
  
  public static String h(int paramInt)
  {
    return a("pi", paramInt);
  }
  
  public static String i(int paramInt)
  {
    return a("&il", paramInt);
  }
  
  public static String j(int paramInt)
  {
    return a("il", paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */