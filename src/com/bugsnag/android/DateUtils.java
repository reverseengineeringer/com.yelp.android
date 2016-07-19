package com.bugsnag.android;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

class DateUtils
{
  private static final ThreadLocal<DateFormat> iso8601Holder = new ThreadLocal()
  {
    protected DateFormat initialValue()
    {
      TimeZone localTimeZone = TimeZone.getTimeZone("UTC");
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
      localSimpleDateFormat.setTimeZone(localTimeZone);
      return localSimpleDateFormat;
    }
  };
  
  static String toISO8601(Date paramDate)
  {
    return ((DateFormat)iso8601Holder.get()).format(paramDate);
  }
}

/* Location:
 * Qualified Name:     com.bugsnag.android.DateUtils
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */