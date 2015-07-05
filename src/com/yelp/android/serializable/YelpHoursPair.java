package com.yelp.android.serializable;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import org.json.JSONArray;

public class YelpHoursPair
  extends _YelpHoursPair
{
  public static final ah<YelpHoursPair> CREATOR = new em();
  public static ah<YelpHoursPair> LAZY_CREATOR = CREATOR;
  
  protected YelpHoursPair() {}
  
  YelpHoursPair(int paramInt1, int paramInt2)
  {
    mOpen = paramInt1;
    mClose = paramInt2;
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
      if (mClose != mClose) {
        return false;
      }
    } while (mOpen == mOpen);
    return false;
  }
  
  public int hashCode()
  {
    return (mClose + 31) * 31 + mOpen;
  }
  
  public String toString()
  {
    SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("E hh:mma", Locale.US);
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.clear();
    localCalendar.set(7, 2);
    localCalendar.add(12, mOpen);
    String str = localSimpleDateFormat.format(localCalendar.getTime()) + "-";
    localCalendar.clear();
    localCalendar.set(7, 2);
    localCalendar.add(12, mClose);
    return str + localSimpleDateFormat.format(localCalendar.getTime());
  }
  
  public JSONArray writeJSON()
  {
    JSONArray localJSONArray = new JSONArray();
    localJSONArray.put(mOpen);
    localJSONArray.put(mClose);
    return localJSONArray;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.YelpHoursPair
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */