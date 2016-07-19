package com.bugsnag.android;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;

final class DateUtils$1
  extends ThreadLocal<DateFormat>
{
  protected DateFormat initialValue()
  {
    TimeZone localTimeZone = TimeZone.getTimeZone("UTC");
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
    localSimpleDateFormat.setTimeZone(localTimeZone);
    return localSimpleDateFormat;
  }
}

/* Location:
 * Qualified Name:     com.bugsnag.android.DateUtils.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */