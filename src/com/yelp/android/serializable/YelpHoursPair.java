package com.yelp.android.serializable;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;

public class YelpHoursPair
  extends _YelpHoursPair
{
  public static final a<YelpHoursPair> CREATOR = new YelpHoursPair.1();
  public static a<YelpHoursPair> a = CREATOR;
  
  protected YelpHoursPair() {}
  
  YelpHoursPair(int paramInt1, int paramInt2)
  {
    b = paramInt1;
    c = paramInt2;
  }
  
  public JSONArray a()
    throws JSONException
  {
    JSONArray localJSONArray = new JSONArray();
    localJSONArray.put(b);
    localJSONArray.put(c);
    return localJSONArray;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (!(paramObject instanceof YelpHoursPair)) {
        return false;
      }
      paramObject = (YelpHoursPair)paramObject;
      if (c != c) {
        return false;
      }
    } while (b == b);
    return false;
  }
  
  public int hashCode()
  {
    return (c + 31) * 31 + b;
  }
  
  public String toString()
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("E hh:mma", Locale.US);
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.clear();
    localCalendar.set(7, 2);
    localCalendar.add(12, b);
    String str = localSimpleDateFormat.format(localCalendar.getTime()) + "-";
    localCalendar.clear();
    localCalendar.set(7, 2);
    localCalendar.add(12, c);
    return str + localSimpleDateFormat.format(localCalendar.getTime());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.YelpHoursPair
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */