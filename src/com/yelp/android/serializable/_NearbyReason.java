package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

abstract class _NearbyReason
  implements Parcelable
{
  protected MenuItem mMenuItem;
  protected String mText;
  protected User mUser;
  protected String mUserReason;
  
  protected _NearbyReason() {}
  
  protected _NearbyReason(MenuItem paramMenuItem, String paramString1, String paramString2, User paramUser)
  {
    this();
    mMenuItem = paramMenuItem;
    mText = paramString1;
    mUserReason = paramString2;
    mUser = paramUser;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public MenuItem getMenuItem()
  {
    return mMenuItem;
  }
  
  public String getText()
  {
    return mText;
  }
  
  public User getUser()
  {
    return mUser;
  }
  
  public String getUserReason()
  {
    return mUserReason;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("menu_item")) {
      mMenuItem = ((MenuItem)MenuItem.CREATOR.parse(paramJSONObject.getJSONObject("menu_item")));
    }
    if (!paramJSONObject.isNull("text")) {
      mText = paramJSONObject.optString("text");
    }
    if (!paramJSONObject.isNull("user_reason")) {
      mUserReason = paramJSONObject.optString("user_reason");
    }
    if (!paramJSONObject.isNull("user")) {
      mUser = ((User)User.CREATOR.parse(paramJSONObject.getJSONObject("user")));
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mMenuItem = ((MenuItem)paramParcel.readParcelable(MenuItem.class.getClassLoader()));
    mText = paramParcel.readString();
    mUserReason = paramParcel.readString();
    mUser = ((User)paramParcel.readParcelable(User.class.getClassLoader()));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(mMenuItem, 0);
    paramParcel.writeString(mText);
    paramParcel.writeString(mUserReason);
    paramParcel.writeParcelable(mUser, 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._NearbyReason
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */