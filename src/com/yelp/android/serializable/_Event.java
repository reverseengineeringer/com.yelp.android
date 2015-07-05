package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

abstract class _Event
  implements Parcelable
{
  protected String mAddress;
  protected String mAlias;
  protected YelpBusiness mBusiness;
  protected String mBusinessId;
  protected String mCategoryName;
  protected double mCost;
  protected double mCostMax;
  protected String mCurrencyCode;
  protected String mDescription;
  protected String mEventPhotoUrl;
  protected String mEventUrl;
  protected String mId;
  protected boolean mIsYelpCommunity;
  protected double mLatitude;
  protected String mLocationName;
  protected double mLocationRating;
  protected double mLongitude;
  protected String mMapAddress;
  protected String mName;
  protected Photo mPhoto;
  protected boolean mReminderNotification;
  protected EventRsvp mRsvp;
  protected String mSubscriptionStatus;
  protected String mTalkTopicId;
  protected int mTalkTopicUserCount;
  protected String mTicketsUrl;
  protected long mTimeEnd;
  protected long mTimeStart;
  protected String mTimezone;
  protected Event.EventType mType;
  protected User mUser;
  protected String mUserId;
  
  protected _Event() {}
  
  protected _Event(EventRsvp paramEventRsvp, Event.EventType paramEventType, Photo paramPhoto, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, String paramString11, String paramString12, String paramString13, String paramString14, String paramString15, String paramString16, String paramString17, User paramUser, YelpBusiness paramYelpBusiness, boolean paramBoolean1, boolean paramBoolean2, double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, double paramDouble5, int paramInt, long paramLong1, long paramLong2)
  {
    this();
    mRsvp = paramEventRsvp;
    mType = paramEventType;
    mPhoto = paramPhoto;
    mId = paramString1;
    mAlias = paramString2;
    mName = paramString3;
    mEventUrl = paramString4;
    mTicketsUrl = paramString5;
    mCategoryName = paramString6;
    mDescription = paramString7;
    mAddress = paramString8;
    mMapAddress = paramString9;
    mLocationName = paramString10;
    mTimezone = paramString11;
    mEventPhotoUrl = paramString12;
    mBusinessId = paramString13;
    mUserId = paramString14;
    mCurrencyCode = paramString15;
    mSubscriptionStatus = paramString16;
    mTalkTopicId = paramString17;
    mUser = paramUser;
    mBusiness = paramYelpBusiness;
    mIsYelpCommunity = paramBoolean1;
    mReminderNotification = paramBoolean2;
    mCost = paramDouble1;
    mCostMax = paramDouble2;
    mLatitude = paramDouble3;
    mLongitude = paramDouble4;
    mLocationRating = paramDouble5;
    mTalkTopicUserCount = paramInt;
    mTimeStart = paramLong1;
    mTimeEnd = paramLong2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAddress()
  {
    return mAddress;
  }
  
  public String getAlias()
  {
    return mAlias;
  }
  
  public YelpBusiness getBusiness()
  {
    return mBusiness;
  }
  
  public String getBusinessId()
  {
    return mBusinessId;
  }
  
  public String getCategoryName()
  {
    return mCategoryName;
  }
  
  public double getCost()
  {
    return mCost;
  }
  
  public double getCostMax()
  {
    return mCostMax;
  }
  
  public String getCurrencyCode()
  {
    return mCurrencyCode;
  }
  
  public String getDescription()
  {
    return mDescription;
  }
  
  public String getEventPhotoUrl()
  {
    return mEventPhotoUrl;
  }
  
  public String getEventUrl()
  {
    return mEventUrl;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public double getLatitude()
  {
    return mLatitude;
  }
  
  public String getLocationName()
  {
    return mLocationName;
  }
  
  public double getLocationRating()
  {
    return mLocationRating;
  }
  
  public double getLongitude()
  {
    return mLongitude;
  }
  
  public String getMapAddress()
  {
    return mMapAddress;
  }
  
  public String getName()
  {
    return mName;
  }
  
  public Photo getPhoto()
  {
    return mPhoto;
  }
  
  public boolean getReminderNotification()
  {
    return mReminderNotification;
  }
  
  public EventRsvp getRsvp()
  {
    return mRsvp;
  }
  
  public String getSubscriptionStatus()
  {
    return mSubscriptionStatus;
  }
  
  public String getTalkTopicId()
  {
    return mTalkTopicId;
  }
  
  public int getTalkTopicUserCount()
  {
    return mTalkTopicUserCount;
  }
  
  public String getTicketsUrl()
  {
    return mTicketsUrl;
  }
  
  public long getTimeEnd()
  {
    return mTimeEnd;
  }
  
  public long getTimeStart()
  {
    return mTimeStart;
  }
  
  public String getTimezone()
  {
    return mTimezone;
  }
  
  public Event.EventType getType()
  {
    return mType;
  }
  
  public User getUser()
  {
    return mUser;
  }
  
  public String getUserId()
  {
    return mUserId;
  }
  
  public boolean isYelpCommunity()
  {
    return mIsYelpCommunity;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("rsvp")) {
      mRsvp = ((EventRsvp)EventRsvp.CREATOR.parse(paramJSONObject.getJSONObject("rsvp")));
    }
    if (!paramJSONObject.isNull("photo")) {
      mPhoto = ((Photo)Photo.CREATOR.parse(paramJSONObject.getJSONObject("photo")));
    }
    if (!paramJSONObject.isNull("id")) {
      mId = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("alias")) {
      mAlias = paramJSONObject.optString("alias");
    }
    if (!paramJSONObject.isNull("name")) {
      mName = paramJSONObject.optString("name");
    }
    if (!paramJSONObject.isNull("event_url")) {
      mEventUrl = paramJSONObject.optString("event_url");
    }
    if (!paramJSONObject.isNull("tickets_url")) {
      mTicketsUrl = paramJSONObject.optString("tickets_url");
    }
    if (!paramJSONObject.isNull("category_name")) {
      mCategoryName = paramJSONObject.optString("category_name");
    }
    if (!paramJSONObject.isNull("description")) {
      mDescription = paramJSONObject.optString("description");
    }
    if (!paramJSONObject.isNull("address")) {
      mAddress = paramJSONObject.optString("address");
    }
    if (!paramJSONObject.isNull("map_address")) {
      mMapAddress = paramJSONObject.optString("map_address");
    }
    if (!paramJSONObject.isNull("location_name")) {
      mLocationName = paramJSONObject.optString("location_name");
    }
    if (!paramJSONObject.isNull("timezone")) {
      mTimezone = paramJSONObject.optString("timezone");
    }
    if (!paramJSONObject.isNull("event_photo_url")) {
      mEventPhotoUrl = paramJSONObject.optString("event_photo_url");
    }
    if (!paramJSONObject.isNull("business_id")) {
      mBusinessId = paramJSONObject.optString("business_id");
    }
    if (!paramJSONObject.isNull("user_id")) {
      mUserId = paramJSONObject.optString("user_id");
    }
    if (!paramJSONObject.isNull("currency_code")) {
      mCurrencyCode = paramJSONObject.optString("currency_code");
    }
    if (!paramJSONObject.isNull("subscription_status")) {
      mSubscriptionStatus = paramJSONObject.optString("subscription_status");
    }
    if (!paramJSONObject.isNull("talk_topic_id")) {
      mTalkTopicId = paramJSONObject.optString("talk_topic_id");
    }
    if (!paramJSONObject.isNull("user")) {
      mUser = ((User)User.CREATOR.parse(paramJSONObject.getJSONObject("user")));
    }
    if (!paramJSONObject.isNull("business")) {
      mBusiness = ((YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business")));
    }
    mIsYelpCommunity = paramJSONObject.optBoolean("is_yelp_community");
    mReminderNotification = paramJSONObject.optBoolean("reminder_notification");
    mCost = paramJSONObject.optDouble("cost");
    mCostMax = paramJSONObject.optDouble("cost_max");
    mLatitude = paramJSONObject.optDouble("latitude");
    mLongitude = paramJSONObject.optDouble("longitude");
    mLocationRating = paramJSONObject.optDouble("location_rating");
    mTalkTopicUserCount = paramJSONObject.optInt("talk_topic_user_count");
    mTimeStart = paramJSONObject.optLong("time_start");
    mTimeEnd = paramJSONObject.optLong("time_end");
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mRsvp = ((EventRsvp)paramParcel.readParcelable(EventRsvp.class.getClassLoader()));
    mType = ((Event.EventType)paramParcel.readSerializable());
    mPhoto = ((Photo)paramParcel.readParcelable(Photo.class.getClassLoader()));
    mId = paramParcel.readString();
    mAlias = paramParcel.readString();
    mName = paramParcel.readString();
    mEventUrl = paramParcel.readString();
    mTicketsUrl = paramParcel.readString();
    mCategoryName = paramParcel.readString();
    mDescription = paramParcel.readString();
    mAddress = paramParcel.readString();
    mMapAddress = paramParcel.readString();
    mLocationName = paramParcel.readString();
    mTimezone = paramParcel.readString();
    mEventPhotoUrl = paramParcel.readString();
    mBusinessId = paramParcel.readString();
    mUserId = paramParcel.readString();
    mCurrencyCode = paramParcel.readString();
    mSubscriptionStatus = paramParcel.readString();
    mTalkTopicId = paramParcel.readString();
    mUser = ((User)paramParcel.readParcelable(User.class.getClassLoader()));
    mBusiness = ((YelpBusiness)paramParcel.readParcelable(YelpBusiness.class.getClassLoader()));
    boolean[] arrayOfBoolean = paramParcel.createBooleanArray();
    mIsYelpCommunity = arrayOfBoolean[0];
    mReminderNotification = arrayOfBoolean[1];
    mCost = paramParcel.readDouble();
    mCostMax = paramParcel.readDouble();
    mLatitude = paramParcel.readDouble();
    mLongitude = paramParcel.readDouble();
    mLocationRating = paramParcel.readDouble();
    mTalkTopicUserCount = paramParcel.readInt();
    mTimeStart = paramParcel.readLong();
    mTimeEnd = paramParcel.readLong();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(mRsvp, 0);
    paramParcel.writeSerializable(mType);
    paramParcel.writeParcelable(mPhoto, 0);
    paramParcel.writeString(mId);
    paramParcel.writeString(mAlias);
    paramParcel.writeString(mName);
    paramParcel.writeString(mEventUrl);
    paramParcel.writeString(mTicketsUrl);
    paramParcel.writeString(mCategoryName);
    paramParcel.writeString(mDescription);
    paramParcel.writeString(mAddress);
    paramParcel.writeString(mMapAddress);
    paramParcel.writeString(mLocationName);
    paramParcel.writeString(mTimezone);
    paramParcel.writeString(mEventPhotoUrl);
    paramParcel.writeString(mBusinessId);
    paramParcel.writeString(mUserId);
    paramParcel.writeString(mCurrencyCode);
    paramParcel.writeString(mSubscriptionStatus);
    paramParcel.writeString(mTalkTopicId);
    paramParcel.writeParcelable(mUser, 0);
    paramParcel.writeParcelable(mBusiness, 0);
    paramParcel.writeBooleanArray(new boolean[] { mIsYelpCommunity, mReminderNotification });
    paramParcel.writeDouble(mCost);
    paramParcel.writeDouble(mCostMax);
    paramParcel.writeDouble(mLatitude);
    paramParcel.writeDouble(mLongitude);
    paramParcel.writeDouble(mLocationRating);
    paramParcel.writeInt(mTalkTopicUserCount);
    paramParcel.writeLong(mTimeStart);
    paramParcel.writeLong(mTimeEnd);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Event
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */