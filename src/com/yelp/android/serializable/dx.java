package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class dx
  extends JsonParser.DualCreator<YelpBusiness>
{
  public YelpBusiness a(Parcel paramParcel)
  {
    YelpBusiness localYelpBusiness = new YelpBusiness();
    localYelpBusiness.readFromParcel(paramParcel);
    return localYelpBusiness;
  }
  
  public YelpBusiness a(JSONObject paramJSONObject)
  {
    YelpBusiness localYelpBusiness = new YelpBusiness();
    localYelpBusiness.readFromJson(paramJSONObject);
    return localYelpBusiness;
  }
  
  public YelpBusiness[] a(int paramInt)
  {
    return new YelpBusiness[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.dx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */