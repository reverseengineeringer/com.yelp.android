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

abstract class _Photo
  implements Parcelable
{
  protected String mBusinessId;
  protected String mCaption;
  protected int mFeedbackPositiveCount;
  protected String mId;
  protected int mIndex;
  protected List<String> mPrivateFeedback;
  protected Date mTimeCreated;
  protected String mUrlPrefix;
  protected String mUrlSuffix;
  protected Passport mUserPassport;
  
  protected _Photo() {}
  
  protected _Photo(Date paramDate, List<String> paramList, Passport paramPassport, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, int paramInt1, int paramInt2)
  {
    this();
    mTimeCreated = paramDate;
    mPrivateFeedback = paramList;
    mUserPassport = paramPassport;
    mId = paramString1;
    mCaption = paramString2;
    mUrlPrefix = paramString3;
    mUrlSuffix = paramString4;
    mBusinessId = paramString5;
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
  
  public List<String> getPrivateFeedback()
  {
    return mPrivateFeedback;
  }
  
  public Date getTimeCreated()
  {
    return mTimeCreated;
  }
  
  public String getUrlPrefix()
  {
    return mUrlPrefix;
  }
  
  public String getUrlSuffix()
  {
    return mUrlSuffix;
  }
  
  public Passport getUserPassport()
  {
    return mUserPassport;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("time_created")) {
      mTimeCreated = JsonUtil.parseTimestamp(paramJSONObject, "time_created");
    }
    if (!paramJSONObject.isNull("feedback")) {}
    for (mPrivateFeedback = JsonUtil.getStringList(paramJSONObject.optJSONArray("feedback"));; mPrivateFeedback = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("user_passport")) {
        mUserPassport = ((Passport)Passport.CREATOR.parse(paramJSONObject.getJSONObject("user_passport")));
      }
      if (!paramJSONObject.isNull("id")) {
        mId = paramJSONObject.optString("id");
      }
      if (!paramJSONObject.isNull("caption")) {
        mCaption = paramJSONObject.optString("caption");
      }
      if (!paramJSONObject.isNull("url_prefix")) {
        mUrlPrefix = paramJSONObject.optString("url_prefix");
      }
      if (!paramJSONObject.isNull("url_suffix")) {
        mUrlSuffix = paramJSONObject.optString("url_suffix");
      }
      if (!paramJSONObject.isNull("business_id")) {
        mBusinessId = paramJSONObject.optString("business_id");
      }
      mFeedbackPositiveCount = paramJSONObject.optInt("feedback_positive_count");
      mIndex = paramJSONObject.optInt("index");
      return;
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      mTimeCreated = new Date(l);
    }
    mPrivateFeedback = paramParcel.createStringArrayList();
    mUserPassport = ((Passport)paramParcel.readParcelable(Passport.class.getClassLoader()));
    mId = paramParcel.readString();
    mCaption = paramParcel.readString();
    mUrlPrefix = paramParcel.readString();
    mUrlSuffix = paramParcel.readString();
    mBusinessId = paramParcel.readString();
    mFeedbackPositiveCount = paramParcel.readInt();
    mIndex = paramParcel.readInt();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mTimeCreated != null) {
      localJSONObject.put("time_created", mTimeCreated.getTime() / 1000L);
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
    if (mUserPassport != null) {
      localJSONObject.put("user_passport", mUserPassport.writeJSON());
    }
    if (mId != null) {
      localJSONObject.put("id", mId);
    }
    if (mCaption != null) {
      localJSONObject.put("caption", mCaption);
    }
    if (mUrlPrefix != null) {
      localJSONObject.put("url_prefix", mUrlPrefix);
    }
    if (mUrlSuffix != null) {
      localJSONObject.put("url_suffix", mUrlSuffix);
    }
    if (mBusinessId != null) {
      localJSONObject.put("business_id", mBusinessId);
    }
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
      paramParcel.writeStringList(mPrivateFeedback);
      paramParcel.writeParcelable(mUserPassport, 0);
      paramParcel.writeString(mId);
      paramParcel.writeString(mCaption);
      paramParcel.writeString(mUrlPrefix);
      paramParcel.writeString(mUrlSuffix);
      paramParcel.writeString(mBusinessId);
      paramParcel.writeInt(mFeedbackPositiveCount);
      paramParcel.writeInt(mIndex);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Photo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */