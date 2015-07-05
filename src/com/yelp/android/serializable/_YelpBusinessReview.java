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

abstract class _YelpBusinessReview
  implements Parcelable
{
  protected String mBusinessId;
  protected String mBusinessName;
  protected BusinessOwnerReply mBusinessOwnerReply;
  protected String mBusinessPhotoUrl;
  protected Date mDateModified;
  protected String mId;
  protected boolean mIsFirstReview;
  protected boolean mIsUserFollowed;
  protected boolean mIsUserFriend;
  protected String mLanguage;
  protected List<Photo> mPhotos;
  protected List<PreviousReview> mPreviousReviews;
  protected int mRating;
  protected String mText;
  protected String mTextAttributed;
  protected String mTextExcerpt;
  protected String mTranslatedText;
  protected long mUpdatableAfter;
  protected int mUserCheckInCount;
  protected List<String> mUserDisabledFeatures;
  protected int[] mUserEliteYears;
  protected int mUserFriendCount;
  protected String mUserId;
  protected String mUserName;
  protected int mUserPhotoCount;
  protected String mUserPhotoUrl;
  protected String mUserRankTitleText;
  protected int mUserReviewCount;
  protected int mUserVideoCount;
  protected List<Video> mVideos;
  
  protected _YelpBusinessReview() {}
  
  protected _YelpBusinessReview(BusinessOwnerReply paramBusinessOwnerReply, Date paramDate, List<Photo> paramList, List<PreviousReview> paramList1, List<String> paramList2, List<Video> paramList3, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, String paramString11, String paramString12, String paramString13, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int[] paramArrayOfInt, long paramLong)
  {
    this();
    mBusinessOwnerReply = paramBusinessOwnerReply;
    mDateModified = paramDate;
    mPhotos = paramList;
    mPreviousReviews = paramList1;
    mUserDisabledFeatures = paramList2;
    mVideos = paramList3;
    mId = paramString1;
    mUserId = paramString2;
    mBusinessId = paramString3;
    mText = paramString4;
    mTextExcerpt = paramString5;
    mUserName = paramString6;
    mUserPhotoUrl = paramString7;
    mBusinessName = paramString8;
    mBusinessPhotoUrl = paramString9;
    mUserRankTitleText = paramString10;
    mTextAttributed = paramString11;
    mTranslatedText = paramString12;
    mLanguage = paramString13;
    mIsUserFriend = paramBoolean1;
    mIsUserFollowed = paramBoolean2;
    mIsFirstReview = paramBoolean3;
    mRating = paramInt1;
    mUserReviewCount = paramInt2;
    mUserFriendCount = paramInt3;
    mUserCheckInCount = paramInt4;
    mUserPhotoCount = paramInt5;
    mUserVideoCount = paramInt6;
    mUserEliteYears = paramArrayOfInt;
    mUpdatableAfter = paramLong;
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
  
  public BusinessOwnerReply getBusinessOwnerReply()
  {
    return mBusinessOwnerReply;
  }
  
  public String getBusinessPhotoUrl()
  {
    return mBusinessPhotoUrl;
  }
  
  public Date getDateModified()
  {
    return mDateModified;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public String getLanguage()
  {
    return mLanguage;
  }
  
  public List<Photo> getPhotos()
  {
    return mPhotos;
  }
  
  public List<PreviousReview> getPreviousReviews()
  {
    return mPreviousReviews;
  }
  
  public int getRating()
  {
    return mRating;
  }
  
  public String getText()
  {
    return mText;
  }
  
  public String getTextAttributed()
  {
    return mTextAttributed;
  }
  
  public String getTextExcerpt()
  {
    return mTextExcerpt;
  }
  
  public String getTranslatedText()
  {
    return mTranslatedText;
  }
  
  public long getUpdatableAfter()
  {
    return mUpdatableAfter;
  }
  
  public int getUserCheckInCount()
  {
    return mUserCheckInCount;
  }
  
  public List<String> getUserDisabledFeatures()
  {
    return mUserDisabledFeatures;
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
  
  public String getUserRankTitleText()
  {
    return mUserRankTitleText;
  }
  
  public int getUserReviewCount()
  {
    return mUserReviewCount;
  }
  
  public int getUserVideoCount()
  {
    return mUserVideoCount;
  }
  
  public List<Video> getVideos()
  {
    return mVideos;
  }
  
  public boolean isFirstReview()
  {
    return mIsFirstReview;
  }
  
  public boolean isUserFollowed()
  {
    return mIsUserFollowed;
  }
  
  public boolean isUserFriend()
  {
    return mIsUserFriend;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("business_owner_reply")) {
      mBusinessOwnerReply = ((BusinessOwnerReply)BusinessOwnerReply.CREATOR.parse(paramJSONObject.getJSONObject("business_owner_reply")));
    }
    if (!paramJSONObject.isNull("time_modified")) {
      mDateModified = JsonUtil.parseTimestamp(paramJSONObject, "time_modified");
    }
    if (!paramJSONObject.isNull("photos"))
    {
      mPhotos = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("photos"), Photo.CREATOR);
      if (paramJSONObject.isNull("previous_reviews")) {
        break label557;
      }
      mPreviousReviews = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("previous_reviews"), PreviousReview.CREATOR);
      label97:
      if (paramJSONObject.isNull("user_disabled_features")) {
        break label567;
      }
      mUserDisabledFeatures = JsonUtil.getStringList(paramJSONObject.optJSONArray("user_disabled_features"));
      label119:
      if (paramJSONObject.isNull("videos")) {
        break label577;
      }
    }
    label557:
    label567:
    label577:
    for (mVideos = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("videos"), Video.CREATOR);; mVideos = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("id")) {
        mId = paramJSONObject.optString("id");
      }
      if (!paramJSONObject.isNull("user_encid")) {
        mUserId = paramJSONObject.optString("user_encid");
      }
      if (!paramJSONObject.isNull("business_id")) {
        mBusinessId = paramJSONObject.optString("business_id");
      }
      if (!paramJSONObject.isNull("text")) {
        mText = paramJSONObject.optString("text");
      }
      if (!paramJSONObject.isNull("text_excerpt")) {
        mTextExcerpt = paramJSONObject.optString("text_excerpt");
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
      if (!paramJSONObject.isNull("business_photo_url")) {
        mBusinessPhotoUrl = paramJSONObject.optString("business_photo_url");
      }
      if (!paramJSONObject.isNull("user_location_rank_title")) {
        mUserRankTitleText = paramJSONObject.optString("user_location_rank_title");
      }
      if (!paramJSONObject.isNull("text_attributed")) {
        mTextAttributed = paramJSONObject.optString("text_attributed");
      }
      if (!paramJSONObject.isNull("translated_text")) {
        mTranslatedText = paramJSONObject.optString("translated_text");
      }
      if (!paramJSONObject.isNull("language")) {
        mLanguage = paramJSONObject.optString("language");
      }
      mIsUserFriend = paramJSONObject.optBoolean("user_is_friend");
      mIsUserFollowed = paramJSONObject.optBoolean("user_is_followed");
      mIsFirstReview = paramJSONObject.optBoolean("is_first_review");
      mRating = paramJSONObject.optInt("rating");
      mUserReviewCount = paramJSONObject.optInt("user_review_count");
      mUserFriendCount = paramJSONObject.optInt("user_friend_count");
      mUserCheckInCount = paramJSONObject.optInt("user_check_in_count");
      mUserPhotoCount = paramJSONObject.optInt("user_photo_count");
      mUserVideoCount = paramJSONObject.optInt("user_video_count");
      if (paramJSONObject.isNull("user_elite_years")) {
        break label587;
      }
      JSONArray localJSONArray = paramJSONObject.getJSONArray("user_elite_years");
      int j = localJSONArray.length();
      mUserEliteYears = new int[j];
      int i = 0;
      while (i < j)
      {
        mUserEliteYears[i] = localJSONArray.getInt(i);
        i += 1;
      }
      mPhotos = Collections.emptyList();
      break;
      mPreviousReviews = Collections.emptyList();
      break label97;
      mUserDisabledFeatures = Collections.emptyList();
      break label119;
    }
    label587:
    mUpdatableAfter = paramJSONObject.optLong("updatable_after");
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mBusinessOwnerReply = ((BusinessOwnerReply)paramParcel.readParcelable(BusinessOwnerReply.class.getClassLoader()));
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      mDateModified = new Date(l);
    }
    mPhotos = paramParcel.createTypedArrayList(Photo.CREATOR);
    mPreviousReviews = paramParcel.createTypedArrayList(PreviousReview.CREATOR);
    mUserDisabledFeatures = paramParcel.createStringArrayList();
    mVideos = paramParcel.createTypedArrayList(Video.CREATOR);
    mId = paramParcel.readString();
    mUserId = paramParcel.readString();
    mBusinessId = paramParcel.readString();
    mText = paramParcel.readString();
    mTextExcerpt = paramParcel.readString();
    mUserName = paramParcel.readString();
    mUserPhotoUrl = paramParcel.readString();
    mBusinessName = paramParcel.readString();
    mBusinessPhotoUrl = paramParcel.readString();
    mUserRankTitleText = paramParcel.readString();
    mTextAttributed = paramParcel.readString();
    mTranslatedText = paramParcel.readString();
    mLanguage = paramParcel.readString();
    boolean[] arrayOfBoolean = paramParcel.createBooleanArray();
    mIsUserFriend = arrayOfBoolean[0];
    mIsUserFollowed = arrayOfBoolean[1];
    mIsFirstReview = arrayOfBoolean[2];
    mRating = paramParcel.readInt();
    mUserReviewCount = paramParcel.readInt();
    mUserFriendCount = paramParcel.readInt();
    mUserCheckInCount = paramParcel.readInt();
    mUserPhotoCount = paramParcel.readInt();
    mUserVideoCount = paramParcel.readInt();
    mUserEliteYears = paramParcel.createIntArray();
    mUpdatableAfter = paramParcel.readLong();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mBusinessOwnerReply != null) {
      localJSONObject.put("business_owner_reply", mBusinessOwnerReply.writeJSON());
    }
    if (mDateModified != null) {
      localJSONObject.put("time_modified", mDateModified.getTime() / 1000L);
    }
    JSONArray localJSONArray;
    Object localObject;
    if (mPhotos != null)
    {
      localJSONArray = new JSONArray();
      localObject = mPhotos.iterator();
      while (((Iterator)localObject).hasNext()) {
        localJSONArray.put(((Photo)((Iterator)localObject).next()).writeJSON());
      }
      localJSONObject.put("photos", localJSONArray);
    }
    if (mPreviousReviews != null)
    {
      localJSONArray = new JSONArray();
      localObject = mPreviousReviews.iterator();
      while (((Iterator)localObject).hasNext()) {
        localJSONArray.put(((PreviousReview)((Iterator)localObject).next()).writeJSON());
      }
      localJSONObject.put("previous_reviews", localJSONArray);
    }
    if (mUserDisabledFeatures != null)
    {
      localJSONArray = new JSONArray();
      localObject = mUserDisabledFeatures.iterator();
      while (((Iterator)localObject).hasNext()) {
        localJSONArray.put((String)((Iterator)localObject).next());
      }
      localJSONObject.put("user_disabled_features", localJSONArray);
    }
    if (mVideos != null)
    {
      localJSONArray = new JSONArray();
      localObject = mVideos.iterator();
      while (((Iterator)localObject).hasNext()) {
        localJSONArray.put(((Video)((Iterator)localObject).next()).writeJSON());
      }
      localJSONObject.put("videos", localJSONArray);
    }
    if (mId != null) {
      localJSONObject.put("id", mId);
    }
    if (mUserId != null) {
      localJSONObject.put("user_encid", mUserId);
    }
    if (mBusinessId != null) {
      localJSONObject.put("business_id", mBusinessId);
    }
    if (mText != null) {
      localJSONObject.put("text", mText);
    }
    if (mTextExcerpt != null) {
      localJSONObject.put("text_excerpt", mTextExcerpt);
    }
    if (mUserName != null) {
      localJSONObject.put("user_name", mUserName);
    }
    if (mUserPhotoUrl != null) {
      localJSONObject.put("user_photo_url", mUserPhotoUrl);
    }
    if (mBusinessName != null) {
      localJSONObject.put("business_name", mBusinessName);
    }
    if (mBusinessPhotoUrl != null) {
      localJSONObject.put("business_photo_url", mBusinessPhotoUrl);
    }
    if (mUserRankTitleText != null) {
      localJSONObject.put("user_location_rank_title", mUserRankTitleText);
    }
    if (mTextAttributed != null) {
      localJSONObject.put("text_attributed", mTextAttributed);
    }
    if (mTranslatedText != null) {
      localJSONObject.put("translated_text", mTranslatedText);
    }
    if (mLanguage != null) {
      localJSONObject.put("language", mLanguage);
    }
    localJSONObject.put("user_is_friend", mIsUserFriend);
    localJSONObject.put("user_is_followed", mIsUserFollowed);
    localJSONObject.put("is_first_review", mIsFirstReview);
    localJSONObject.put("rating", mRating);
    localJSONObject.put("user_review_count", mUserReviewCount);
    localJSONObject.put("user_friend_count", mUserFriendCount);
    localJSONObject.put("user_check_in_count", mUserCheckInCount);
    localJSONObject.put("user_photo_count", mUserPhotoCount);
    localJSONObject.put("user_video_count", mUserVideoCount);
    if (mUserEliteYears != null)
    {
      localJSONArray = new JSONArray();
      localObject = mUserEliteYears;
      int j = localObject.length;
      int i = 0;
      while (i < j)
      {
        localJSONArray.put(localObject[i]);
        i += 1;
      }
      localJSONObject.put("user_elite_years", localJSONArray);
    }
    localJSONObject.put("updatable_after", mUpdatableAfter);
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(mBusinessOwnerReply, 0);
    if (mDateModified == null) {}
    for (long l = -2147483648L;; l = mDateModified.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeTypedList(mPhotos);
      paramParcel.writeTypedList(mPreviousReviews);
      paramParcel.writeStringList(mUserDisabledFeatures);
      paramParcel.writeTypedList(mVideos);
      paramParcel.writeString(mId);
      paramParcel.writeString(mUserId);
      paramParcel.writeString(mBusinessId);
      paramParcel.writeString(mText);
      paramParcel.writeString(mTextExcerpt);
      paramParcel.writeString(mUserName);
      paramParcel.writeString(mUserPhotoUrl);
      paramParcel.writeString(mBusinessName);
      paramParcel.writeString(mBusinessPhotoUrl);
      paramParcel.writeString(mUserRankTitleText);
      paramParcel.writeString(mTextAttributed);
      paramParcel.writeString(mTranslatedText);
      paramParcel.writeString(mLanguage);
      paramParcel.writeBooleanArray(new boolean[] { mIsUserFriend, mIsUserFollowed, mIsFirstReview });
      paramParcel.writeInt(mRating);
      paramParcel.writeInt(mUserReviewCount);
      paramParcel.writeInt(mUserFriendCount);
      paramParcel.writeInt(mUserCheckInCount);
      paramParcel.writeInt(mUserPhotoCount);
      paramParcel.writeInt(mUserVideoCount);
      paramParcel.writeIntArray(mUserEliteYears);
      paramParcel.writeLong(mUpdatableAfter);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._YelpBusinessReview
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */