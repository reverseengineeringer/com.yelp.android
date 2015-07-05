package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class dt
  extends JsonParser.DualCreator<YelpAddress>
{
  public YelpAddress a(Parcel paramParcel)
  {
    YelpAddress localYelpAddress = new YelpAddress();
    localYelpAddress.readFromParcel(paramParcel);
    return localYelpAddress;
  }
  
  public YelpAddress a(JSONObject paramJSONObject)
  {
    YelpAddress localYelpAddress = new YelpAddress();
    localYelpAddress.readFromJson(paramJSONObject);
    return localYelpAddress;
  }
  
  public YelpAddress[] a(int paramInt)
  {
    return new YelpAddress[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.dt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */