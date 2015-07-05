package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class ee
  extends JsonParser.DualCreator<YelpCheckIn>
{
  public YelpCheckIn a(Parcel paramParcel)
  {
    YelpCheckIn localYelpCheckIn = new YelpCheckIn();
    localYelpCheckIn.readFromParcel(paramParcel);
    return localYelpCheckIn;
  }
  
  public YelpCheckIn a(JSONObject paramJSONObject)
  {
    YelpCheckIn localYelpCheckIn = new YelpCheckIn();
    localYelpCheckIn.readFromJson(paramJSONObject);
    return localYelpCheckIn;
  }
  
  public YelpCheckIn[] a(int paramInt)
  {
    return new YelpCheckIn[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ee
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */