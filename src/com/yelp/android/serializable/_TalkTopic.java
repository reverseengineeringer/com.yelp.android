package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONArray;
import org.json.JSONObject;

abstract class _TalkTopic
  implements Parcelable
{
  protected String mCategoryName;
  protected String mId;
  protected int mReplyCount;
  protected String mText;
  protected Date mTimeCreated;
  protected Date mTimeModified;
  protected String mTitle;
  protected int[] mUserEliteYears;
  protected int mUserFriendCount;
  protected String mUserId;
  protected String mUserName;
  protected int mUserPhotoCount;
  protected String mUserPhotoUrl;
  protected int mUserReviewCount;
  protected int mUserVideoCount;
  
  protected _TalkTopic() {}
  
  protected _TalkTopic(Date paramDate1, Date paramDate2, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int[] paramArrayOfInt)
  {
    this();
    mTimeCreated = paramDate1;
    mTimeModified = paramDate2;
    mTitle = paramString1;
    mId = paramString2;
    mText = paramString3;
    mCategoryName = paramString4;
    mUserName = paramString5;
    mUserPhotoUrl = paramString6;
    mUserId = paramString7;
    mReplyCount = paramInt1;
    mUserReviewCount = paramInt2;
    mUserVideoCount = paramInt3;
    mUserPhotoCount = paramInt4;
    mUserFriendCount = paramInt5;
    mUserEliteYears = paramArrayOfInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getCategoryName()
  {
    return mCategoryName;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public int getReplyCount()
  {
    return mReplyCount;
  }
  
  public String getText()
  {
    return mText;
  }
  
  public Date getTimeCreated()
  {
    return mTimeCreated;
  }
  
  public Date getTimeModified()
  {
    return mTimeModified;
  }
  
  public String getTitle()
  {
    return mTitle;
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
      mTimeCreated = JsonUtil.parseTimestamp(paramJSONObject, "time_created");
    }
    if (!paramJSONObject.isNull("time_modified")) {
      mTimeModified = JsonUtil.parseTimestamp(paramJSONObject, "time_modified");
    }
    if (!paramJSONObject.isNull("title")) {
      mTitle = paramJSONObject.optString("title");
    }
    if (!paramJSONObject.isNull("id")) {
      mId = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("text")) {
      mText = paramJSONObject.optString("text");
    }
    if (!paramJSONObject.isNull("category_name")) {
      mCategoryName = paramJSONObject.optString("category_name");
    }
    if (!paramJSONObject.isNull("user_name")) {
      mUserName = paramJSONObject.optString("user_name");
    }
    if (!paramJSONObject.isNull("user_photo_url")) {
      mUserPhotoUrl = paramJSONObject.optString("user_photo_url");
    }
    if (!paramJSONObject.isNull("user_id")) {
      mUserId = paramJSONObject.optString("user_id");
    }
    mReplyCount = paramJSONObject.optInt("reply_count");
    mUserReviewCount = paramJSONObject.optInt("user_review_count");
    mUserVideoCount = paramJSONObject.optInt("user_video_count");
    mUserPhotoCount = paramJSONObject.optInt("user_photo_count");
    mUserFriendCount = paramJSONObject.optInt("user_friend_count");
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
      mTimeCreated = new Date(l);
    }
    l = paramParcel.readLong();
    if (l != -2147483648L) {
      mTimeModified = new Date(l);
    }
    mTitle = paramParcel.readString();
    mId = paramParcel.readString();
    mText = paramParcel.readString();
    mCategoryName = paramParcel.readString();
    mUserName = paramParcel.readString();
    mUserPhotoUrl = paramParcel.readString();
    mUserId = paramParcel.readString();
    mReplyCount = paramParcel.readInt();
    mUserReviewCount = paramParcel.readInt();
    mUserVideoCount = paramParcel.readInt();
    mUserPhotoCount = paramParcel.readInt();
    mUserFriendCount = paramParcel.readInt();
    mUserEliteYears = paramParcel.createIntArray();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    long l2 = -2147483648L;
    if (mTimeCreated == null)
    {
      l1 = -2147483648L;
      paramParcel.writeLong(l1);
      if (mTimeModified != null) {
        break label152;
      }
    }
    label152:
    for (long l1 = l2;; l1 = mTimeModified.getTime())
    {
      paramParcel.writeLong(l1);
      paramParcel.writeString(mTitle);
      paramParcel.writeString(mId);
      paramParcel.writeString(mText);
      paramParcel.writeString(mCategoryName);
      paramParcel.writeString(mUserName);
      paramParcel.writeString(mUserPhotoUrl);
      paramParcel.writeString(mUserId);
      paramParcel.writeInt(mReplyCount);
      paramParcel.writeInt(mUserReviewCount);
      paramParcel.writeInt(mUserVideoCount);
      paramParcel.writeInt(mUserPhotoCount);
      paramParcel.writeInt(mUserFriendCount);
      paramParcel.writeIntArray(mUserEliteYears);
      return;
      l1 = mTimeCreated.getTime();
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._TalkTopic
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */