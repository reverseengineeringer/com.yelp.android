package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _SpamAlert
  implements Parcelable
{
  protected String mEvidenceUrl;
  protected String mImageUrl;
  protected String mText;
  protected String mTitle;
  protected String mType;
  
  protected _SpamAlert() {}
  
  protected _SpamAlert(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    this();
    mImageUrl = paramString1;
    mTitle = paramString2;
    mText = paramString3;
    mEvidenceUrl = paramString4;
    mType = paramString5;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getEvidenceUrl()
  {
    return mEvidenceUrl;
  }
  
  public String getImageUrl()
  {
    return mImageUrl;
  }
  
  public String getText()
  {
    return mText;
  }
  
  public String getTitle()
  {
    return mTitle;
  }
  
  public String getType()
  {
    return mType;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("image_url")) {
      mImageUrl = paramJSONObject.optString("image_url");
    }
    if (!paramJSONObject.isNull("title")) {
      mTitle = paramJSONObject.optString("title");
    }
    if (!paramJSONObject.isNull("text")) {
      mText = paramJSONObject.optString("text");
    }
    if (!paramJSONObject.isNull("evidence_url")) {
      mEvidenceUrl = paramJSONObject.optString("evidence_url");
    }
    if (!paramJSONObject.isNull("type")) {
      mType = paramJSONObject.optString("type");
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mImageUrl = paramParcel.readString();
    mTitle = paramParcel.readString();
    mText = paramParcel.readString();
    mEvidenceUrl = paramParcel.readString();
    mType = paramParcel.readString();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mImageUrl != null) {
      localJSONObject.put("image_url", mImageUrl);
    }
    if (mTitle != null) {
      localJSONObject.put("title", mTitle);
    }
    if (mText != null) {
      localJSONObject.put("text", mText);
    }
    if (mEvidenceUrl != null) {
      localJSONObject.put("evidence_url", mEvidenceUrl);
    }
    if (mType != null) {
      localJSONObject.put("type", mType);
    }
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mImageUrl);
    paramParcel.writeString(mTitle);
    paramParcel.writeString(mText);
    paramParcel.writeString(mEvidenceUrl);
    paramParcel.writeString(mType);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._SpamAlert
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */