package com.yelp.android.appdata;

import java.util.Comparator;
import java.util.Locale;

public final class y
  implements Comparator<Locale>
{
  public int a(Locale paramLocale1, Locale paramLocale2)
  {
    if (paramLocale1.equals(paramLocale2)) {
      return 0;
    }
    return String.valueOf(paramLocale1.getLanguage()).compareToIgnoreCase(String.valueOf(paramLocale2.getLanguage()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */