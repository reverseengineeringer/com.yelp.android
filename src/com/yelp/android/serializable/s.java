package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class s
  extends JsonParser.DualCreator<BusinessUser>
{
  public BusinessUser a(Parcel paramParcel)
  {
    BusinessUser localBusinessUser = new BusinessUser();
    localBusinessUser.readFromParcel(paramParcel);
    return localBusinessUser;
  }
  
  public BusinessUser a(JSONObject paramJSONObject)
  {
    BusinessUser localBusinessUser = new BusinessUser();
    localBusinessUser.readFromJson(paramJSONObject);
    return localBusinessUser;
  }
  
  public BusinessUser[] a(int paramInt)
  {
    return new BusinessUser[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */