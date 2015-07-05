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

abstract class _RecentCheckIn
  implements Parcelable
{
  protected int mCommentsCount;
  protected Date mDateCreated;
  protected List<String> mFeedback;
  protected String mId;
  protected String mLocationRankTitle;
  protected int mPositiveFeedback;
  protected Comment mPrimaryComment;
  protected int mTotalCount;
  protected User mUser;
  
  protected _RecentCheckIn() {}
  
  protected _RecentCheckIn(Comment paramComment, Date paramDate, List<String> paramList, String paramString1, String paramString2, User paramUser, int paramInt1, int paramInt2, int paramInt3)
  {
    this();
    mPrimaryComment = paramComment;
    mDateCreated = paramDate;
    mFeedback = paramList;
    mId = paramString1;
    mLocationRankTitle = paramString2;
    mUser = paramUser;
    mTotalCount = paramInt1;
    mCommentsCount = paramInt2;
    mPositiveFeedback = paramInt3;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getCommentsCount()
  {
    return mCommentsCount;
  }
  
  public Date getDateCreated()
  {
    return mDateCreated;
  }
  
  public List<String> getFeedback()
  {
    return mFeedback;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public String getLocationRankTitle()
  {
    return mLocationRankTitle;
  }
  
  public int getPositiveFeedback()
  {
    return mPositiveFeedback;
  }
  
  public Comment getPrimaryComment()
  {
    return mPrimaryComment;
  }
  
  public int getTotalCount()
  {
    return mTotalCount;
  }
  
  public User getUser()
  {
    return mUser;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("primary_comment")) {
      mPrimaryComment = ((Comment)Comment.CREATOR.parse(paramJSONObject.getJSONObject("primary_comment")));
    }
    if (!paramJSONObject.isNull("time_created")) {
      mDateCreated = JsonUtil.parseTimestamp(paramJSONObject, "time_created");
    }
    if (!paramJSONObject.isNull("feedback")) {}
    for (mFeedback = JsonUtil.getStringList(paramJSONObject.optJSONArray("feedback"));; mFeedback = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("id")) {
        mId = paramJSONObject.optString("id");
      }
      if (!paramJSONObject.isNull("location_rank_title")) {
        mLocationRankTitle = paramJSONObject.optString("location_rank_title");
      }
      if (!paramJSONObject.isNull("user")) {
        mUser = ((User)User.CREATOR.parse(paramJSONObject.getJSONObject("user")));
      }
      mTotalCount = paramJSONObject.optInt("check_in_count");
      mCommentsCount = paramJSONObject.optInt("comments_count");
      mPositiveFeedback = paramJSONObject.optInt("feedback_positive_count");
      return;
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mPrimaryComment = ((Comment)paramParcel.readParcelable(Comment.class.getClassLoader()));
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      mDateCreated = new Date(l);
    }
    mFeedback = paramParcel.createStringArrayList();
    mId = paramParcel.readString();
    mLocationRankTitle = paramParcel.readString();
    mUser = ((User)paramParcel.readParcelable(User.class.getClassLoader()));
    mTotalCount = paramParcel.readInt();
    mCommentsCount = paramParcel.readInt();
    mPositiveFeedback = paramParcel.readInt();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mPrimaryComment != null) {
      localJSONObject.put("primary_comment", mPrimaryComment.writeJSON());
    }
    if (mDateCreated != null) {
      localJSONObject.put("time_created", mDateCreated.getTime() / 1000L);
    }
    if (mFeedback != null)
    {
      JSONArray localJSONArray = new JSONArray();
      Iterator localIterator = mFeedback.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put((String)localIterator.next());
      }
      localJSONObject.put("feedback", localJSONArray);
    }
    if (mId != null) {
      localJSONObject.put("id", mId);
    }
    if (mLocationRankTitle != null) {
      localJSONObject.put("location_rank_title", mLocationRankTitle);
    }
    if (mUser != null) {
      localJSONObject.put("user", mUser.writeJSON());
    }
    localJSONObject.put("check_in_count", mTotalCount);
    localJSONObject.put("comments_count", mCommentsCount);
    localJSONObject.put("feedback_positive_count", mPositiveFeedback);
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(mPrimaryComment, 0);
    if (mDateCreated == null) {}
    for (long l = -2147483648L;; l = mDateCreated.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeStringList(mFeedback);
      paramParcel.writeString(mId);
      paramParcel.writeString(mLocationRankTitle);
      paramParcel.writeParcelable(mUser, 0);
      paramParcel.writeInt(mTotalCount);
      paramParcel.writeInt(mCommentsCount);
      paramParcel.writeInt(mPositiveFeedback);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._RecentCheckIn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */