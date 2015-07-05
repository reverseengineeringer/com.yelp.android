package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _PlatformAction
  implements Parcelable
{
  protected String mImagePath;
  protected String mImageUrl;
  protected String mTitle;
  protected String mUrl;
  
  protected _PlatformAction() {}
  
  protected _PlatformAction(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this();
    mUrl = paramString1;
    mImageUrl = paramString2;
    mImagePath = paramString3;
    mTitle = paramString4;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getImagePath()
  {
    return mImagePath;
  }
  
  public String getImageUrl()
  {
    return mImageUrl;
  }
  
  public String getTitle()
  {
    return mTitle;
  }
  
  public String getUrl()
  {
    return mUrl;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("url")) {
      mUrl = paramJSONObject.optString("url");
    }
    if (!paramJSONObject.isNull("image_url")) {
      mImageUrl = paramJSONObject.optString("image_url");
    }
    if (!paramJSONObject.isNull("image_path")) {
      mImagePath = paramJSONObject.optString("image_path");
    }
    if (!paramJSONObject.isNull("title")) {
      mTitle = paramJSONObject.optString("title");
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mUrl = paramParcel.readString();
    mImageUrl = paramParcel.readString();
    mImagePath = paramParcel.readString();
    mTitle = paramParcel.readString();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mUrl != null) {
      localJSONObject.put("url", mUrl);
    }
    if (mImageUrl != null) {
      localJSONObject.put("image_url", mImageUrl);
    }
    if (mImagePath != null) {
      localJSONObject.put("image_path", mImagePath);
    }
    if (mTitle != null) {
      localJSONObject.put("title", mTitle);
    }
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mUrl);
    paramParcel.writeString(mImageUrl);
    paramParcel.writeString(mImagePath);
    paramParcel.writeString(mTitle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._PlatformAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */