package com.yelp.android.f;

import java.util.Locale;

class f$a
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

/* Location:
 * Qualified Name:     com.yelp.android.f.f.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */