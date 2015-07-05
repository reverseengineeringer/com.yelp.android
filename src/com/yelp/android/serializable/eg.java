package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class eg
  extends JsonParser.DualCreator<YelpDeal>
{
  public YelpDeal a(Parcel paramParcel)
  {
    YelpDeal localYelpDeal = new YelpDeal();
    localYelpDeal.readFromParcel(paramParcel);
    return localYelpDeal;
  }
  
  public YelpDeal a(JSONObject paramJSONObject)
  {
    YelpDeal localYelpDeal = new YelpDeal();
    localYelpDeal.readFromJson(paramJSONObject);
    return localYelpDeal;
  }
  
  public YelpDeal[] a(int paramInt)
  {
    return new YelpDeal[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.eg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */