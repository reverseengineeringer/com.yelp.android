package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class ad
  extends JsonParser.DualCreator<DealLocation>
{
  public DealLocation a(Parcel paramParcel)
  {
    DealLocation localDealLocation = new DealLocation();
    localDealLocation.readFromParcel(paramParcel);
    return localDealLocation;
  }
  
  public DealLocation a(JSONObject paramJSONObject)
  {
    DealLocation localDealLocation = new DealLocation();
    localDealLocation.readFromJson(paramJSONObject);
    return localDealLocation;
  }
  
  public DealLocation[] a(int paramInt)
  {
    return new DealLocation[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */