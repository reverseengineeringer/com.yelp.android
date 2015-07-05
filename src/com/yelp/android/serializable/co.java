package com.yelp.android.serializable;

import android.os.Parcel;
import org.json.JSONObject;

final class co
  extends ah<ReviewBroadcast>
{
  public ReviewBroadcast a(Parcel paramParcel)
  {
    ReviewBroadcast localReviewBroadcast = new ReviewBroadcast();
    localReviewBroadcast.readFromParcel(paramParcel);
    return localReviewBroadcast;
  }
  
  public ReviewBroadcast a(JSONObject paramJSONObject)
  {
    ReviewBroadcast localReviewBroadcast = new ReviewBroadcast();
    localReviewBroadcast.readFromJson(paramJSONObject);
    return localReviewBroadcast;
  }
  
  public ReviewBroadcast[] a(int paramInt)
  {
    return new ReviewBroadcast[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.co
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */