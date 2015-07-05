package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _ReviewThreshold
  implements Parcelable
{
  protected int mBlueVal;
  protected int mGreenVal;
  protected int mRedVal;
  protected String mTextAtThreshold;
  protected int mThreshold;
  
  protected _ReviewThreshold() {}
  
  protected _ReviewThreshold(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this();
    mTextAtThreshold = paramString;
    mRedVal = paramInt1;
    mBlueVal = paramInt2;
    mGreenVal = paramInt3;
    mThreshold = paramInt4;
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
  
  public int getRedVal()
  {
    return mRedVal;
  }
  
  public String getTextAtThreshold()
  {
    return mTextAtThreshold;
  }
  
  public int getThreshold()
  {
    return mThreshold;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("text")) {
      mTextAtThreshold = paramJSONObject.optString("text");
    }
    mRedVal = paramJSONObject.optInt("red_val");
    mBlueVal = paramJSONObject.optInt("blue_val");
    mGreenVal = paramJSONObject.optInt("green_val");
    mThreshold = paramJSONObject.optInt("length");
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mTextAtThreshold = paramParcel.readString();
    mRedVal = paramParcel.readInt();
    mBlueVal = paramParcel.readInt();
    mGreenVal = paramParcel.readInt();
    mThreshold = paramParcel.readInt();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mTextAtThreshold);
    paramParcel.writeInt(mRedVal);
    paramParcel.writeInt(mBlueVal);
    paramParcel.writeInt(mGreenVal);
    paramParcel.writeInt(mThreshold);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._ReviewThreshold
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */