package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class el
  extends JsonParser.DualCreator<YelpDetailedAddress>
{
  public YelpDetailedAddress a(Parcel paramParcel)
  {
    YelpDetailedAddress localYelpDetailedAddress = new YelpDetailedAddress();
    localYelpDetailedAddress.readFromParcel(paramParcel);
    return localYelpDetailedAddress;
  }
  
  public YelpDetailedAddress a(JSONObject paramJSONObject)
  {
    YelpDetailedAddress localYelpDetailedAddress = new YelpDetailedAddress();
    localYelpDetailedAddress.readFromJson(paramJSONObject);
    return localYelpDetailedAddress;
  }
  
  public YelpDetailedAddress[] a(int paramInt)
  {
    return new YelpDetailedAddress[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.el
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */