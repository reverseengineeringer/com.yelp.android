package com.yelp.android.serializable;

import android.os.Parcel;
import org.json.JSONArray;

final class em
  extends ah<YelpHoursPair>
{
  public YelpHoursPair a(Parcel paramParcel)
  {
    YelpHoursPair localYelpHoursPair = new YelpHoursPair();
    localYelpHoursPair.readFromParcel(paramParcel);
    return localYelpHoursPair;
  }
  
  public YelpHoursPair a(JSONArray paramJSONArray)
  {
    return new YelpHoursPair(paramJSONArray.getInt(0), paramJSONArray.getInt(1));
  }
  
  public YelpHoursPair[] a(int paramInt)
  {
    return new YelpHoursPair[paramInt];
  }
  
  public int getElementType()
  {
    return 2;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.em
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */