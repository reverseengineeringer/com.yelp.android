package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class ci
  extends JsonParser.DualCreator<RecentFriendCheckIns>
{
  public RecentFriendCheckIns a(Parcel paramParcel)
  {
    RecentFriendCheckIns localRecentFriendCheckIns = new RecentFriendCheckIns();
    localRecentFriendCheckIns.readFromParcel(paramParcel);
    return localRecentFriendCheckIns;
  }
  
  public RecentFriendCheckIns a(JSONObject paramJSONObject)
  {
    RecentFriendCheckIns localRecentFriendCheckIns = new RecentFriendCheckIns();
    localRecentFriendCheckIns.readFromJson(paramJSONObject);
    return localRecentFriendCheckIns;
  }
  
  public RecentFriendCheckIns[] a(int paramInt)
  {
    return new RecentFriendCheckIns[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ci
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */