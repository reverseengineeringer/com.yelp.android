package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _BusinessOwnerReply
  implements Parcelable
{
  protected String mName;
  protected String mPhotoUrl;
  protected String mText;
  
  protected _BusinessOwnerReply() {}
  
  protected _BusinessOwnerReply(String paramString1, String paramString2, String paramString3)
  {
    this();
    mName = paramString1;
    mPhotoUrl = paramString2;
    mText = paramString3;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getName()
  {
    return mName;
  }
  
  public String getPhotoUrl()
  {
    return mPhotoUrl;
  }
  
  public String getText()
  {
    return mText;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("name")) {
      mName = paramJSONObject.optString("name");
    }
    if (!paramJSONObject.isNull("photo_url")) {
      mPhotoUrl = paramJSONObject.optString("photo_url");
    }
    if (!paramJSONObject.isNull("text")) {
      mText = paramJSONObject.optString("text");
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mName = paramParcel.readString();
    mPhotoUrl = paramParcel.readString();
    mText = paramParcel.readString();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mName != null) {
      localJSONObject.put("name", mName);
    }
    if (mPhotoUrl != null) {
      localJSONObject.put("photo_url", mPhotoUrl);
    }
    if (mText != null) {
      localJSONObject.put("text", mText);
    }
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mName);
    paramParcel.writeString(mPhotoUrl);
    paramParcel.writeString(mText);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._BusinessOwnerReply
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */