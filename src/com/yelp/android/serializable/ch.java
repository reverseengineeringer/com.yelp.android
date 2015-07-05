package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class ch
  extends JsonParser.DualCreator<RecentCheckIn>
{
  public RecentCheckIn a(Parcel paramParcel)
  {
    RecentCheckIn localRecentCheckIn = new RecentCheckIn();
    localRecentCheckIn.readFromParcel(paramParcel);
    return localRecentCheckIn;
  }
  
  public RecentCheckIn a(JSONObject paramJSONObject)
  {
    RecentCheckIn localRecentCheckIn = new RecentCheckIn();
    localRecentCheckIn.readFromJson(paramJSONObject);
    return localRecentCheckIn;
  }
  
  public RecentCheckIn[] a(int paramInt)
  {
    return new RecentCheckIn[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */