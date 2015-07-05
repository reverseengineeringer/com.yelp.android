package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class bl
  extends JsonParser.DualCreator<NearbyRow>
{
  public NearbyRow a(Parcel paramParcel)
  {
    NearbyRow localNearbyRow = new NearbyRow();
    localNearbyRow.readFromParcel(paramParcel);
    return localNearbyRow;
  }
  
  public NearbyRow a(JSONObject paramJSONObject)
  {
    NearbyRow localNearbyRow = new NearbyRow();
    localNearbyRow.readFromJson(paramJSONObject);
    return localNearbyRow;
  }
  
  public NearbyRow[] a(int paramInt)
  {
    return new NearbyRow[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */