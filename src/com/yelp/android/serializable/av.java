package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class av
  extends JsonParser.DualCreator<FromThisBusiness>
{
  public FromThisBusiness a(Parcel paramParcel)
  {
    FromThisBusiness localFromThisBusiness = new FromThisBusiness();
    localFromThisBusiness.readFromParcel(paramParcel);
    return localFromThisBusiness;
  }
  
  public FromThisBusiness a(JSONObject paramJSONObject)
  {
    FromThisBusiness localFromThisBusiness = new FromThisBusiness();
    localFromThisBusiness.readFromJson(paramJSONObject);
    return localFromThisBusiness;
  }
  
  public FromThisBusiness[] a(int paramInt)
  {
    return new FromThisBusiness[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.av
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */