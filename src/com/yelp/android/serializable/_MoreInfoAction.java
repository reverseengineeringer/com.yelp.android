package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _MoreInfoAction
  implements Parcelable
{
  protected String mImageUrl;
  protected String mOpenUrl;
  protected String mTitle;
  
  protected _MoreInfoAction() {}
  
  protected _MoreInfoAction(String paramString1, String paramString2, String paramString3)
  {
    this();
    mTitle = paramString1;
    mOpenUrl = paramString2;
    mImageUrl = paramString3;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getImageUrl()
  {
    return mImageUrl;
  }
  
  public String getOpenUrl()
  {
    return mOpenUrl;
  }
  
  public String getTitle()
  {
    return mTitle;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("title")) {
      mTitle = paramJSONObject.optString("title");
    }
    if (!paramJSONObject.isNull("open_url")) {
      mOpenUrl = paramJSONObject.optString("open_url");
    }
    if (!paramJSONObject.isNull("image_url")) {
      mImageUrl = paramJSONObject.optString("image_url");
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mTitle = paramParcel.readString();
    mOpenUrl = paramParcel.readString();
    mImageUrl = paramParcel.readString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mTitle);
    paramParcel.writeString(mOpenUrl);
    paramParcel.writeString(mImageUrl);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._MoreInfoAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */