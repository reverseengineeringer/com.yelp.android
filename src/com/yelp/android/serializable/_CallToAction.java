package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _CallToAction
  implements Parcelable
{
  protected String mId;
  protected String mText;
  protected String mTitle;
  protected String mUrl;
  
  protected _CallToAction() {}
  
  protected _CallToAction(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this();
    mId = paramString1;
    mUrl = paramString2;
    mTitle = paramString3;
    mText = paramString4;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public String getText()
  {
    return mText;
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
    if (!paramJSONObject.isNull("id")) {
      mId = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("url")) {
      mUrl = paramJSONObject.optString("url");
    }
    if (!paramJSONObject.isNull("title")) {
      mTitle = paramJSONObject.optString("title");
    }
    if (!paramJSONObject.isNull("text")) {
      mText = paramJSONObject.optString("text");
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mId = paramParcel.readString();
    mUrl = paramParcel.readString();
    mTitle = paramParcel.readString();
    mText = paramParcel.readString();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mId != null) {
      localJSONObject.put("id", mId);
    }
    if (mUrl != null) {
      localJSONObject.put("url", mUrl);
    }
    if (mTitle != null) {
      localJSONObject.put("title", mTitle);
    }
    if (mText != null) {
      localJSONObject.put("text", mText);
    }
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mId);
    paramParcel.writeString(mUrl);
    paramParcel.writeString(mTitle);
    paramParcel.writeString(mText);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._CallToAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */