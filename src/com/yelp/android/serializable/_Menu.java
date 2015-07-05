package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _Menu
  implements Parcelable
{
  protected String mActionImageUrl;
  protected String mActionText;
  protected String mActionTitle;
  protected String mActionUrl;
  protected String mViewTitle;
  
  protected _Menu() {}
  
  protected _Menu(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    this();
    mActionUrl = paramString1;
    mActionTitle = paramString2;
    mActionText = paramString3;
    mActionImageUrl = paramString4;
    mViewTitle = paramString5;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getActionImageUrl()
  {
    return mActionImageUrl;
  }
  
  public String getActionText()
  {
    return mActionText;
  }
  
  public String getActionTitle()
  {
    return mActionTitle;
  }
  
  public String getActionUrl()
  {
    return mActionUrl;
  }
  
  public String getViewTitle()
  {
    return mViewTitle;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("action_url")) {
      mActionUrl = paramJSONObject.optString("action_url");
    }
    if (!paramJSONObject.isNull("action_title")) {
      mActionTitle = paramJSONObject.optString("action_title");
    }
    if (!paramJSONObject.isNull("action_text")) {
      mActionText = paramJSONObject.optString("action_text");
    }
    if (!paramJSONObject.isNull("action_image_url")) {
      mActionImageUrl = paramJSONObject.optString("action_image_url");
    }
    if (!paramJSONObject.isNull("view_title")) {
      mViewTitle = paramJSONObject.optString("view_title");
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mActionUrl = paramParcel.readString();
    mActionTitle = paramParcel.readString();
    mActionText = paramParcel.readString();
    mActionImageUrl = paramParcel.readString();
    mViewTitle = paramParcel.readString();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mActionUrl != null) {
      localJSONObject.put("action_url", mActionUrl);
    }
    if (mActionTitle != null) {
      localJSONObject.put("action_title", mActionTitle);
    }
    if (mActionText != null) {
      localJSONObject.put("action_text", mActionText);
    }
    if (mActionImageUrl != null) {
      localJSONObject.put("action_image_url", mActionImageUrl);
    }
    if (mViewTitle != null) {
      localJSONObject.put("view_title", mViewTitle);
    }
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mActionUrl);
    paramParcel.writeString(mActionTitle);
    paramParcel.writeString(mActionText);
    paramParcel.writeString(mActionImageUrl);
    paramParcel.writeString(mViewTitle);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Menu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */