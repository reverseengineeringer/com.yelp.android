package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class bk
  extends JsonParser.DualCreator<NearbyResult>
{
  public NearbyResult a(Parcel paramParcel)
  {
    NearbyResult localNearbyResult = new NearbyResult();
    localNearbyResult.readFromParcel(paramParcel);
    return localNearbyResult;
  }
  
  public NearbyResult a(JSONObject paramJSONObject)
  {
    NearbyResult localNearbyResult = new NearbyResult();
    localNearbyResult.readFromJson(paramJSONObject);
    return localNearbyResult;
  }
  
  public NearbyResult[] a(int paramInt)
  {
    return new NearbyResult[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.bk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */