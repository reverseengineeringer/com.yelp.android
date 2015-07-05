package com.yelp.android.serializable;

import android.os.Parcel;
import org.json.JSONObject;

final class dk
  extends ah<User>
{
  public User a(Parcel paramParcel)
  {
    User localUser = new User();
    localUser.readFromParcel(paramParcel);
    return localUser;
  }
  
  public User a(JSONObject paramJSONObject)
  {
    User localUser = new User();
    localUser.readFromJson(paramJSONObject);
    return localUser;
  }
  
  public User[] a(int paramInt)
  {
    return new User[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.dk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */