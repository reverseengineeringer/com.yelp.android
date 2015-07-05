package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _PaymentMethod
  implements Parcelable
{
  protected String mDescription;
  protected String mId;
  protected String mImagePath;
  protected String mImageUrl;
  
  protected _PaymentMethod() {}
  
  protected _PaymentMethod(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this();
    mId = paramString1;
    mDescription = paramString2;
    mImageUrl = paramString3;
    mImagePath = paramString4;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getDescription()
  {
    return mDescription;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public String getImagePath()
  {
    return mImagePath;
  }
  
  public String getImageUrl()
  {
    return mImageUrl;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("id")) {
      mId = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("description")) {
      mDescription = paramJSONObject.optString("description");
    }
    if (!paramJSONObject.isNull("image_url")) {
      mImageUrl = paramJSONObject.optString("image_url");
    }
    if (!paramJSONObject.isNull("image_path")) {
      mImagePath = paramJSONObject.optString("image_path");
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mId = paramParcel.readString();
    mDescription = paramParcel.readString();
    mImageUrl = paramParcel.readString();
    mImagePath = paramParcel.readString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mId);
    paramParcel.writeString(mDescription);
    paramParcel.writeString(mImageUrl);
    paramParcel.writeString(mImagePath);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._PaymentMethod
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */