package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _YelpBusinessReviewInsight
  implements Parcelable
{
  protected String mImageUrl;
  protected String mText;
  
  protected _YelpBusinessReviewInsight() {}
  
  protected _YelpBusinessReviewInsight(String paramString1, String paramString2)
  {
    this();
    mText = paramString1;
    mImageUrl = paramString2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getImageUrl()
  {
    return mImageUrl;
  }
  
  public String getText()
  {
    return mText;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("text")) {
      mText = paramJSONObject.optString("text");
    }
    if (!paramJSONObject.isNull("image_url")) {
      mImageUrl = paramJSONObject.optString("image_url");
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mText = paramParcel.readString();
    mImageUrl = paramParcel.readString();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mText != null) {
      localJSONObject.put("text", mText);
    }
    if (mImageUrl != null) {
      localJSONObject.put("image_url", mImageUrl);
    }
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mText);
    paramParcel.writeString(mImageUrl);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._YelpBusinessReviewInsight
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */