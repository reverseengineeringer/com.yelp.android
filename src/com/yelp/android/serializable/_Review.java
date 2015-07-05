package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import org.json.JSONObject;

abstract class _Review
  implements Parcelable
{
  protected String mId;
  protected int mRating;
  protected String mText;
  
  protected _Review() {}
  
  protected _Review(String paramString1, String paramString2, int paramInt)
  {
    this();
    mId = paramString1;
    mText = paramString2;
    mRating = paramInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public int getRating()
  {
    return mRating;
  }
  
  public String getText()
  {
    return mText;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("id")) {
      mId = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("text")) {
      mText = paramJSONObject.optString("text");
    }
    mRating = paramJSONObject.optInt("rating");
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mId = paramParcel.readString();
    mText = paramParcel.readString();
    mRating = paramParcel.readInt();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(mId);
    paramParcel.writeString(mText);
    paramParcel.writeInt(mRating);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Review
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */