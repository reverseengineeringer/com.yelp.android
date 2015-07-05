package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

abstract class _Tip
  implements Parcelable
{
  protected String mBusinessId;
  protected String mBusinessName;
  protected String mBusinessPhotoUrl;
  protected int mComplimentCount;
  protected String mId;
  protected boolean mIsFirstTip;
  protected Photo mPhoto;
  protected int mPositiveFeedback;
  protected List<String> mPrivateFeedback;
  protected String mText;
  protected Date mTime;
  protected Date mTipOfTheDayTime;
  protected String mUserId;
  protected String mUserName;
  protected String mUserPhotoUrl;
  
  protected _Tip() {}
  
  protected _Tip(Date paramDate1, Date paramDate2, List<String> paramList, Photo paramPhoto, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, boolean paramBoolean, int paramInt1, int paramInt2)
  {
    this();
    mTime = paramDate1;
    mTipOfTheDayTime = paramDate2;
    mPrivateFeedback = paramList;
    mPhoto = paramPhoto;
    mId = paramString1;
    mUserName = paramString2;
    mUserId = paramString3;
    mText = paramString4;
    mBusinessId = paramString5;
    mBusinessPhotoUrl = paramString6;
    mBusinessName = paramString7;
    mUserPhotoUrl = paramString8;
    mIsFirstTip = paramBoolean;
    mPositiveFeedback = paramInt1;
    mComplimentCount = paramInt2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getBusinessId()
  {
    return mBusinessId;
  }
  
  public String getBusinessName()
  {
    return mBusinessName;
  }
  
  public String getBusinessPhotoUrl()
  {
    return mBusinessPhotoUrl;
  }
  
  public int getComplimentCount()
  {
    return mComplimentCount;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public Photo getPhoto()
  {
    return mPhoto;
  }
  
  public int getPositiveFeedback()
  {
    return mPositiveFeedback;
  }
  
  public List<String> getPrivateFeedback()
  {
    return mPrivateFeedback;
  }
  
  public String getText()
  {
    return mText;
  }
  
  public Date getTime()
  {
    return mTime;
  }
  
  public Date getTipOfTheDayTime()
  {
    return mTipOfTheDayTime;
  }
  
  public String getUserId()
  {
    return mUserId;
  }
  
  public String getUserName()
  {
    return mUserName;
  }
  
  public String getUserPhotoUrl()
  {
    return mUserPhotoUrl;
  }
  
  public boolean isFirstTip()
  {
    return mIsFirstTip;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("time_modified")) {
      mTime = JsonUtil.parseTimestamp(paramJSONObject, "time_modified");
    }
    if (!paramJSONObject.isNull("totd_time")) {
      mTipOfTheDayTime = JsonUtil.parseTimestamp(paramJSONObject, "totd_time");
    }
    if (!paramJSONObject.isNull("feedback")) {}
    for (mPrivateFeedback = JsonUtil.getStringList(paramJSONObject.optJSONArray("feedback"));; mPrivateFeedback = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("photo")) {
        mPhoto = ((Photo)Photo.CREATOR.parse(paramJSONObject.getJSONObject("photo")));
      }
      if (!paramJSONObject.isNull("id")) {
        mId = paramJSONObject.optString("id");
      }
      if (!paramJSONObject.isNull("user_name")) {
        mUserName = paramJSONObject.optString("user_name");
      }
      if (!paramJSONObject.isNull("user_id")) {
        mUserId = paramJSONObject.optString("user_id");
      }
      if (!paramJSONObject.isNull("text")) {
        mText = paramJSONObject.optString("text");
      }
      if (!paramJSONObject.isNull("business_id")) {
        mBusinessId = paramJSONObject.optString("business_id");
      }
      if (!paramJSONObject.isNull("business_photo_url")) {
        mBusinessPhotoUrl = paramJSONObject.optString("business_photo_url");
      }
      if (!paramJSONObject.isNull("business_name")) {
        mBusinessName = paramJSONObject.optString("business_name");
      }
      if (!paramJSONObject.isNull("user_photo_url")) {
        mUserPhotoUrl = paramJSONObject.optString("user_photo_url");
      }
      mIsFirstTip = paramJSONObject.optBoolean("is_first_tip");
      mPositiveFeedback = paramJSONObject.optInt("feedback_positive_count");
      mComplimentCount = paramJSONObject.optInt("compliment_count");
      return;
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      mTime = new Date(l);
    }
    l = paramParcel.readLong();
    if (l != -2147483648L) {
      mTipOfTheDayTime = new Date(l);
    }
    mPrivateFeedback = paramParcel.createStringArrayList();
    mPhoto = ((Photo)paramParcel.readParcelable(Photo.class.getClassLoader()));
    mId = paramParcel.readString();
    mUserName = paramParcel.readString();
    mUserId = paramParcel.readString();
    mText = paramParcel.readString();
    mBusinessId = paramParcel.readString();
    mBusinessPhotoUrl = paramParcel.readString();
    mBusinessName = paramParcel.readString();
    mUserPhotoUrl = paramParcel.readString();
    mIsFirstTip = paramParcel.createBooleanArray()[0];
    mPositiveFeedback = paramParcel.readInt();
    mComplimentCount = paramParcel.readInt();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mTime != null) {
      localJSONObject.put("time_modified", mTime.getTime() / 1000L);
    }
    if (mTipOfTheDayTime != null) {
      localJSONObject.put("totd_time", mTipOfTheDayTime.getTime() / 1000L);
    }
    if (mPrivateFeedback != null)
    {
      JSONArray localJSONArray = new JSONArray();
      Iterator localIterator = mPrivateFeedback.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put((String)localIterator.next());
      }
      localJSONObject.put("feedback", localJSONArray);
    }
    if (mPhoto != null) {
      localJSONObject.put("photo", mPhoto.writeJSON());
    }
    if (mId != null) {
      localJSONObject.put("id", mId);
    }
    if (mUserName != null) {
      localJSONObject.put("user_name", mUserName);
    }
    if (mUserId != null) {
      localJSONObject.put("user_id", mUserId);
    }
    if (mText != null) {
      localJSONObject.put("text", mText);
    }
    if (mBusinessId != null) {
      localJSONObject.put("business_id", mBusinessId);
    }
    if (mBusinessPhotoUrl != null) {
      localJSONObject.put("business_photo_url", mBusinessPhotoUrl);
    }
    if (mBusinessName != null) {
      localJSONObject.put("business_name", mBusinessName);
    }
    if (mUserPhotoUrl != null) {
      localJSONObject.put("user_photo_url", mUserPhotoUrl);
    }
    localJSONObject.put("is_first_tip", mIsFirstTip);
    localJSONObject.put("feedback_positive_count", mPositiveFeedback);
    localJSONObject.put("compliment_count", mComplimentCount);
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    long l2 = -2147483648L;
    if (mTime == null)
    {
      l1 = -2147483648L;
      paramParcel.writeLong(l1);
      if (mTipOfTheDayTime != null) {
        break label159;
      }
    }
    label159:
    for (long l1 = l2;; l1 = mTipOfTheDayTime.getTime())
    {
      paramParcel.writeLong(l1);
      paramParcel.writeStringList(mPrivateFeedback);
      paramParcel.writeParcelable(mPhoto, 0);
      paramParcel.writeString(mId);
      paramParcel.writeString(mUserName);
      paramParcel.writeString(mUserId);
      paramParcel.writeString(mText);
      paramParcel.writeString(mBusinessId);
      paramParcel.writeString(mBusinessPhotoUrl);
      paramParcel.writeString(mBusinessName);
      paramParcel.writeString(mUserPhotoUrl);
      paramParcel.writeBooleanArray(new boolean[] { mIsFirstTip });
      paramParcel.writeInt(mPositiveFeedback);
      paramParcel.writeInt(mComplimentCount);
      return;
      l1 = mTime.getTime();
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Tip
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */