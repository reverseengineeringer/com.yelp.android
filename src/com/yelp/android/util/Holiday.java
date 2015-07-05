package com.yelp.android.util;

import java.util.Calendar;
import java.util.Date;
import java.util.EnumSet;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.Locale;

public enum Holiday
{
  public static Holiday mForcedHoliday;
  private static Calendar mPrideBegins;
  private static Calendar mPrideEnds;
  private static Calendar mThanksgivingBegins;
  private static Calendar mThanksgivingEnds;
  
  static
  {
    STPATRICKS = new Holiday.2("STPATRICKS", 1);
    APRILFOOLS = new Holiday.3("APRILFOOLS", 2);
    HALLOWEEN = new Holiday.4("HALLOWEEN", 3);
    THANKSGIVING = new Holiday.5("THANKSGIVING", 4);
    CHRISTMAS = new Holiday.6("CHRISTMAS", 5);
    WORLD_CUP = new Holiday.7("WORLD_CUP", 6);
    PRIDE_WEEKEND = new Holiday.8("PRIDE_WEEKEND", 7);
    NORMAL = new Holiday.9("NORMAL", 8);
    $VALUES = new Holiday[] { VALENTINES, STPATRICKS, APRILFOOLS, HALLOWEEN, THANKSGIVING, CHRISTMAS, WORLD_CUP, PRIDE_WEEKEND, NORMAL };
    mThanksgivingBegins = null;
    mThanksgivingEnds = null;
    mPrideBegins = null;
    mPrideEnds = null;
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.set(localCalendar.get(1), 10, 1);
    while (localCalendar.get(7) != 5) {
      localCalendar.add(5, 1);
    }
    localCalendar.add(8, 3);
    localCalendar.add(5, -3);
    mThanksgivingBegins = (GregorianCalendar)localCalendar.clone();
    localCalendar.add(5, 6);
    mThanksgivingEnds = localCalendar;
    localCalendar = Calendar.getInstance();
    localCalendar.set(2, 5);
    int i = 30;
    for (;;)
    {
      if (i > 0)
      {
        localCalendar.set(5, i);
        if (localCalendar.get(7) == 1)
        {
          mPrideEnds = (GregorianCalendar)localCalendar.clone();
          localCalendar.add(5, -2);
          mPrideBegins = localCalendar;
        }
      }
      else
      {
        return;
      }
      i -= 1;
    }
  }
  
  private Holiday() {}
  
  public static int getHolidayTheme(Date paramDate)
  {
    Object localObject = Calendar.getInstance();
    ((Calendar)localObject).setTime(paramDate);
    int i = ((Calendar)localObject).get(1);
    int j = ((Calendar)localObject).get(2);
    int k = ((Calendar)localObject).get(5);
    paramDate = EnumSet.allOf(Holiday.class);
    localObject = paramDate.iterator();
    while (((Iterator)localObject).hasNext())
    {
      Holiday localHoliday = (Holiday)((Iterator)localObject).next();
      if (!localHoliday.isActive(i, j, k)) {
        paramDate.remove(localHoliday);
      }
    }
    i = 0;
    paramDate = paramDate.iterator();
    while (paramDate.hasNext()) {
      i = ((Holiday)paramDate.next()).getThemeResource();
    }
    if (mForcedHoliday != null) {
      i = mForcedHoliday.getThemeResource();
    }
    return i;
  }
  
  private static boolean isPrideThemeAvailableForCountry()
  {
    String str = Locale.getDefault().getCountry();
    return (str.equals("US")) || (str.equals("AT")) || (str.equals("BE")) || (str.equals("CZ")) || (str.equals("DK")) || (str.equals("FI")) || (str.equals("FR")) || (str.equals("DE")) || (str.equals("IE")) || (str.equals("IT")) || (str.equals("NL")) || (str.equals("NO")) || (str.equals("PL")) || (str.equals("PT")) || (str.equals("ES")) || (str.equals("SE")) || (str.equals("CH")) || (str.equals("TR")) || (str.equals("GB")) || (str.equals("CA")) || (str.equals("MX"));
  }
  
  public abstract int getThemeResource();
  
  public abstract boolean isActive(int paramInt1, int paramInt2, int paramInt3);
}

/* Location:
 * Qualified Name:     com.yelp.android.util.Holiday
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */