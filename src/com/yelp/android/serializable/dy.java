package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class dy
  extends JsonParser.DualCreator<YelpBusinessAddresses>
{
  public YelpBusinessAddresses a(Parcel paramParcel)
  {
    YelpBusinessAddresses localYelpBusinessAddresses = new YelpBusinessAddresses();
    localYelpBusinessAddresses.readFromParcel(paramParcel);
    return localYelpBusinessAddresses;
  }
  
  public YelpBusinessAddresses a(JSONObject paramJSONObject)
  {
    YelpBusinessAddresses localYelpBusinessAddresses = new YelpBusinessAddresses();
    localYelpBusinessAddresses.readFromJson(paramJSONObject);
    return localYelpBusinessAddresses;
  }
  
  public YelpBusinessAddresses[] a(int paramInt)
  {
    return new YelpBusinessAddresses[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.dy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */