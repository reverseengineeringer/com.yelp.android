package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _LocalVideo
  implements Parcelable
{
  protected String mBusinessId;
  protected int mDuration;
  protected String mFilePath;
  protected int mHeight;
  protected int mWidth;
  
  protected _LocalVideo() {}
  
  protected _LocalVideo(String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3)
  {
    this();
    mFilePath = paramString1;
    mBusinessId = paramString2;
    mDuration = paramInt1;
    mWidth = paramInt2;
    mHeight = paramInt3;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getBusinessId()
  {
    return mBusinessId;
  }
  
  public int getDuration()
  {
    return mDuration;
  }
  
  public String getFilePath()
  {
    return mFilePath;
  }
  
  public int getHeight()
  {
    return mHeight;
  }
  
  public int getWidth()
  {
    return mWidth;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("file_path")) {
      mFilePath = paramJSONObject.optString("file_path");
    }
    if (!paramJSONObject.isNull("business_id")) {
      mBusinessId = paramJSONObject.optString("business_id");
    }
    mDuration = paramJSONObject.optInt("duration");
    mWidth = paramJSONObject.optInt("width");
    mHeight = paramJSONObject.optInt("height");
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mFilePath = paramParcel.readString();
    mBusinessId = paramParcel.readString();
    mDuration = paramParcel.readInt();
    mWidth = paramParcel.readInt();
    mHeight = paramParcel.readInt();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mFilePath);
    paramParcel.writeString(mBusinessId);
    paramParcel.writeInt(mDuration);
    paramParcel.writeInt(mWidth);
    paramParcel.writeInt(mHeight);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._LocalVideo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */