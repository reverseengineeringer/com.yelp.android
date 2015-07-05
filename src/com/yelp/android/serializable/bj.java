package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class bj
  extends JsonParser.DualCreator<NearbyReason>
{
  public NearbyReason a(Parcel paramParcel)
  {
    NearbyReason localNearbyReason = new NearbyReason();
    localNearbyReason.readFromParcel(paramParcel);
    return localNearbyReason;
  }
  
  public NearbyReason a(JSONObject paramJSONObject)
  {
    NearbyReason localNearbyReason = new NearbyReason();
    localNearbyReason.readFromJson(paramJSONObject);
    return localNearbyReason;
  }
  
  public NearbyReason[] a(int paramInt)
  {
    return new NearbyReason[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */