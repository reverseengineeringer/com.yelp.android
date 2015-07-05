package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _SearchResultAnnotation
  implements Parcelable
{
  protected int mBlueVal;
  protected int mGreenVal;
  protected String mImagePath;
  protected String mImageUrl;
  protected int mRedVal;
  protected String mTitle;
  protected String mType;
  
  protected _SearchResultAnnotation() {}
  
  protected _SearchResultAnnotation(String paramString1, String paramString2, String paramString3, String paramString4, int paramInt1, int paramInt2, int paramInt3)
  {
    this();
    mType = paramString1;
    mTitle = paramString2;
    mImagePath = paramString3;
    mImageUrl = paramString4;
    mRedVal = paramInt1;
    mBlueVal = paramInt2;
    mGreenVal = paramInt3;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getBlueVal()
  {
    return mBlueVal;
  }
  
  public int getGreenVal()
  {
    return mGreenVal;
  }
  
  public String getImagePath()
  {
    return mImagePath;
  }
  
  public String getImageUrl()
  {
    return mImageUrl;
  }
  
  public int getRedVal()
  {
    return mRedVal;
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
    if (!paramJSONObject.isNull("type")) {
      mType = paramJSONObject.optString("type");
    }
    if (!paramJSONObject.isNull("title")) {
      mTitle = paramJSONObject.optString("title");
    }
    if (!paramJSONObject.isNull("image_path")) {
      mImagePath = paramJSONObject.optString("image_path");
    }
    if (!paramJSONObject.isNull("image_url")) {
      mImageUrl = paramJSONObject.optString("image_url");
    }
    mRedVal = paramJSONObject.optInt("red_val");
    mBlueVal = paramJSONObject.optInt("blue_val");
    mGreenVal = paramJSONObject.optInt("green_val");
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mType = paramParcel.readString();
    mTitle = paramParcel.readString();
    mImagePath = paramParcel.readString();
    mImageUrl = paramParcel.readString();
    mRedVal = paramParcel.readInt();
    mBlueVal = paramParcel.readInt();
    mGreenVal = paramParcel.readInt();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mType != null) {
      localJSONObject.put("type", mType);
    }
    if (mTitle != null) {
      localJSONObject.put("title", mTitle);
    }
    if (mImagePath != null) {
      localJSONObject.put("image_path", mImagePath);
    }
    if (mImageUrl != null) {
      localJSONObject.put("image_url", mImageUrl);
    }
    localJSONObject.put("red_val", mRedVal);
    localJSONObject.put("blue_val", mBlueVal);
    localJSONObject.put("green_val", mGreenVal);
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mType);
    paramParcel.writeString(mTitle);
    paramParcel.writeString(mImagePath);
    paramParcel.writeString(mImageUrl);
    paramParcel.writeInt(mRedVal);
    paramParcel.writeInt(mBlueVal);
    paramParcel.writeInt(mGreenVal);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._SearchResultAnnotation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */