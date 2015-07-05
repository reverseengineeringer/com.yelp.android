package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONArray;
import org.json.JSONObject;

abstract class _Ranking
  implements Parcelable
{
  protected String mBusinessName;
  protected int mCount;
  protected Date mDateCreated;
  protected int mRank;
  protected int[] mUserEliteYears;
  protected int mUserFriendCount;
  protected String mUserId;
  protected String mUserName;
  protected int mUserPhotoCount;
  protected String mUserPhotoUrl;
  protected int mUserReviewCount;
  protected int mUserVideoCount;
  
  protected _Ranking() {}
  
  protected _Ranking(Date paramDate, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int[] paramArrayOfInt)
  {
    this();
    mDateCreated = paramDate;
    mUserId = paramString1;
    mUserName = paramString2;
    mUserPhotoUrl = paramString3;
    mBusinessName = paramString4;
    mUserFriendCount = paramInt1;
    mUserReviewCount = paramInt2;
    mUserVideoCount = paramInt3;
    mUserPhotoCount = paramInt4;
    mRank = paramInt5;
    mCount = paramInt6;
    mUserEliteYears = paramArrayOfInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getBusinessName()
  {
    return mBusinessName;
  }
  
  public int getCount()
  {
    return mCount;
  }
  
  public Date getDateCreated()
  {
    return mDateCreated;
  }
  
  public int getRank()
  {
    return mRank;
  }
  
  public int[] getUserEliteYears()
  {
    return mUserEliteYears;
  }
  
  public int getUserFriendCount()
  {
    return mUserFriendCount;
  }
  
  public String getUserId()
  {
    return mUserId;
  }
  
  public String getUserName()
  {
    return mUserName;
  }
  
  public int getUserPhotoCount()
  {
    return mUserPhotoCount;
  }
  
  public String getUserPhotoUrl()
  {
    return mUserPhotoUrl;
  }
  
  public int getUserReviewCount()
  {
    return mUserReviewCount;
  }
  
  public int getUserVideoCount()
  {
    return mUserVideoCount;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("time_created")) {
      mDateCreated = JsonUtil.parseTimestamp(paramJSONObject, "time_created");
    }
    if (!paramJSONObject.isNull("user_id")) {
      mUserId = paramJSONObject.optString("user_id");
    }
    if (!paramJSONObject.isNull("user_name")) {
      mUserName = paramJSONObject.optString("user_name");
    }
    if (!paramJSONObject.isNull("user_photo_url")) {
      mUserPhotoUrl = paramJSONObject.optString("user_photo_url");
    }
    if (!paramJSONObject.isNull("business_name")) {
      mBusinessName = paramJSONObject.optString("business_name");
    }
    mUserFriendCount = paramJSONObject.optInt("user_friend_count");
    mUserReviewCount = paramJSONObject.optInt("user_review_count");
    mUserVideoCount = paramJSONObject.optInt("user_video_count");
    mUserPhotoCount = paramJSONObject.optInt("user_photo_count");
    mRank = paramJSONObject.optInt("rank");
    mCount = paramJSONObject.optInt("count");
    if (!paramJSONObject.isNull("user_elite_years"))
    {
      paramJSONObject = paramJSONObject.getJSONArray("user_elite_years");
      int j = paramJSONObject.length();
      mUserEliteYears = new int[j];
      int i = 0;
      while (i < j)
      {
        mUserEliteYears[i] = paramJSONObject.getInt(i);
        i += 1;
      }
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      mDateCreated = new Date(l);
    }
    mUserId = paramParcel.readString();
    mUserName = paramParcel.readString();
    mUserPhotoUrl = paramParcel.readString();
    mBusinessName = paramParcel.readString();
    mUserFriendCount = paramParcel.readInt();
    mUserReviewCount = paramParcel.readInt();
    mUserVideoCount = paramParcel.readInt();
    mUserPhotoCount = paramParcel.readInt();
    mRank = paramParcel.readInt();
    mCount = paramParcel.readInt();
    mUserEliteYears = paramParcel.createIntArray();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (mDateCreated == null) {}
    for (long l = -2147483648L;; l = mDateCreated.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeString(mUserId);
      paramParcel.writeString(mUserName);
      paramParcel.writeString(mUserPhotoUrl);
      paramParcel.writeString(mBusinessName);
      paramParcel.writeInt(mUserFriendCount);
      paramParcel.writeInt(mUserReviewCount);
      paramParcel.writeInt(mUserVideoCount);
      paramParcel.writeInt(mUserPhotoCount);
      paramParcel.writeInt(mRank);
      paramParcel.writeInt(mCount);
      paramParcel.writeIntArray(mUserEliteYears);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Ranking
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */