package com.yelp.android.serializable;

import android.os.Parcel;
import org.json.JSONObject;

final class au
  extends ah<FriendRequest>
{
  public FriendRequest a(Parcel paramParcel)
  {
    FriendRequest localFriendRequest = new FriendRequest();
    localFriendRequest.readFromParcel(paramParcel);
    return localFriendRequest;
  }
  
  public FriendRequest a(JSONObject paramJSONObject)
  {
    FriendRequest localFriendRequest = new FriendRequest();
    localFriendRequest.readFromJson(paramJSONObject);
    return localFriendRequest;
  }
  
  public FriendRequest[] a(int paramInt)
  {
    return new FriendRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */