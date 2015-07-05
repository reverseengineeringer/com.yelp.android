package com.yelp.android.d;

import java.util.Locale;

public class f
{
  public static final Locale a = new Locale("", "");
  private static String b = "Arab";
  private static String c = "Hebr";
  
  public static int a(Locale paramLocale)
  {
    if ((paramLocale != null) && (!paramLocale.equals(a)))
    {
      String str = a.a(a.b(paramLocale.toString()));
      if (str == null) {
        return b(paramLocale);
      }
      if ((str.equalsIgnoreCase(b)) || (str.equalsIgnoreCase(c))) {
        return 1;
      }
    }
    return 0;
  }
  
  private static int b(Locale paramLocale)
  {
    switch (Character.getDirectionality(paramLocale.getDisplayName(paramLocale).charAt(0)))
    {
    default: 
      return 0;
    }
    return 1;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.d.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */