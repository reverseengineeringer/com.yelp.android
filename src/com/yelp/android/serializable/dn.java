package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class dn
  extends JsonParser.DualCreator<UserTiny>
{
  public UserTiny a(Parcel paramParcel)
  {
    UserTiny localUserTiny = new UserTiny();
    localUserTiny.readFromParcel(paramParcel);
    return localUserTiny;
  }
  
  public UserTiny a(JSONObject paramJSONObject)
  {
    UserTiny localUserTiny = new UserTiny();
    localUserTiny.readFromJson(paramJSONObject);
    return localUserTiny;
  }
  
  public UserTiny[] a(int paramInt)
  {
    return new UserTiny[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.dn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */