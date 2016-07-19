package com.yelp.android.f;

import android.os.Build.VERSION;
import java.util.Locale;

public class a
{
  private static final a a = new b();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
    {
      a = new d();
      return;
    }
    if (i >= 14)
    {
      a = new c();
      return;
    }
  }
  
  public static String a(Locale paramLocale)
  {
    return a.a(paramLocale);
  }
  
  static abstract interface a
  {
    public abstract String a(Locale paramLocale);
  }
  
  static class b
    implements a.a
  {
    public String a(Locale paramLocale)
    {
      return null;
    }
  }
  
  static class c
    implements a.a
  {
    public String a(Locale paramLocale)
    {
      return c.a(paramLocale);
    }
  }
  
  static class d
    implements a.a
  {
    public String a(Locale paramLocale)
    {
      return b.a(paramLocale);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.f.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */