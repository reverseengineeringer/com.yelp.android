package com.yelp.android.d;

import android.os.Build.VERSION;

public class a
{
  private static final b a = new c();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new d();
      return;
    }
  }
  
  public static String a(String paramString)
  {
    return a.a(paramString);
  }
  
  public static String b(String paramString)
  {
    return a.b(paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */