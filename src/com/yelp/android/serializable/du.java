package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class du
  extends JsonParser.DualCreator<YelpAddresses>
{
  public YelpAddresses a(Parcel paramParcel)
  {
    YelpAddresses localYelpAddresses = new YelpAddresses();
    localYelpAddresses.readFromParcel(paramParcel);
    return localYelpAddresses;
  }
  
  public YelpAddresses a(JSONObject paramJSONObject)
  {
    YelpAddresses localYelpAddresses = new YelpAddresses();
    localYelpAddresses.readFromJson(paramJSONObject);
    return localYelpAddresses;
  }
  
  public YelpAddresses[] a(int paramInt)
  {
    return new YelpAddresses[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.du
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */