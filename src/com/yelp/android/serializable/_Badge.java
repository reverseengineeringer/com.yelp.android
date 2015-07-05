package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONObject;

abstract class _Badge
  implements Parcelable
{
  protected String mDescription;
  protected float mExpirePercent;
  protected Date mExpireTime;
  protected String mId;
  protected String mImagePath;
  protected String mImageSmallPath;
  protected String mImageSmallUrl;
  protected String mImageUrl;
  protected boolean mIsAssigned;
  protected boolean mIsNew;
  protected Date mTimeAwarded;
  protected String mTitle;
  
  protected _Badge() {}
  
  protected _Badge(Date paramDate1, Date paramDate2, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, boolean paramBoolean1, boolean paramBoolean2, float paramFloat)
  {
    this();
    mTimeAwarded = paramDate1;
    mExpireTime = paramDate2;
    mTitle = paramString1;
    mId = paramString2;
    mDescription = paramString3;
    mImageUrl = paramString4;
    mImageSmallUrl = paramString5;
    mImagePath = paramString6;
    mImageSmallPath = paramString7;
    mIsNew = paramBoolean1;
    mIsAssigned = paramBoolean2;
    mExpirePercent = paramFloat;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getDescription()
  {
    return mDescription;
  }
  
  public float getExpirePercent()
  {
    return mExpirePercent;
  }
  
  public Date getExpireTime()
  {
    return mExpireTime;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public String getImagePath()
  {
    return mImagePath;
  }
  
  public String getImageSmallPath()
  {
    return mImageSmallPath;
  }
  
  public String getImageSmallUrl()
  {
    return mImageSmallUrl;
  }
  
  public String getImageUrl()
  {
    return mImageUrl;
  }
  
  public Date getTimeAwarded()
  {
    return mTimeAwarded;
  }
  
  public String getTitle()
  {
    return mTitle;
  }
  
  public boolean isAssigned()
  {
    return mIsAssigned;
  }
  
  public boolean isNew()
  {
    return mIsNew;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("time_awarded")) {
      mTimeAwarded = JsonUtil.parseTimestamp(paramJSONObject, "time_awarded");
    }
    if (!paramJSONObject.isNull("expire_time")) {
      mExpireTime = JsonUtil.parseTimestamp(paramJSONObject, "expire_time");
    }
    if (!paramJSONObject.isNull("title")) {
      mTitle = paramJSONObject.optString("title");
    }
    if (!paramJSONObject.isNull("id")) {
      mId = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("description")) {
      mDescription = paramJSONObject.optString("description");
    }
    if (!paramJSONObject.isNull("image_url")) {
      mImageUrl = paramJSONObject.optString("image_url");
    }
    if (!paramJSONObject.isNull("image_small_url")) {
      mImageSmallUrl = paramJSONObject.optString("image_small_url");
    }
    if (!paramJSONObject.isNull("image_path")) {
      mImagePath = paramJSONObject.optString("image_path");
    }
    if (!paramJSONObject.isNull("image_small_path")) {
      mImageSmallPath = paramJSONObject.optString("image_small_path");
    }
    mIsNew = paramJSONObject.optBoolean("new");
    mIsAssigned = paramJSONObject.optBoolean("assigned");
    mExpirePercent = ((float)paramJSONObject.optDouble("expire_pct"));
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      mTimeAwarded = new Date(l);
    }
    l = paramParcel.readLong();
    if (l != -2147483648L) {
      mExpireTime = new Date(l);
    }
    mTitle = paramParcel.readString();
    mId = paramParcel.readString();
    mDescription = paramParcel.readString();
    mImageUrl = paramParcel.readString();
    mImageSmallUrl = paramParcel.readString();
    mImagePath = paramParcel.readString();
    mImageSmallPath = paramParcel.readString();
    boolean[] arrayOfBoolean = paramParcel.createBooleanArray();
    mIsNew = arrayOfBoolean[0];
    mIsAssigned = arrayOfBoolean[1];
    mExpirePercent = paramParcel.readFloat();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mTimeAwarded != null) {
      localJSONObject.put("time_awarded", mTimeAwarded.getTime() / 1000L);
    }
    if (mExpireTime != null) {
      localJSONObject.put("expire_time", mExpireTime.getTime() / 1000L);
    }
    if (mTitle != null) {
      localJSONObject.put("title", mTitle);
    }
    if (mId != null) {
      localJSONObject.put("id", mId);
    }
    if (mDescription != null) {
      localJSONObject.put("description", mDescription);
    }
    if (mImageUrl != null) {
      localJSONObject.put("image_url", mImageUrl);
    }
    if (mImageSmallUrl != null) {
      localJSONObject.put("image_small_url", mImageSmallUrl);
    }
    if (mImagePath != null) {
      localJSONObject.put("image_path", mImagePath);
    }
    if (mImageSmallPath != null) {
      localJSONObject.put("image_small_path", mImageSmallPath);
    }
    localJSONObject.put("new", mIsNew);
    localJSONObject.put("assigned", mIsAssigned);
    localJSONObject.put("expire_pct", mExpirePercent);
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    long l2 = -2147483648L;
    if (mTimeAwarded == null)
    {
      l1 = -2147483648L;
      paramParcel.writeLong(l1);
      if (mExpireTime != null) {
        break label133;
      }
    }
    label133:
    for (long l1 = l2;; l1 = mExpireTime.getTime())
    {
      paramParcel.writeLong(l1);
      paramParcel.writeString(mTitle);
      paramParcel.writeString(mId);
      paramParcel.writeString(mDescription);
      paramParcel.writeString(mImageUrl);
      paramParcel.writeString(mImageSmallUrl);
      paramParcel.writeString(mImagePath);
      paramParcel.writeString(mImageSmallPath);
      paramParcel.writeBooleanArray(new boolean[] { mIsNew, mIsAssigned });
      paramParcel.writeFloat(mExpirePercent);
      return;
      l1 = mTimeAwarded.getTime();
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Badge
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */