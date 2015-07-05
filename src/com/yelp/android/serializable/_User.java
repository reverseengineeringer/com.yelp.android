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

abstract class _User
  implements Parcelable
{
  protected int mBadgeCount;
  protected int mBookmarkCount;
  protected YelpCheckIn mCheckIn;
  protected int mCheckInCount;
  protected int mCheckInOfferCount;
  protected int mComplimentCount;
  protected int mDealCount;
  protected List<String> mDisabledFeatures;
  protected int mDraftCount;
  protected int[] mEliteYears;
  protected String mFirstName;
  protected int mFirstToReviewCount;
  protected int mFirstToTipCount;
  protected int mFormat;
  protected int mFriendCount;
  protected String mGenderString;
  protected String mHeadline;
  protected String mId;
  protected boolean mIsFriend;
  protected boolean mIsFriendRequestPending;
  protected boolean mIsSendingNotifications;
  protected String mLastInitial;
  protected String mLastName;
  protected int mLocalPhotoCount;
  protected String mLocation;
  protected List<String> mLoves;
  protected Date mMemberSince;
  protected String mNickname;
  protected List<Photo> mPhotos;
  protected int mReviewCount;
  protected int mSubscribedEventsCount;
  protected int mTipCount;
  protected int mTipOfTheDayCount;
  protected int mUnreadMessageCount;
  protected int mUserPhotoCount;
  protected int mVideoCount;
  
  protected _User() {}
  
  protected _User(Date paramDate, List<Photo> paramList, List<String> paramList1, List<String> paramList2, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, YelpCheckIn paramYelpCheckIn, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9, int paramInt10, int paramInt11, int paramInt12, int paramInt13, int paramInt14, int paramInt15, int paramInt16, int paramInt17, int paramInt18, int paramInt19, int[] paramArrayOfInt)
  {
    this();
    mMemberSince = paramDate;
    mPhotos = paramList;
    mDisabledFeatures = paramList1;
    mLoves = paramList2;
    mId = paramString1;
    mFirstName = paramString2;
    mNickname = paramString3;
    mLastInitial = paramString4;
    mLastName = paramString5;
    mLocation = paramString6;
    mHeadline = paramString7;
    mGenderString = paramString8;
    mCheckIn = paramYelpCheckIn;
    mIsFriend = paramBoolean1;
    mIsFriendRequestPending = paramBoolean2;
    mIsSendingNotifications = paramBoolean3;
    mFormat = paramInt1;
    mFriendCount = paramInt2;
    mCheckInOfferCount = paramInt3;
    mReviewCount = paramInt4;
    mBookmarkCount = paramInt5;
    mCheckInCount = paramInt6;
    mTipCount = paramInt7;
    mBadgeCount = paramInt8;
    mLocalPhotoCount = paramInt9;
    mComplimentCount = paramInt10;
    mDraftCount = paramInt11;
    mUserPhotoCount = paramInt12;
    mDealCount = paramInt13;
    mFirstToReviewCount = paramInt14;
    mFirstToTipCount = paramInt15;
    mTipOfTheDayCount = paramInt16;
    mUnreadMessageCount = paramInt17;
    mVideoCount = paramInt18;
    mSubscribedEventsCount = paramInt19;
    mEliteYears = paramArrayOfInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getBadgeCount()
  {
    return mBadgeCount;
  }
  
  public int getBookmarkCount()
  {
    return mBookmarkCount;
  }
  
  public YelpCheckIn getCheckIn()
  {
    return mCheckIn;
  }
  
  public int getCheckInCount()
  {
    return mCheckInCount;
  }
  
  public int getCheckInOfferCount()
  {
    return mCheckInOfferCount;
  }
  
  public int getComplimentCount()
  {
    return mComplimentCount;
  }
  
  public int getDealCount()
  {
    return mDealCount;
  }
  
  public List<String> getDisabledFeatures()
  {
    return mDisabledFeatures;
  }
  
  public int getDraftCount()
  {
    return mDraftCount;
  }
  
  public int[] getEliteYears()
  {
    return mEliteYears;
  }
  
  public String getFirstName()
  {
    return mFirstName;
  }
  
  public int getFirstToReviewCount()
  {
    return mFirstToReviewCount;
  }
  
  public int getFirstToTipCount()
  {
    return mFirstToTipCount;
  }
  
  public int getFormat()
  {
    return mFormat;
  }
  
  public int getFriendCount()
  {
    return mFriendCount;
  }
  
  public String getGenderString()
  {
    return mGenderString;
  }
  
  public String getHeadline()
  {
    return mHeadline;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public String getLastInitial()
  {
    return mLastInitial;
  }
  
  public String getLastName()
  {
    return mLastName;
  }
  
  public int getLocalPhotoCount()
  {
    return mLocalPhotoCount;
  }
  
  public String getLocation()
  {
    return mLocation;
  }
  
  public List<String> getLoves()
  {
    return mLoves;
  }
  
  public Date getMemberSince()
  {
    return mMemberSince;
  }
  
  public String getNickname()
  {
    return mNickname;
  }
  
  public List<Photo> getPhotos()
  {
    return mPhotos;
  }
  
  public int getReviewCount()
  {
    return mReviewCount;
  }
  
  public int getSubscribedEventsCount()
  {
    return mSubscribedEventsCount;
  }
  
  public int getTipCount()
  {
    return mTipCount;
  }
  
  public int getTipOfTheDayCount()
  {
    return mTipOfTheDayCount;
  }
  
  public int getUnreadMessageCount()
  {
    return mUnreadMessageCount;
  }
  
  public int getUserPhotoCount()
  {
    return mUserPhotoCount;
  }
  
  public int getVideoCount()
  {
    return mVideoCount;
  }
  
  public boolean isFriend()
  {
    return mIsFriend;
  }
  
  public boolean isFriendRequestPending()
  {
    return mIsFriendRequestPending;
  }
  
  public boolean isSendingNotifications()
  {
    return mIsSendingNotifications;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("member_since")) {
      mMemberSince = JsonUtil.parseTimestamp(paramJSONObject, "member_since");
    }
    if (!paramJSONObject.isNull("photos"))
    {
      mPhotos = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("photos"), Photo.CREATOR);
      if (paramJSONObject.isNull("disabled_features")) {
        break label764;
      }
      mDisabledFeatures = JsonUtil.getStringList(paramJSONObject.optJSONArray("disabled_features"));
      label66:
      if (paramJSONObject.isNull("loves")) {
        break label774;
      }
      mLoves = JsonUtil.getStringList(paramJSONObject.optJSONArray("loves"));
      label88:
      if (!paramJSONObject.isNull("id")) {
        mId = paramJSONObject.optString("id");
      }
      if (!paramJSONObject.isNull("first_name")) {
        mFirstName = paramJSONObject.optString("first_name");
      }
      if (!paramJSONObject.isNull("nickname")) {
        mNickname = paramJSONObject.optString("nickname");
      }
      if (!paramJSONObject.isNull("last_initial")) {
        mLastInitial = paramJSONObject.optString("last_initial");
      }
      if (!paramJSONObject.isNull("last_name")) {
        mLastName = paramJSONObject.optString("last_name");
      }
      if (!paramJSONObject.isNull("location")) {
        mLocation = paramJSONObject.optString("location");
      }
      if (!paramJSONObject.isNull("tagline")) {
        mHeadline = paramJSONObject.optString("tagline");
      }
      if (!paramJSONObject.isNull("gender")) {
        mGenderString = paramJSONObject.optString("gender");
      }
      if (!paramJSONObject.isNull("check_in")) {
        mCheckIn = ((YelpCheckIn)YelpCheckIn.CREATOR.parse(paramJSONObject.getJSONObject("check_in")));
      }
      mIsFriend = paramJSONObject.optBoolean("is_friend");
      mIsFriendRequestPending = paramJSONObject.optBoolean("is_friend_request_pending");
      mIsSendingNotifications = paramJSONObject.optBoolean("alerts");
      if (paramJSONObject.isNull("fmode")) {
        break label784;
      }
      mFormat = paramJSONObject.optInt("fmode");
      label321:
      if (!paramJSONObject.isNull("friend_count")) {
        mFriendCount = paramJSONObject.optInt("friend_count");
      }
      if (!paramJSONObject.isNull("check_in_offer_count")) {
        mCheckInOfferCount = paramJSONObject.optInt("check_in_offer_count");
      }
      if (!paramJSONObject.isNull("review_count")) {
        mReviewCount = paramJSONObject.optInt("review_count");
      }
      if (!paramJSONObject.isNull("bookmark_count")) {
        mBookmarkCount = paramJSONObject.optInt("bookmark_count");
      }
      if (!paramJSONObject.isNull("check_in_count")) {
        mCheckInCount = paramJSONObject.optInt("check_in_count");
      }
      if (!paramJSONObject.isNull("quicktip_count")) {
        mTipCount = paramJSONObject.optInt("quicktip_count");
      }
      if (!paramJSONObject.isNull("badge_count")) {
        mBadgeCount = paramJSONObject.optInt("badge_count");
      }
      if (!paramJSONObject.isNull("business_photo_count")) {
        mLocalPhotoCount = paramJSONObject.optInt("business_photo_count");
      }
      if (!paramJSONObject.isNull("thanx_count")) {
        mComplimentCount = paramJSONObject.optInt("thanx_count");
      }
      if (!paramJSONObject.isNull("review_draft_count")) {
        mDraftCount = paramJSONObject.optInt("review_draft_count");
      }
      if (!paramJSONObject.isNull("user_photo_count")) {
        mUserPhotoCount = paramJSONObject.optInt("user_photo_count");
      }
      if (!paramJSONObject.isNull("deal_count")) {
        mDealCount = paramJSONObject.optInt("deal_count");
      }
      if (!paramJSONObject.isNull("first_to_review_count")) {
        mFirstToReviewCount = paramJSONObject.optInt("first_to_review_count");
      }
      if (!paramJSONObject.isNull("first_to_tip_count")) {
        mFirstToTipCount = paramJSONObject.optInt("first_to_tip_count");
      }
      if (!paramJSONObject.isNull("tip_of_the_day_count")) {
        mTipOfTheDayCount = paramJSONObject.optInt("tip_of_the_day_count");
      }
      if (paramJSONObject.isNull("unread_message_count")) {
        break label792;
      }
    }
    label764:
    label774:
    label784:
    label792:
    for (mUnreadMessageCount = paramJSONObject.optInt("unread_message_count");; mUnreadMessageCount = 0)
    {
      if (!paramJSONObject.isNull("video_count")) {
        mVideoCount = paramJSONObject.optInt("video_count");
      }
      if (!paramJSONObject.isNull("subscribed_events_count")) {
        mSubscribedEventsCount = paramJSONObject.optInt("subscribed_events_count");
      }
      if (paramJSONObject.isNull("elite_years")) {
        return;
      }
      paramJSONObject = paramJSONObject.getJSONArray("elite_years");
      int j = paramJSONObject.length();
      mEliteYears = new int[j];
      int i = 0;
      while (i < j)
      {
        mEliteYears[i] = paramJSONObject.getInt(i);
        i += 1;
      }
      mPhotos = Collections.emptyList();
      break;
      mDisabledFeatures = Collections.emptyList();
      break label66;
      mLoves = Collections.emptyList();
      break label88;
      mFormat = -1;
      break label321;
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      mMemberSince = new Date(l);
    }
    mPhotos = paramParcel.createTypedArrayList(Photo.CREATOR);
    mDisabledFeatures = paramParcel.createStringArrayList();
    mLoves = paramParcel.createStringArrayList();
    mId = paramParcel.readString();
    mFirstName = paramParcel.readString();
    mNickname = paramParcel.readString();
    mLastInitial = paramParcel.readString();
    mLastName = paramParcel.readString();
    mLocation = paramParcel.readString();
    mHeadline = paramParcel.readString();
    mGenderString = paramParcel.readString();
    mCheckIn = ((YelpCheckIn)paramParcel.readParcelable(YelpCheckIn.class.getClassLoader()));
    boolean[] arrayOfBoolean = paramParcel.createBooleanArray();
    mIsFriend = arrayOfBoolean[0];
    mIsFriendRequestPending = arrayOfBoolean[1];
    mIsSendingNotifications = arrayOfBoolean[2];
    mFormat = paramParcel.readInt();
    mFriendCount = paramParcel.readInt();
    mCheckInOfferCount = paramParcel.readInt();
    mReviewCount = paramParcel.readInt();
    mBookmarkCount = paramParcel.readInt();
    mCheckInCount = paramParcel.readInt();
    mTipCount = paramParcel.readInt();
    mBadgeCount = paramParcel.readInt();
    mLocalPhotoCount = paramParcel.readInt();
    mComplimentCount = paramParcel.readInt();
    mDraftCount = paramParcel.readInt();
    mUserPhotoCount = paramParcel.readInt();
    mDealCount = paramParcel.readInt();
    mFirstToReviewCount = paramParcel.readInt();
    mFirstToTipCount = paramParcel.readInt();
    mTipOfTheDayCount = paramParcel.readInt();
    mUnreadMessageCount = paramParcel.readInt();
    mVideoCount = paramParcel.readInt();
    mSubscribedEventsCount = paramParcel.readInt();
    mEliteYears = paramParcel.createIntArray();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mMemberSince != null) {
      localJSONObject.put("member_since", mMemberSince.getTime() / 1000L);
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
    if (mDisabledFeatures != null)
    {
      localJSONArray = new JSONArray();
      localObject = mDisabledFeatures.iterator();
      while (((Iterator)localObject).hasNext()) {
        localJSONArray.put((String)((Iterator)localObject).next());
      }
      localJSONObject.put("disabled_features", localJSONArray);
    }
    if (mLoves != null)
    {
      localJSONArray = new JSONArray();
      localObject = mLoves.iterator();
      while (((Iterator)localObject).hasNext()) {
        localJSONArray.put((String)((Iterator)localObject).next());
      }
      localJSONObject.put("loves", localJSONArray);
    }
    if (mId != null) {
      localJSONObject.put("id", mId);
    }
    if (mFirstName != null) {
      localJSONObject.put("first_name", mFirstName);
    }
    if (mNickname != null) {
      localJSONObject.put("nickname", mNickname);
    }
    if (mLastInitial != null) {
      localJSONObject.put("last_initial", mLastInitial);
    }
    if (mLastName != null) {
      localJSONObject.put("last_name", mLastName);
    }
    if (mLocation != null) {
      localJSONObject.put("location", mLocation);
    }
    if (mHeadline != null) {
      localJSONObject.put("tagline", mHeadline);
    }
    if (mGenderString != null) {
      localJSONObject.put("gender", mGenderString);
    }
    if (mCheckIn != null) {
      localJSONObject.put("check_in", mCheckIn.writeJSON());
    }
    localJSONObject.put("is_friend", mIsFriend);
    localJSONObject.put("is_friend_request_pending", mIsFriendRequestPending);
    localJSONObject.put("alerts", mIsSendingNotifications);
    localJSONObject.put("fmode", mFormat);
    localJSONObject.put("friend_count", mFriendCount);
    localJSONObject.put("check_in_offer_count", mCheckInOfferCount);
    localJSONObject.put("review_count", mReviewCount);
    localJSONObject.put("bookmark_count", mBookmarkCount);
    localJSONObject.put("check_in_count", mCheckInCount);
    localJSONObject.put("quicktip_count", mTipCount);
    localJSONObject.put("badge_count", mBadgeCount);
    localJSONObject.put("business_photo_count", mLocalPhotoCount);
    localJSONObject.put("thanx_count", mComplimentCount);
    localJSONObject.put("review_draft_count", mDraftCount);
    localJSONObject.put("user_photo_count", mUserPhotoCount);
    localJSONObject.put("deal_count", mDealCount);
    localJSONObject.put("first_to_review_count", mFirstToReviewCount);
    localJSONObject.put("first_to_tip_count", mFirstToTipCount);
    localJSONObject.put("tip_of_the_day_count", mTipOfTheDayCount);
    localJSONObject.put("unread_message_count", mUnreadMessageCount);
    localJSONObject.put("video_count", mVideoCount);
    localJSONObject.put("subscribed_events_count", mSubscribedEventsCount);
    if (mEliteYears != null)
    {
      localJSONArray = new JSONArray();
      localObject = mEliteYears;
      int j = localObject.length;
      int i = 0;
      while (i < j)
      {
        localJSONArray.put(localObject[i]);
        i += 1;
      }
      localJSONObject.put("elite_years", localJSONArray);
    }
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (mMemberSince == null) {}
    for (long l = -2147483648L;; l = mMemberSince.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeTypedList(mPhotos);
      paramParcel.writeStringList(mDisabledFeatures);
      paramParcel.writeStringList(mLoves);
      paramParcel.writeString(mId);
      paramParcel.writeString(mFirstName);
      paramParcel.writeString(mNickname);
      paramParcel.writeString(mLastInitial);
      paramParcel.writeString(mLastName);
      paramParcel.writeString(mLocation);
      paramParcel.writeString(mHeadline);
      paramParcel.writeString(mGenderString);
      paramParcel.writeParcelable(mCheckIn, 0);
      paramParcel.writeBooleanArray(new boolean[] { mIsFriend, mIsFriendRequestPending, mIsSendingNotifications });
      paramParcel.writeInt(mFormat);
      paramParcel.writeInt(mFriendCount);
      paramParcel.writeInt(mCheckInOfferCount);
      paramParcel.writeInt(mReviewCount);
      paramParcel.writeInt(mBookmarkCount);
      paramParcel.writeInt(mCheckInCount);
      paramParcel.writeInt(mTipCount);
      paramParcel.writeInt(mBadgeCount);
      paramParcel.writeInt(mLocalPhotoCount);
      paramParcel.writeInt(mComplimentCount);
      paramParcel.writeInt(mDraftCount);
      paramParcel.writeInt(mUserPhotoCount);
      paramParcel.writeInt(mDealCount);
      paramParcel.writeInt(mFirstToReviewCount);
      paramParcel.writeInt(mFirstToTipCount);
      paramParcel.writeInt(mTipOfTheDayCount);
      paramParcel.writeInt(mUnreadMessageCount);
      paramParcel.writeInt(mVideoCount);
      paramParcel.writeInt(mSubscribedEventsCount);
      paramParcel.writeIntArray(mEliteYears);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._User
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */