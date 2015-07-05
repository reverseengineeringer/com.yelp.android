package com.yelp.android.appdata;

import android.content.Context;
import com.yelp.android.bf.k;

public enum LocaleSettings$DISTANCE_UNIT
{
  AUTOMATIC(k.distance_unit_automatic),  KILOMETERS(k.distance_unit_kilometers),  MILES(k.distance_unit_miles);
  
  private int mResourceName;
  
  private LocaleSettings$DISTANCE_UNIT(int paramInt)
  {
    mResourceName = paramInt;
  }
  
  public static String[] getResourceNames(Context paramContext)
  {
    int j = values().length;
    String[] arrayOfString = new String[j];
    int i = 0;
    while (i < j)
    {
      arrayOfString[i] = paramContext.getString(valuesmResourceName);
      i += 1;
    }
    return arrayOfString;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.LocaleSettings.DISTANCE_UNIT
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */