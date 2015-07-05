package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONObject;

abstract class _PreviousReview
  implements Parcelable
{
  protected Date mDateModified;
  protected String mId;
  protected int mRating;
  protected String mText;
  
  protected _PreviousReview() {}
  
  protected _PreviousReview(Date paramDate, String paramString1, String paramString2, int paramInt)
  {
    this();
    mDateModified = paramDate;
    mId = paramString1;
    mText = paramString2;
    mRating = paramInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Date getDateModified()
  {
    return mDateModified;
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
    if (!paramJSONObject.isNull("time_modified")) {
      mDateModified = JsonUtil.parseTimestamp(paramJSONObject, "time_modified");
    }
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
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      mDateModified = new Date(l);
    }
    mId = paramParcel.readString();
    mText = paramParcel.readString();
    mRating = paramParcel.readInt();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mDateModified != null) {
      localJSONObject.put("time_modified", mDateModified.getTime() / 1000L);
    }
    if (mId != null) {
      localJSONObject.put("id", mId);
    }
    if (mText != null) {
      localJSONObject.put("text", mText);
    }
    localJSONObject.put("rating", mRating);
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (mDateModified == null) {}
    for (long l = -2147483648L;; l = mDateModified.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeString(mId);
      paramParcel.writeString(mText);
      paramParcel.writeInt(mRating);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._PreviousReview
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */