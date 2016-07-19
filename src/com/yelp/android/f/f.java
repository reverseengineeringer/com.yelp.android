package com.yelp.android.f;

import android.os.Build.VERSION;
import java.util.Locale;

public class f
{
  public static final Locale a;
  private static final a b;
  private static String c;
  private static String d;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 17) {}
    for (b = new b(null);; b = new a(null))
    {
      a = new Locale("", "");
      c = "Arab";
      d = "Hebr";
      return;
    }
  }
  
  public static int a(Locale paramLocale)
  {
    return b.a(paramLocale);
  }
  
  private static class a
  {
    private static int b(Locale paramLocale)
    {
      switch (Character.getDirectionality(paramLocale.getDisplayName(paramLocale).charAt(0)))
      {
      default: 
        return 0;
      }
      return 1;
    }
    
    public int a(Locale paramLocale)
    {
      if ((paramLocale != null) && (!paramLocale.equals(f.a)))
      {
        String str = a.a(paramLocale);
        if (str == null) {
          return b(paramLocale);
        }
        if ((str.equalsIgnoreCase(f.a())) || (str.equalsIgnoreCase(f.b()))) {
          return 1;
        }
      }
      return 0;
    }
  }
  
  private static class b
    extends f.a
  {
    private b()
    {
      super();
    }
    
    public int a(Locale paramLocale)
    {
      return g.a(paramLocale);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.f.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */