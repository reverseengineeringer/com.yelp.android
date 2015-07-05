package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class ek
  extends JsonParser.DualCreator<YelpDealOption>
{
  public YelpDealOption a(Parcel paramParcel)
  {
    YelpDealOption localYelpDealOption = new YelpDealOption();
    localYelpDealOption.readFromParcel(paramParcel);
    return localYelpDealOption;
  }
  
  public YelpDealOption a(JSONObject paramJSONObject)
  {
    YelpDealOption localYelpDealOption = new YelpDealOption();
    localYelpDealOption.readFromJson(paramJSONObject);
    return localYelpDealOption;
  }
  
  public YelpDealOption[] a(int paramInt)
  {
    return new YelpDealOption[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ek
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */