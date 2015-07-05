package com.yelp.android.serializable;

import android.os.Parcel;
import org.json.JSONObject;

final class ao
  extends ah<FacebookUser>
{
  public FacebookUser a(Parcel paramParcel)
  {
    FacebookUser localFacebookUser = new FacebookUser();
    localFacebookUser.readFromParcel(paramParcel);
    return localFacebookUser;
  }
  
  public FacebookUser a(JSONObject paramJSONObject)
  {
    FacebookUser localFacebookUser = new FacebookUser();
    localFacebookUser.readFromJson(paramJSONObject);
    return localFacebookUser;
  }
  
  public FacebookUser[] a(int paramInt)
  {
    return new FacebookUser[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */