package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONObject;

abstract class _Video
  implements Parcelable
{
  protected String mBusinessId;
  protected String mCaption;
  protected boolean mCurrentUserLiked;
  protected String mEmbedCode;
  protected int mFeedbackPositiveCount;
  protected String mId;
  protected int mIndex;
  protected String mPlayerCode;
  protected String mThumbnailUrl;
  protected Date mTimeCreated;
  protected Passport mUserPassport;
  protected String mVideoSource;
  
  protected _Video() {}
  
  protected _Video(Date paramDate, Passport paramPassport, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    this();
    mTimeCreated = paramDate;
    mUserPassport = paramPassport;
    mId = paramString1;
    mPlayerCode = paramString2;
    mEmbedCode = paramString3;
    mThumbnailUrl = paramString4;
    mVideoSource = paramString5;
    mBusinessId = paramString6;
    mCaption = paramString7;
    mCurrentUserLiked = paramBoolean;
    mFeedbackPositiveCount = paramInt1;
    mIndex = paramInt2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getBusinessId()
  {
    return mBusinessId;
  }
  
  public String getCaption()
  {
    return mCaption;
  }
  
  public boolean getCurrentUserLiked()
  {
    return mCurrentUserLiked;
  }
  
  public String getEmbedCode()
  {
    return mEmbedCode;
  }
  
  public int getFeedbackPositiveCount()
  {
    return mFeedbackPositiveCount;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public int getIndex()
  {
    return mIndex;
  }
  
  public String getPlayerCode()
  {
    return mPlayerCode;
  }
  
  public String getThumbnailUrl()
  {
    return mThumbnailUrl;
  }
  
  public Date getTimeCreated()
  {
    return mTimeCreated;
  }
  
  public Passport getUserPassport()
  {
    return mUserPassport;
  }
  
  public String getVideoSource()
  {
    return mVideoSource;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("time_created")) {
      mTimeCreated = JsonUtil.parseTimestamp(paramJSONObject, "time_created");
    }
    if (!paramJSONObject.isNull("user_passport")) {
      mUserPassport = ((Passport)Passport.CREATOR.parse(paramJSONObject.getJSONObject("user_passport")));
    }
    if (!paramJSONObject.isNull("id")) {
      mId = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("player_code")) {
      mPlayerCode = paramJSONObject.optString("player_code");
    }
    if (!paramJSONObject.isNull("embed_code")) {
      mEmbedCode = paramJSONObject.optString("embed_code");
    }
    if (!paramJSONObject.isNull("thumbnail_url")) {
      mThumbnailUrl = paramJSONObject.optString("thumbnail_url");
    }
    if (!paramJSONObject.isNull("video_source")) {
      mVideoSource = paramJSONObject.optString("video_source");
    }
    if (!paramJSONObject.isNull("business_id")) {
      mBusinessId = paramJSONObject.optString("business_id");
    }
    if (!paramJSONObject.isNull("caption")) {
      mCaption = paramJSONObject.optString("caption");
    }
    mCurrentUserLiked = paramJSONObject.optBoolean("current_user_liked");
    mFeedbackPositiveCount = paramJSONObject.optInt("feedback_positive_count");
    mIndex = paramJSONObject.optInt("index");
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      mTimeCreated = new Date(l);
    }
    mUserPassport = ((Passport)paramParcel.readParcelable(Passport.class.getClassLoader()));
    mId = paramParcel.readString();
    mPlayerCode = paramParcel.readString();
    mEmbedCode = paramParcel.readString();
    mThumbnailUrl = paramParcel.readString();
    mVideoSource = paramParcel.readString();
    mBusinessId = paramParcel.readString();
    mCaption = paramParcel.readString();
    mCurrentUserLiked = paramParcel.createBooleanArray()[0];
    mFeedbackPositiveCount = paramParcel.readInt();
    mIndex = paramParcel.readInt();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mTimeCreated != null) {
      localJSONObject.put("time_created", mTimeCreated.getTime() / 1000L);
    }
    if (mUserPassport != null) {
      localJSONObject.put("user_passport", mUserPassport.writeJSON());
    }
    if (mId != null) {
      localJSONObject.put("id", mId);
    }
    if (mPlayerCode != null) {
      localJSONObject.put("player_code", mPlayerCode);
    }
    if (mEmbedCode != null) {
      localJSONObject.put("embed_code", mEmbedCode);
    }
    if (mThumbnailUrl != null) {
      localJSONObject.put("thumbnail_url", mThumbnailUrl);
    }
    if (mVideoSource != null) {
      localJSONObject.put("video_source", mVideoSource);
    }
    if (mBusinessId != null) {
      localJSONObject.put("business_id", mBusinessId);
    }
    if (mCaption != null) {
      localJSONObject.put("caption", mCaption);
    }
    localJSONObject.put("current_user_liked", mCurrentUserLiked);
    localJSONObject.put("feedback_positive_count", mFeedbackPositiveCount);
    localJSONObject.put("index", mIndex);
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (mTimeCreated == null) {}
    for (long l = -2147483648L;; l = mTimeCreated.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeParcelable(mUserPassport, 0);
      paramParcel.writeString(mId);
      paramParcel.writeString(mPlayerCode);
      paramParcel.writeString(mEmbedCode);
      paramParcel.writeString(mThumbnailUrl);
      paramParcel.writeString(mVideoSource);
      paramParcel.writeString(mBusinessId);
      paramParcel.writeString(mCaption);
      paramParcel.writeBooleanArray(new boolean[] { mCurrentUserLiked });
      paramParcel.writeInt(mFeedbackPositiveCount);
      paramParcel.writeInt(mIndex);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Video
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */