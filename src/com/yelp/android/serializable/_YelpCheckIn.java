package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

abstract class _YelpCheckIn
  implements Parcelable
{
  protected YelpBusiness mBusiness;
  protected String mBusinessId;
  protected String mBusinessName;
  protected int mCommentsCount;
  protected String mContributionTypeString;
  protected Date mDateCreated;
  protected int mFriendActiveCount;
  protected int mFriendRank;
  protected String mId;
  protected int mInterval;
  protected boolean mIsCommentable;
  protected String mLocation;
  protected int mLocationRank;
  protected List<Badge> mNewBadges;
  protected int mPositiveFeedback;
  protected Comment mPrimaryComment;
  protected List<String> mPrivateFeedback;
  protected int mRegularRank;
  protected ArrayList<SurveyQuestion> mSurveyQuestions;
  protected String mTip;
  protected int mTotalCount;
  protected int mTotalSurveyQuestions;
  protected User mUser;
  protected int mUserCount;
  protected String mUserId;
  protected int mWeekCount;
  
  protected _YelpCheckIn() {}
  
  protected _YelpCheckIn(ArrayList<SurveyQuestion> paramArrayList, Comment paramComment, Date paramDate, List<Badge> paramList, List<String> paramList1, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, User paramUser, YelpBusiness paramYelpBusiness, boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9, int paramInt10, int paramInt11)
  {
    this();
    mSurveyQuestions = paramArrayList;
    mPrimaryComment = paramComment;
    mDateCreated = paramDate;
    mNewBadges = paramList;
    mPrivateFeedback = paramList1;
    mId = paramString1;
    mBusinessId = paramString2;
    mUserId = paramString3;
    mTip = paramString4;
    mLocation = paramString5;
    mBusinessName = paramString6;
    mContributionTypeString = paramString7;
    mUser = paramUser;
    mBusiness = paramYelpBusiness;
    mIsCommentable = paramBoolean;
    mInterval = paramInt1;
    mTotalCount = paramInt2;
    mWeekCount = paramInt3;
    mUserCount = paramInt4;
    mLocationRank = paramInt5;
    mFriendRank = paramInt6;
    mFriendActiveCount = paramInt7;
    mRegularRank = paramInt8;
    mCommentsCount = paramInt9;
    mPositiveFeedback = paramInt10;
    mTotalSurveyQuestions = paramInt11;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public YelpBusiness getBusiness()
  {
    return mBusiness;
  }
  
  public String getBusinessId()
  {
    return mBusinessId;
  }
  
  public String getBusinessName()
  {
    return mBusinessName;
  }
  
  public int getCommentsCount()
  {
    return mCommentsCount;
  }
  
  public String getContributionTypeString()
  {
    return mContributionTypeString;
  }
  
  public Date getDateCreated()
  {
    return mDateCreated;
  }
  
  public int getFriendActiveCount()
  {
    return mFriendActiveCount;
  }
  
  public int getFriendRank()
  {
    return mFriendRank;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public int getInterval()
  {
    return mInterval;
  }
  
  public String getLocation()
  {
    return mLocation;
  }
  
  public int getLocationRank()
  {
    return mLocationRank;
  }
  
  public List<Badge> getNewBadges()
  {
    return mNewBadges;
  }
  
  public int getPositiveFeedback()
  {
    return mPositiveFeedback;
  }
  
  public Comment getPrimaryComment()
  {
    return mPrimaryComment;
  }
  
  public List<String> getPrivateFeedback()
  {
    return mPrivateFeedback;
  }
  
  public int getRegularRank()
  {
    return mRegularRank;
  }
  
  public ArrayList<SurveyQuestion> getSurveyQuestions()
  {
    return mSurveyQuestions;
  }
  
  public String getTip()
  {
    return mTip;
  }
  
  public int getTotalCount()
  {
    return mTotalCount;
  }
  
  public int getTotalSurveyQuestions()
  {
    return mTotalSurveyQuestions;
  }
  
  public User getUser()
  {
    return mUser;
  }
  
  public int getUserCount()
  {
    return mUserCount;
  }
  
  public String getUserId()
  {
    return mUserId;
  }
  
  public int getWeekCount()
  {
    return mWeekCount;
  }
  
  public boolean isCommentable()
  {
    return mIsCommentable;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("survey_questions"))
    {
      mSurveyQuestions = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("survey_questions"), SurveyQuestion.CREATOR);
      if (!paramJSONObject.isNull("primary_comment")) {
        mPrimaryComment = ((Comment)Comment.CREATOR.parse(paramJSONObject.getJSONObject("primary_comment")));
      }
      if (!paramJSONObject.isNull("time_created")) {
        mDateCreated = JsonUtil.parseTimestamp(paramJSONObject, "time_created");
      }
      if (paramJSONObject.isNull("new_badges")) {
        break label458;
      }
      mNewBadges = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("new_badges"), Badge.CREATOR);
      label97:
      if (paramJSONObject.isNull("feedback")) {
        break label468;
      }
      mPrivateFeedback = JsonUtil.getStringList(paramJSONObject.optJSONArray("feedback"));
      label119:
      if (!paramJSONObject.isNull("id")) {
        mId = paramJSONObject.optString("id");
      }
      if (!paramJSONObject.isNull("business_id")) {
        mBusinessId = paramJSONObject.optString("business_id");
      }
      if (!paramJSONObject.isNull("user_id")) {
        mUserId = paramJSONObject.optString("user_id");
      }
      if (!paramJSONObject.isNull("quicktip_text")) {
        mTip = paramJSONObject.optString("quicktip_text");
      }
      if (!paramJSONObject.isNull("location")) {
        mLocation = paramJSONObject.optString("location");
      }
      if (!paramJSONObject.isNull("business_name")) {
        mBusinessName = paramJSONObject.optString("business_name");
      }
      if (!paramJSONObject.isNull("contribution_type")) {
        mContributionTypeString = paramJSONObject.optString("contribution_type");
      }
      if (!paramJSONObject.isNull("user")) {
        mUser = ((User)User.CREATOR.parse(paramJSONObject.getJSONObject("user")));
      }
      if (!paramJSONObject.isNull("business")) {
        mBusiness = ((YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business")));
      }
      if (paramJSONObject.isNull("is_commentable")) {
        break label478;
      }
    }
    label458:
    label468:
    label478:
    for (mIsCommentable = paramJSONObject.optBoolean("is_commentable");; mIsCommentable = true)
    {
      mInterval = paramJSONObject.optInt("interval");
      mTotalCount = paramJSONObject.optInt("check_in_count");
      mWeekCount = paramJSONObject.optInt("week_count");
      mUserCount = paramJSONObject.optInt("user_count");
      mLocationRank = paramJSONObject.optInt("location_rank");
      mFriendRank = paramJSONObject.optInt("friend_rank");
      mFriendActiveCount = paramJSONObject.optInt("friend_active_count");
      mRegularRank = paramJSONObject.optInt("regular_rank");
      mCommentsCount = paramJSONObject.optInt("comments_count");
      mPositiveFeedback = paramJSONObject.optInt("feedback_positive_count");
      mTotalSurveyQuestions = paramJSONObject.optInt("total_survey_questions");
      return;
      mSurveyQuestions = new ArrayList();
      break;
      mNewBadges = Collections.emptyList();
      break label97;
      mPrivateFeedback = Collections.emptyList();
      break label119;
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mSurveyQuestions = paramParcel.createTypedArrayList(SurveyQuestion.CREATOR);
    mPrimaryComment = ((Comment)paramParcel.readParcelable(Comment.class.getClassLoader()));
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      mDateCreated = new Date(l);
    }
    mNewBadges = paramParcel.createTypedArrayList(Badge.CREATOR);
    mPrivateFeedback = paramParcel.createStringArrayList();
    mId = paramParcel.readString();
    mBusinessId = paramParcel.readString();
    mUserId = paramParcel.readString();
    mTip = paramParcel.readString();
    mLocation = paramParcel.readString();
    mBusinessName = paramParcel.readString();
    mContributionTypeString = paramParcel.readString();
    mUser = ((User)paramParcel.readParcelable(User.class.getClassLoader()));
    mBusiness = ((YelpBusiness)paramParcel.readParcelable(YelpBusiness.class.getClassLoader()));
    mIsCommentable = paramParcel.createBooleanArray()[0];
    mInterval = paramParcel.readInt();
    mTotalCount = paramParcel.readInt();
    mWeekCount = paramParcel.readInt();
    mUserCount = paramParcel.readInt();
    mLocationRank = paramParcel.readInt();
    mFriendRank = paramParcel.readInt();
    mFriendActiveCount = paramParcel.readInt();
    mRegularRank = paramParcel.readInt();
    mCommentsCount = paramParcel.readInt();
    mPositiveFeedback = paramParcel.readInt();
    mTotalSurveyQuestions = paramParcel.readInt();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    JSONArray localJSONArray;
    Iterator localIterator;
    if (mSurveyQuestions != null)
    {
      localJSONArray = new JSONArray();
      localIterator = mSurveyQuestions.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((SurveyQuestion)localIterator.next()).writeJSON());
      }
      localJSONObject.put("survey_questions", localJSONArray);
    }
    if (mPrimaryComment != null) {
      localJSONObject.put("primary_comment", mPrimaryComment.writeJSON());
    }
    if (mDateCreated != null) {
      localJSONObject.put("time_created", mDateCreated.getTime() / 1000L);
    }
    if (mNewBadges != null)
    {
      localJSONArray = new JSONArray();
      localIterator = mNewBadges.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((Badge)localIterator.next()).writeJSON());
      }
      localJSONObject.put("new_badges", localJSONArray);
    }
    if (mPrivateFeedback != null)
    {
      localJSONArray = new JSONArray();
      localIterator = mPrivateFeedback.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put((String)localIterator.next());
      }
      localJSONObject.put("feedback", localJSONArray);
    }
    if (mId != null) {
      localJSONObject.put("id", mId);
    }
    if (mBusinessId != null) {
      localJSONObject.put("business_id", mBusinessId);
    }
    if (mUserId != null) {
      localJSONObject.put("user_id", mUserId);
    }
    if (mTip != null) {
      localJSONObject.put("quicktip_text", mTip);
    }
    if (mLocation != null) {
      localJSONObject.put("location", mLocation);
    }
    if (mBusinessName != null) {
      localJSONObject.put("business_name", mBusinessName);
    }
    if (mContributionTypeString != null) {
      localJSONObject.put("contribution_type", mContributionTypeString);
    }
    if (mUser != null) {
      localJSONObject.put("user", mUser.writeJSON());
    }
    if (mBusiness != null) {
      localJSONObject.put("business", mBusiness.writeJSON());
    }
    localJSONObject.put("is_commentable", mIsCommentable);
    localJSONObject.put("interval", mInterval);
    localJSONObject.put("check_in_count", mTotalCount);
    localJSONObject.put("week_count", mWeekCount);
    localJSONObject.put("user_count", mUserCount);
    localJSONObject.put("location_rank", mLocationRank);
    localJSONObject.put("friend_rank", mFriendRank);
    localJSONObject.put("friend_active_count", mFriendActiveCount);
    localJSONObject.put("regular_rank", mRegularRank);
    localJSONObject.put("comments_count", mCommentsCount);
    localJSONObject.put("feedback_positive_count", mPositiveFeedback);
    localJSONObject.put("total_survey_questions", mTotalSurveyQuestions);
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeTypedList(mSurveyQuestions);
    paramParcel.writeParcelable(mPrimaryComment, 0);
    if (mDateCreated == null) {}
    for (long l = -2147483648L;; l = mDateCreated.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeTypedList(mNewBadges);
      paramParcel.writeStringList(mPrivateFeedback);
      paramParcel.writeString(mId);
      paramParcel.writeString(mBusinessId);
      paramParcel.writeString(mUserId);
      paramParcel.writeString(mTip);
      paramParcel.writeString(mLocation);
      paramParcel.writeString(mBusinessName);
      paramParcel.writeString(mContributionTypeString);
      paramParcel.writeParcelable(mUser, 0);
      paramParcel.writeParcelable(mBusiness, 0);
      paramParcel.writeBooleanArray(new boolean[] { mIsCommentable });
      paramParcel.writeInt(mInterval);
      paramParcel.writeInt(mTotalCount);
      paramParcel.writeInt(mWeekCount);
      paramParcel.writeInt(mUserCount);
      paramParcel.writeInt(mLocationRank);
      paramParcel.writeInt(mFriendRank);
      paramParcel.writeInt(mFriendActiveCount);
      paramParcel.writeInt(mRegularRank);
      paramParcel.writeInt(mCommentsCount);
      paramParcel.writeInt(mPositiveFeedback);
      paramParcel.writeInt(mTotalSurveyQuestions);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._YelpCheckIn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */