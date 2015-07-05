package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.FormatMode;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

abstract class _YelpBusiness
  implements Parcelable
{
  protected String mAddress1;
  protected String mAddress2;
  protected String mAddress3;
  protected String mAlias;
  protected AlternateBusinessNames mAlternateNames;
  protected List<Attribution> mAttributions;
  protected float mAvgRating;
  protected Video mBizOwnerVideo;
  protected CallToAction mCallToAction;
  protected List<Category> mCategories;
  protected Offer mCheckInOffer;
  protected int mCheckedInFriendCount;
  protected List<User> mCheckedInFriends;
  protected String mCity;
  protected String mCountry;
  protected String mCrossStreets;
  protected Date mDateReopening;
  protected YelpDeal mDeal;
  protected String mDialablePhone;
  protected YelpAddresses mDisplayAddresses;
  protected String mDisplayUrl;
  protected BusinessSearchRequest.FormatMode mFormatMode;
  protected int mFriendBookmarkedCount;
  protected FromThisBusiness mFromThisBusiness;
  protected float mGeoAccuracy;
  protected List<YelpHoursPair> mHours;
  protected String mId;
  protected boolean mIsAdRatingDisabled;
  protected boolean mIsBookmarked;
  protected boolean mIsClosed;
  protected boolean mIsMessageToBusinessEnabled;
  protected boolean mIsMovedToNewAddress;
  protected double mLatitude;
  protected String mLocality;
  protected String mLocalizedAddress;
  protected List<AttributedLabelValuePair> mLocalizedAttributes;
  protected List<String> mLocalizedHours;
  protected String mLocalizedPhone;
  protected String mLocalizedPrice;
  protected double mLongitude;
  protected Menu mMenu;
  protected String mMenuDisplayUrl;
  protected String mMenuUrl;
  protected String mMovedToBusinessId;
  protected ArrayList<Movie> mMovies;
  protected String mName;
  protected List<String> mNeighborhoods;
  protected int mPhotoCount;
  protected String mPhotoUrl;
  protected List<Photo> mPhotos;
  protected PlatformAction mPlatformAction;
  protected int mPrice;
  protected Photo mPrimaryPhoto;
  protected RecentFriendCheckIns mRecentCheckInFriends;
  protected int mRegularCount;
  protected List<String> mRegularNames;
  protected Reservation mReservation;
  protected String mReservationProviderString;
  protected YelpBusinessReview mReview;
  protected int mReviewCount;
  protected List<YelpBusinessReviewInsight> mReviewInsights;
  protected SpamAlert mSpamAlert;
  protected List<SpecialHours> mSpecialHours;
  protected String mState;
  protected String mTheaterUrl;
  protected int mTipCount;
  protected User mTopUser;
  protected String mTransitDescription;
  protected String mUrl;
  protected int mUserCheckinsCount;
  protected int mUserCount;
  protected List<YelpDeal> mUserDeals;
  protected int mUserReviewRating;
  protected String mUserReviewStatus;
  protected int mVideoCount;
  protected String mYelpUrl;
  protected String mZip;
  
  protected _YelpBusiness() {}
  
  protected _YelpBusiness(AlternateBusinessNames paramAlternateBusinessNames, ArrayList<Movie> paramArrayList, CallToAction paramCallToAction, Date paramDate, BusinessSearchRequest.FormatMode paramFormatMode, FromThisBusiness paramFromThisBusiness, List<AttributedLabelValuePair> paramList, List<Attribution> paramList1, List<Category> paramList2, List<Photo> paramList3, List<SpecialHours> paramList4, List<String> paramList5, List<String> paramList6, List<String> paramList7, List<User> paramList8, List<YelpBusinessReviewInsight> paramList9, List<YelpDeal> paramList10, List<YelpHoursPair> paramList11, Menu paramMenu, Offer paramOffer, Photo paramPhoto, PlatformAction paramPlatformAction, RecentFriendCheckIns paramRecentFriendCheckIns, Reservation paramReservation, SpamAlert paramSpamAlert, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, String paramString11, String paramString12, String paramString13, String paramString14, String paramString15, String paramString16, String paramString17, String paramString18, String paramString19, String paramString20, String paramString21, String paramString22, String paramString23, String paramString24, String paramString25, String paramString26, String paramString27, User paramUser, Video paramVideo, YelpAddresses paramYelpAddresses, YelpBusinessReview paramYelpBusinessReview, YelpDeal paramYelpDeal, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, double paramDouble1, double paramDouble2, float paramFloat1, float paramFloat2, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9, int paramInt10, int paramInt11)
  {
    this();
    mAlternateNames = paramAlternateBusinessNames;
    mMovies = paramArrayList;
    mCallToAction = paramCallToAction;
    mDateReopening = paramDate;
    mFormatMode = paramFormatMode;
    mFromThisBusiness = paramFromThisBusiness;
    mLocalizedAttributes = paramList;
    mAttributions = paramList1;
    mCategories = paramList2;
    mPhotos = paramList3;
    mSpecialHours = paramList4;
    mNeighborhoods = paramList5;
    mRegularNames = paramList6;
    mLocalizedHours = paramList7;
    mCheckedInFriends = paramList8;
    mReviewInsights = paramList9;
    mUserDeals = paramList10;
    mHours = paramList11;
    mMenu = paramMenu;
    mCheckInOffer = paramOffer;
    mPrimaryPhoto = paramPhoto;
    mPlatformAction = paramPlatformAction;
    mRecentCheckInFriends = paramRecentFriendCheckIns;
    mReservation = paramReservation;
    mSpamAlert = paramSpamAlert;
    mId = paramString1;
    mAddress1 = paramString2;
    mAddress2 = paramString3;
    mAddress3 = paramString4;
    mState = paramString5;
    mCity = paramString6;
    mZip = paramString7;
    mCountry = paramString8;
    mLocality = paramString9;
    mPhotoUrl = paramString10;
    mCrossStreets = paramString11;
    mLocalizedAddress = paramString12;
    mLocalizedPhone = paramString13;
    mLocalizedPrice = paramString14;
    mName = paramString15;
    mAlias = paramString16;
    mDialablePhone = paramString17;
    mTransitDescription = paramString18;
    mUrl = paramString19;
    mDisplayUrl = paramString20;
    mMenuUrl = paramString21;
    mMenuDisplayUrl = paramString22;
    mMovedToBusinessId = paramString23;
    mUserReviewStatus = paramString24;
    mReservationProviderString = paramString25;
    mTheaterUrl = paramString26;
    mYelpUrl = paramString27;
    mTopUser = paramUser;
    mBizOwnerVideo = paramVideo;
    mDisplayAddresses = paramYelpAddresses;
    mReview = paramYelpBusinessReview;
    mDeal = paramYelpDeal;
    mIsClosed = paramBoolean1;
    mIsMovedToNewAddress = paramBoolean2;
    mIsBookmarked = paramBoolean3;
    mIsAdRatingDisabled = paramBoolean4;
    mIsMessageToBusinessEnabled = paramBoolean5;
    mLatitude = paramDouble1;
    mLongitude = paramDouble2;
    mAvgRating = paramFloat1;
    mGeoAccuracy = paramFloat2;
    mReviewCount = paramInt1;
    mPrice = paramInt2;
    mTipCount = paramInt3;
    mRegularCount = paramInt4;
    mFriendBookmarkedCount = paramInt5;
    mUserCount = paramInt6;
    mCheckedInFriendCount = paramInt7;
    mPhotoCount = paramInt8;
    mUserReviewRating = paramInt9;
    mUserCheckinsCount = paramInt10;
    mVideoCount = paramInt11;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getAddress1()
  {
    return mAddress1;
  }
  
  public String getAddress2()
  {
    return mAddress2;
  }
  
  public String getAddress3()
  {
    return mAddress3;
  }
  
  public String getAlias()
  {
    return mAlias;
  }
  
  public AlternateBusinessNames getAlternateNames()
  {
    return mAlternateNames;
  }
  
  public List<Attribution> getAttributions()
  {
    return mAttributions;
  }
  
  public float getAvgRating()
  {
    return mAvgRating;
  }
  
  public Video getBizOwnerVideo()
  {
    return mBizOwnerVideo;
  }
  
  public CallToAction getCallToAction()
  {
    return mCallToAction;
  }
  
  public List<Category> getCategories()
  {
    return mCategories;
  }
  
  public Offer getCheckInOffer()
  {
    return mCheckInOffer;
  }
  
  public int getCheckedInFriendCount()
  {
    return mCheckedInFriendCount;
  }
  
  public List<User> getCheckedInFriends()
  {
    return mCheckedInFriends;
  }
  
  public String getCity()
  {
    return mCity;
  }
  
  public String getCountry()
  {
    return mCountry;
  }
  
  public String getCrossStreets()
  {
    return mCrossStreets;
  }
  
  public Date getDateReopening()
  {
    return mDateReopening;
  }
  
  public YelpDeal getDeal()
  {
    return mDeal;
  }
  
  public String getDialablePhone()
  {
    return mDialablePhone;
  }
  
  public YelpAddresses getDisplayAddresses()
  {
    return mDisplayAddresses;
  }
  
  public String getDisplayUrl()
  {
    return mDisplayUrl;
  }
  
  public BusinessSearchRequest.FormatMode getFormatMode()
  {
    return mFormatMode;
  }
  
  public int getFriendBookmarkedCount()
  {
    return mFriendBookmarkedCount;
  }
  
  public FromThisBusiness getFromThisBusiness()
  {
    return mFromThisBusiness;
  }
  
  public float getGeoAccuracy()
  {
    return mGeoAccuracy;
  }
  
  public List<YelpHoursPair> getHours()
  {
    return mHours;
  }
  
  public String getId()
  {
    return mId;
  }
  
  public double getLatitude()
  {
    return mLatitude;
  }
  
  public String getLocality()
  {
    return mLocality;
  }
  
  public String getLocalizedAddress()
  {
    return mLocalizedAddress;
  }
  
  public List<AttributedLabelValuePair> getLocalizedAttributes()
  {
    return mLocalizedAttributes;
  }
  
  public List<String> getLocalizedHours()
  {
    return mLocalizedHours;
  }
  
  public String getLocalizedPhone()
  {
    return mLocalizedPhone;
  }
  
  public String getLocalizedPrice()
  {
    return mLocalizedPrice;
  }
  
  public double getLongitude()
  {
    return mLongitude;
  }
  
  public Menu getMenu()
  {
    return mMenu;
  }
  
  public String getMenuDisplayUrl()
  {
    return mMenuDisplayUrl;
  }
  
  public String getMenuUrl()
  {
    return mMenuUrl;
  }
  
  public String getMovedToBusinessId()
  {
    return mMovedToBusinessId;
  }
  
  public ArrayList<Movie> getMovies()
  {
    return mMovies;
  }
  
  public String getName()
  {
    return mName;
  }
  
  public List<String> getNeighborhoods()
  {
    return mNeighborhoods;
  }
  
  public int getPhotoCount()
  {
    return mPhotoCount;
  }
  
  public String getPhotoUrl()
  {
    return mPhotoUrl;
  }
  
  public List<Photo> getPhotos()
  {
    return mPhotos;
  }
  
  public PlatformAction getPlatformAction()
  {
    return mPlatformAction;
  }
  
  public int getPrice()
  {
    return mPrice;
  }
  
  public Photo getPrimaryPhoto()
  {
    return mPrimaryPhoto;
  }
  
  public RecentFriendCheckIns getRecentCheckInFriends()
  {
    return mRecentCheckInFriends;
  }
  
  public int getRegularCount()
  {
    return mRegularCount;
  }
  
  public List<String> getRegularNames()
  {
    return mRegularNames;
  }
  
  public Reservation getReservation()
  {
    return mReservation;
  }
  
  public String getReservationProviderString()
  {
    return mReservationProviderString;
  }
  
  public YelpBusinessReview getReview()
  {
    return mReview;
  }
  
  public int getReviewCount()
  {
    return mReviewCount;
  }
  
  public List<YelpBusinessReviewInsight> getReviewInsights()
  {
    return mReviewInsights;
  }
  
  public SpamAlert getSpamAlert()
  {
    return mSpamAlert;
  }
  
  public List<SpecialHours> getSpecialHours()
  {
    return mSpecialHours;
  }
  
  public String getState()
  {
    return mState;
  }
  
  public String getTheaterUrl()
  {
    return mTheaterUrl;
  }
  
  public int getTipCount()
  {
    return mTipCount;
  }
  
  public User getTopUser()
  {
    return mTopUser;
  }
  
  public String getTransitDescription()
  {
    return mTransitDescription;
  }
  
  public String getUrl()
  {
    return mUrl;
  }
  
  public int getUserCheckinsCount()
  {
    return mUserCheckinsCount;
  }
  
  public int getUserCount()
  {
    return mUserCount;
  }
  
  public List<YelpDeal> getUserDeals()
  {
    return mUserDeals;
  }
  
  public int getUserReviewRating()
  {
    return mUserReviewRating;
  }
  
  public String getUserReviewStatus()
  {
    return mUserReviewStatus;
  }
  
  public int getVideoCount()
  {
    return mVideoCount;
  }
  
  public String getYelpUrl()
  {
    return mYelpUrl;
  }
  
  public String getZip()
  {
    return mZip;
  }
  
  public boolean isAdRatingDisabled()
  {
    return mIsAdRatingDisabled;
  }
  
  public boolean isBookmarked()
  {
    return mIsBookmarked;
  }
  
  public boolean isClosed()
  {
    return mIsClosed;
  }
  
  public boolean isMessageToBusinessEnabled()
  {
    return mIsMessageToBusinessEnabled;
  }
  
  public boolean isMovedToNewAddress()
  {
    return mIsMovedToNewAddress;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("alternate_names")) {
      mAlternateNames = ((AlternateBusinessNames)AlternateBusinessNames.CREATOR.parse(paramJSONObject.getJSONObject("alternate_names")));
    }
    if (!paramJSONObject.isNull("movies"))
    {
      mMovies = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("movies"), Movie.CREATOR);
      if (!paramJSONObject.isNull("call_to_action")) {
        mCallToAction = ((CallToAction)CallToAction.CREATOR.parse(paramJSONObject.getJSONObject("call_to_action")));
      }
      if (!paramJSONObject.isNull("time_reopening")) {
        mDateReopening = JsonUtil.parseTimestamp(paramJSONObject, "time_reopening");
      }
      if (!paramJSONObject.isNull("from_this_business")) {
        mFromThisBusiness = ((FromThisBusiness)FromThisBusiness.CREATOR.parse(paramJSONObject.getJSONObject("from_this_business")));
      }
      if (paramJSONObject.isNull("localized_attributes")) {
        break label1558;
      }
      mLocalizedAttributes = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("localized_attributes"), AttributedLabelValuePair.CREATOR);
      label165:
      if (paramJSONObject.isNull("attributions")) {
        break label1568;
      }
      mAttributions = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("attributions"), Attribution.CREATOR);
      label192:
      if (paramJSONObject.isNull("categories")) {
        break label1578;
      }
      mCategories = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("categories"), Category.CREATOR);
      label219:
      if (paramJSONObject.isNull("photos")) {
        break label1588;
      }
      mPhotos = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("photos"), Photo.CREATOR);
      label246:
      if (paramJSONObject.isNull("special_hours")) {
        break label1598;
      }
      mSpecialHours = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("special_hours"), SpecialHours.CREATOR);
      label273:
      if (paramJSONObject.isNull("neighborhoods")) {
        break label1608;
      }
      mNeighborhoods = JsonUtil.getStringList(paramJSONObject.optJSONArray("neighborhoods"));
      label297:
      if (paramJSONObject.isNull("regular_names")) {
        break label1618;
      }
      mRegularNames = JsonUtil.getStringList(paramJSONObject.optJSONArray("regular_names"));
      label321:
      if (paramJSONObject.isNull("localized_hours")) {
        break label1628;
      }
      mLocalizedHours = JsonUtil.getStringList(paramJSONObject.optJSONArray("localized_hours"));
      label345:
      if (paramJSONObject.isNull("demographics")) {
        break label1638;
      }
      mReviewInsights = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("demographics"), YelpBusinessReviewInsight.CREATOR);
      label372:
      if (paramJSONObject.isNull("user_deals")) {
        break label1648;
      }
      mUserDeals = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("user_deals"), YelpDeal.CREATOR);
      label399:
      if (paramJSONObject.isNull("hours")) {
        break label1658;
      }
      mHours = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("hours"), YelpHoursPair.CREATOR);
      label426:
      if (!paramJSONObject.isNull("menu")) {
        mMenu = ((Menu)Menu.CREATOR.parse(paramJSONObject.getJSONObject("menu")));
      }
      if (!paramJSONObject.isNull("check_in_offer")) {
        mCheckInOffer = ((Offer)Offer.CREATOR.parse(paramJSONObject.getJSONObject("check_in_offer")));
      }
      if (!paramJSONObject.isNull("primary_photo")) {
        mPrimaryPhoto = ((Photo)Photo.CREATOR.parse(paramJSONObject.getJSONObject("primary_photo")));
      }
      if (!paramJSONObject.isNull("platform_action")) {
        mPlatformAction = ((PlatformAction)PlatformAction.CREATOR.parse(paramJSONObject.getJSONObject("platform_action")));
      }
      if (!paramJSONObject.isNull("recent_check_in_friends")) {
        mRecentCheckInFriends = ((RecentFriendCheckIns)RecentFriendCheckIns.CREATOR.parse(paramJSONObject.getJSONObject("recent_check_in_friends")));
      }
      if (!paramJSONObject.isNull("reservation")) {
        mReservation = ((Reservation)Reservation.CREATOR.parse(paramJSONObject.getJSONObject("reservation")));
      }
      if (!paramJSONObject.isNull("spam_alert")) {
        mSpamAlert = ((SpamAlert)SpamAlert.CREATOR.parse(paramJSONObject.getJSONObject("spam_alert")));
      }
      if (!paramJSONObject.isNull("id")) {
        mId = paramJSONObject.optString("id");
      }
      if (!paramJSONObject.isNull("address1")) {
        mAddress1 = paramJSONObject.optString("address1");
      }
      if (!paramJSONObject.isNull("address2")) {
        mAddress2 = paramJSONObject.optString("address2");
      }
      if (!paramJSONObject.isNull("address3")) {
        mAddress3 = paramJSONObject.optString("address3");
      }
      if (!paramJSONObject.isNull("state")) {
        mState = paramJSONObject.optString("state");
      }
      if (!paramJSONObject.isNull("city")) {
        mCity = paramJSONObject.optString("city");
      }
      if (!paramJSONObject.isNull("zip")) {
        mZip = paramJSONObject.optString("zip");
      }
      if (!paramJSONObject.isNull("country")) {
        mCountry = paramJSONObject.optString("country");
      }
      if (!paramJSONObject.isNull("locality")) {
        mLocality = paramJSONObject.optString("locality");
      }
      if (!paramJSONObject.isNull("photo_url")) {
        mPhotoUrl = paramJSONObject.optString("photo_url");
      }
      if (!paramJSONObject.isNull("cross_streets")) {
        mCrossStreets = paramJSONObject.optString("cross_streets");
      }
      if (!paramJSONObject.isNull("localized_address")) {
        mLocalizedAddress = paramJSONObject.optString("localized_address");
      }
      if (!paramJSONObject.isNull("localized_phone")) {
        mLocalizedPhone = paramJSONObject.optString("localized_phone");
      }
      if (!paramJSONObject.isNull("localized_price")) {
        mLocalizedPrice = paramJSONObject.optString("localized_price");
      }
      if (!paramJSONObject.isNull("name")) {
        mName = paramJSONObject.optString("name");
      }
      if (!paramJSONObject.isNull("alias")) {
        mAlias = paramJSONObject.optString("alias");
      }
      if (!paramJSONObject.isNull("dialable_phone")) {
        mDialablePhone = paramJSONObject.optString("dialable_phone");
      }
      if (!paramJSONObject.isNull("url")) {
        mUrl = paramJSONObject.optString("url");
      }
      if (!paramJSONObject.isNull("display_url")) {
        mDisplayUrl = paramJSONObject.optString("display_url");
      }
      if (!paramJSONObject.isNull("menu_url")) {
        mMenuUrl = paramJSONObject.optString("menu_url");
      }
      if (!paramJSONObject.isNull("menu_display_url")) {
        mMenuDisplayUrl = paramJSONObject.optString("menu_display_url");
      }
      if (!paramJSONObject.isNull("moved_to_business_id")) {
        mMovedToBusinessId = paramJSONObject.optString("moved_to_business_id");
      }
      if (paramJSONObject.isNull("user_review_activity")) {
        break label1668;
      }
    }
    label1558:
    label1568:
    label1578:
    label1588:
    label1598:
    label1608:
    label1618:
    label1628:
    label1638:
    label1648:
    label1658:
    label1668:
    for (mUserReviewStatus = paramJSONObject.optString("user_review_activity");; mUserReviewStatus = "not_started")
    {
      if (!paramJSONObject.isNull("reservation_provider")) {
        mReservationProviderString = paramJSONObject.optString("reservation_provider");
      }
      if (!paramJSONObject.isNull("theater_url")) {
        mTheaterUrl = paramJSONObject.optString("theater_url");
      }
      if (!paramJSONObject.isNull("yelp_url")) {
        mYelpUrl = paramJSONObject.optString("yelp_url");
      }
      if (!paramJSONObject.isNull("top_user")) {
        mTopUser = ((User)User.CREATOR.parse(paramJSONObject.getJSONObject("top_user")));
      }
      if (!paramJSONObject.isNull("biz_owner_video")) {
        mBizOwnerVideo = ((Video)Video.CREATOR.parse(paramJSONObject.getJSONObject("biz_owner_video")));
      }
      if (!paramJSONObject.isNull("addresses")) {
        mDisplayAddresses = ((YelpAddresses)YelpAddresses.CREATOR.parse(paramJSONObject.getJSONObject("addresses")));
      }
      if (!paramJSONObject.isNull("review")) {
        mReview = ((YelpBusinessReview)YelpBusinessReview.CREATOR.parse(paramJSONObject.getJSONObject("review")));
      }
      if (!paramJSONObject.isNull("deal")) {
        mDeal = ((YelpDeal)YelpDeal.CREATOR.parse(paramJSONObject.getJSONObject("deal")));
      }
      mIsClosed = paramJSONObject.optBoolean("is_closed");
      mIsMovedToNewAddress = paramJSONObject.optBoolean("is_moved_to_new_address");
      mIsBookmarked = paramJSONObject.optBoolean("is_bookmarked");
      mIsAdRatingDisabled = paramJSONObject.optBoolean("is_ad_rating_disabled");
      mIsMessageToBusinessEnabled = paramJSONObject.optBoolean("is_message_to_business_enabled");
      mLatitude = paramJSONObject.optDouble("latitude");
      mLongitude = paramJSONObject.optDouble("longitude");
      mAvgRating = ((float)paramJSONObject.optDouble("avg_rating"));
      mGeoAccuracy = ((float)paramJSONObject.optDouble("geo_accuracy"));
      mReviewCount = paramJSONObject.optInt("review_count");
      mPrice = paramJSONObject.optInt("price");
      mTipCount = paramJSONObject.optInt("quicktip_count");
      mRegularCount = paramJSONObject.optInt("regular_count");
      mFriendBookmarkedCount = paramJSONObject.optInt("friend_bookmarked_count");
      mUserCount = paramJSONObject.optInt("user_count");
      mPhotoCount = paramJSONObject.optInt("photo_count");
      mUserReviewRating = paramJSONObject.optInt("user_latest_review_rating");
      mUserCheckinsCount = paramJSONObject.optInt("user_check_in_count");
      mVideoCount = paramJSONObject.optInt("video_count");
      return;
      mMovies = new ArrayList();
      break;
      mLocalizedAttributes = Collections.emptyList();
      break label165;
      mAttributions = Collections.emptyList();
      break label192;
      mCategories = Collections.emptyList();
      break label219;
      mPhotos = Collections.emptyList();
      break label246;
      mSpecialHours = Collections.emptyList();
      break label273;
      mNeighborhoods = Collections.emptyList();
      break label297;
      mRegularNames = Collections.emptyList();
      break label321;
      mLocalizedHours = Collections.emptyList();
      break label345;
      mReviewInsights = Collections.emptyList();
      break label372;
      mUserDeals = Collections.emptyList();
      break label399;
      mHours = Collections.emptyList();
      break label426;
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mAlternateNames = ((AlternateBusinessNames)paramParcel.readParcelable(AlternateBusinessNames.class.getClassLoader()));
    mMovies = paramParcel.createTypedArrayList(Movie.CREATOR);
    mCallToAction = ((CallToAction)paramParcel.readParcelable(CallToAction.class.getClassLoader()));
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      mDateReopening = new Date(l);
    }
    mFormatMode = ((BusinessSearchRequest.FormatMode)paramParcel.readSerializable());
    mFromThisBusiness = ((FromThisBusiness)paramParcel.readParcelable(FromThisBusiness.class.getClassLoader()));
    mLocalizedAttributes = paramParcel.createTypedArrayList(AttributedLabelValuePair.CREATOR);
    mAttributions = paramParcel.createTypedArrayList(Attribution.CREATOR);
    mCategories = paramParcel.createTypedArrayList(Category.CREATOR);
    mPhotos = paramParcel.createTypedArrayList(Photo.CREATOR);
    mSpecialHours = paramParcel.createTypedArrayList(SpecialHours.CREATOR);
    mNeighborhoods = paramParcel.createStringArrayList();
    mRegularNames = paramParcel.createStringArrayList();
    mLocalizedHours = paramParcel.createStringArrayList();
    mCheckedInFriends = paramParcel.createTypedArrayList(User.CREATOR);
    mReviewInsights = paramParcel.createTypedArrayList(YelpBusinessReviewInsight.CREATOR);
    mUserDeals = paramParcel.createTypedArrayList(YelpDeal.CREATOR);
    mHours = paramParcel.createTypedArrayList(YelpHoursPair.CREATOR);
    mMenu = ((Menu)paramParcel.readParcelable(Menu.class.getClassLoader()));
    mCheckInOffer = ((Offer)paramParcel.readParcelable(Offer.class.getClassLoader()));
    mPrimaryPhoto = ((Photo)paramParcel.readParcelable(Photo.class.getClassLoader()));
    mPlatformAction = ((PlatformAction)paramParcel.readParcelable(PlatformAction.class.getClassLoader()));
    mRecentCheckInFriends = ((RecentFriendCheckIns)paramParcel.readParcelable(RecentFriendCheckIns.class.getClassLoader()));
    mReservation = ((Reservation)paramParcel.readParcelable(Reservation.class.getClassLoader()));
    mSpamAlert = ((SpamAlert)paramParcel.readParcelable(SpamAlert.class.getClassLoader()));
    mId = paramParcel.readString();
    mAddress1 = paramParcel.readString();
    mAddress2 = paramParcel.readString();
    mAddress3 = paramParcel.readString();
    mState = paramParcel.readString();
    mCity = paramParcel.readString();
    mZip = paramParcel.readString();
    mCountry = paramParcel.readString();
    mLocality = paramParcel.readString();
    mPhotoUrl = paramParcel.readString();
    mCrossStreets = paramParcel.readString();
    mLocalizedAddress = paramParcel.readString();
    mLocalizedPhone = paramParcel.readString();
    mLocalizedPrice = paramParcel.readString();
    mName = paramParcel.readString();
    mAlias = paramParcel.readString();
    mDialablePhone = paramParcel.readString();
    mTransitDescription = paramParcel.readString();
    mUrl = paramParcel.readString();
    mDisplayUrl = paramParcel.readString();
    mMenuUrl = paramParcel.readString();
    mMenuDisplayUrl = paramParcel.readString();
    mMovedToBusinessId = paramParcel.readString();
    mUserReviewStatus = paramParcel.readString();
    mReservationProviderString = paramParcel.readString();
    mTheaterUrl = paramParcel.readString();
    mYelpUrl = paramParcel.readString();
    mTopUser = ((User)paramParcel.readParcelable(User.class.getClassLoader()));
    mBizOwnerVideo = ((Video)paramParcel.readParcelable(Video.class.getClassLoader()));
    mDisplayAddresses = ((YelpAddresses)paramParcel.readParcelable(YelpAddresses.class.getClassLoader()));
    mReview = ((YelpBusinessReview)paramParcel.readParcelable(YelpBusinessReview.class.getClassLoader()));
    mDeal = ((YelpDeal)paramParcel.readParcelable(YelpDeal.class.getClassLoader()));
    boolean[] arrayOfBoolean = paramParcel.createBooleanArray();
    mIsClosed = arrayOfBoolean[0];
    mIsMovedToNewAddress = arrayOfBoolean[1];
    mIsBookmarked = arrayOfBoolean[2];
    mIsAdRatingDisabled = arrayOfBoolean[3];
    mIsMessageToBusinessEnabled = arrayOfBoolean[4];
    mLatitude = paramParcel.readDouble();
    mLongitude = paramParcel.readDouble();
    mAvgRating = paramParcel.readFloat();
    mGeoAccuracy = paramParcel.readFloat();
    mReviewCount = paramParcel.readInt();
    mPrice = paramParcel.readInt();
    mTipCount = paramParcel.readInt();
    mRegularCount = paramParcel.readInt();
    mFriendBookmarkedCount = paramParcel.readInt();
    mUserCount = paramParcel.readInt();
    mCheckedInFriendCount = paramParcel.readInt();
    mPhotoCount = paramParcel.readInt();
    mUserReviewRating = paramParcel.readInt();
    mUserCheckinsCount = paramParcel.readInt();
    mVideoCount = paramParcel.readInt();
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = new JSONObject();
    if (mAlternateNames != null) {
      localJSONObject.put("alternate_names", mAlternateNames.writeJSON());
    }
    JSONArray localJSONArray;
    Iterator localIterator;
    if (mMovies != null)
    {
      localJSONArray = new JSONArray();
      localIterator = mMovies.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((Movie)localIterator.next()).writeJSON());
      }
      localJSONObject.put("movies", localJSONArray);
    }
    if (mCallToAction != null) {
      localJSONObject.put("call_to_action", mCallToAction.writeJSON());
    }
    if (mDateReopening != null) {
      localJSONObject.put("time_reopening", mDateReopening.getTime() / 1000L);
    }
    if (mFromThisBusiness != null) {
      localJSONObject.put("from_this_business", mFromThisBusiness.writeJSON());
    }
    if (mLocalizedAttributes != null)
    {
      localJSONArray = new JSONArray();
      localIterator = mLocalizedAttributes.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((AttributedLabelValuePair)localIterator.next()).writeJSON());
      }
      localJSONObject.put("localized_attributes", localJSONArray);
    }
    if (mAttributions != null)
    {
      localJSONArray = new JSONArray();
      localIterator = mAttributions.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((Attribution)localIterator.next()).writeJSON());
      }
      localJSONObject.put("attributions", localJSONArray);
    }
    if (mCategories != null)
    {
      localJSONArray = new JSONArray();
      localIterator = mCategories.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((Category)localIterator.next()).writeJSON());
      }
      localJSONObject.put("categories", localJSONArray);
    }
    if (mPhotos != null)
    {
      localJSONArray = new JSONArray();
      localIterator = mPhotos.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((Photo)localIterator.next()).writeJSON());
      }
      localJSONObject.put("photos", localJSONArray);
    }
    if (mSpecialHours != null)
    {
      localJSONArray = new JSONArray();
      localIterator = mSpecialHours.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((SpecialHours)localIterator.next()).writeJSON());
      }
      localJSONObject.put("special_hours", localJSONArray);
    }
    if (mNeighborhoods != null)
    {
      localJSONArray = new JSONArray();
      localIterator = mNeighborhoods.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put((String)localIterator.next());
      }
      localJSONObject.put("neighborhoods", localJSONArray);
    }
    if (mRegularNames != null)
    {
      localJSONArray = new JSONArray();
      localIterator = mRegularNames.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put((String)localIterator.next());
      }
      localJSONObject.put("regular_names", localJSONArray);
    }
    if (mLocalizedHours != null)
    {
      localJSONArray = new JSONArray();
      localIterator = mLocalizedHours.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put((String)localIterator.next());
      }
      localJSONObject.put("localized_hours", localJSONArray);
    }
    if (mReviewInsights != null)
    {
      localJSONArray = new JSONArray();
      localIterator = mReviewInsights.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((YelpBusinessReviewInsight)localIterator.next()).writeJSON());
      }
      localJSONObject.put("demographics", localJSONArray);
    }
    if (mUserDeals != null)
    {
      localJSONArray = new JSONArray();
      localIterator = mUserDeals.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((YelpDeal)localIterator.next()).writeJSON());
      }
      localJSONObject.put("user_deals", localJSONArray);
    }
    if (mHours != null)
    {
      localJSONArray = new JSONArray();
      localIterator = mHours.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((YelpHoursPair)localIterator.next()).writeJSON());
      }
      localJSONObject.put("hours", localJSONArray);
    }
    if (mMenu != null) {
      localJSONObject.put("menu", mMenu.writeJSON());
    }
    if (mCheckInOffer != null) {
      localJSONObject.put("check_in_offer", mCheckInOffer.writeJSON());
    }
    if (mPrimaryPhoto != null) {
      localJSONObject.put("primary_photo", mPrimaryPhoto.writeJSON());
    }
    if (mPlatformAction != null) {
      localJSONObject.put("platform_action", mPlatformAction.writeJSON());
    }
    if (mRecentCheckInFriends != null) {
      localJSONObject.put("recent_check_in_friends", mRecentCheckInFriends.writeJSON());
    }
    if (mReservation != null) {
      localJSONObject.put("reservation", mReservation.writeJSON());
    }
    if (mSpamAlert != null) {
      localJSONObject.put("spam_alert", mSpamAlert.writeJSON());
    }
    if (mId != null) {
      localJSONObject.put("id", mId);
    }
    if (mAddress1 != null) {
      localJSONObject.put("address1", mAddress1);
    }
    if (mAddress2 != null) {
      localJSONObject.put("address2", mAddress2);
    }
    if (mAddress3 != null) {
      localJSONObject.put("address3", mAddress3);
    }
    if (mState != null) {
      localJSONObject.put("state", mState);
    }
    if (mCity != null) {
      localJSONObject.put("city", mCity);
    }
    if (mZip != null) {
      localJSONObject.put("zip", mZip);
    }
    if (mCountry != null) {
      localJSONObject.put("country", mCountry);
    }
    if (mLocality != null) {
      localJSONObject.put("locality", mLocality);
    }
    if (mPhotoUrl != null) {
      localJSONObject.put("photo_url", mPhotoUrl);
    }
    if (mCrossStreets != null) {
      localJSONObject.put("cross_streets", mCrossStreets);
    }
    if (mLocalizedAddress != null) {
      localJSONObject.put("localized_address", mLocalizedAddress);
    }
    if (mLocalizedPhone != null) {
      localJSONObject.put("localized_phone", mLocalizedPhone);
    }
    if (mLocalizedPrice != null) {
      localJSONObject.put("localized_price", mLocalizedPrice);
    }
    if (mName != null) {
      localJSONObject.put("name", mName);
    }
    if (mAlias != null) {
      localJSONObject.put("alias", mAlias);
    }
    if (mDialablePhone != null) {
      localJSONObject.put("dialable_phone", mDialablePhone);
    }
    if (mUrl != null) {
      localJSONObject.put("url", mUrl);
    }
    if (mDisplayUrl != null) {
      localJSONObject.put("display_url", mDisplayUrl);
    }
    if (mMenuUrl != null) {
      localJSONObject.put("menu_url", mMenuUrl);
    }
    if (mMenuDisplayUrl != null) {
      localJSONObject.put("menu_display_url", mMenuDisplayUrl);
    }
    if (mMovedToBusinessId != null) {
      localJSONObject.put("moved_to_business_id", mMovedToBusinessId);
    }
    if (mUserReviewStatus != null) {
      localJSONObject.put("user_review_activity", mUserReviewStatus);
    }
    if (mReservationProviderString != null) {
      localJSONObject.put("reservation_provider", mReservationProviderString);
    }
    if (mTheaterUrl != null) {
      localJSONObject.put("theater_url", mTheaterUrl);
    }
    if (mYelpUrl != null) {
      localJSONObject.put("yelp_url", mYelpUrl);
    }
    if (mTopUser != null) {
      localJSONObject.put("top_user", mTopUser.writeJSON());
    }
    if (mBizOwnerVideo != null) {
      localJSONObject.put("biz_owner_video", mBizOwnerVideo.writeJSON());
    }
    if (mDisplayAddresses != null) {
      localJSONObject.put("addresses", mDisplayAddresses.writeJSON());
    }
    if (mReview != null) {
      localJSONObject.put("review", mReview.writeJSON());
    }
    if (mDeal != null) {
      localJSONObject.put("deal", mDeal.writeJSON());
    }
    localJSONObject.put("is_closed", mIsClosed);
    localJSONObject.put("is_moved_to_new_address", mIsMovedToNewAddress);
    localJSONObject.put("is_bookmarked", mIsBookmarked);
    localJSONObject.put("is_ad_rating_disabled", mIsAdRatingDisabled);
    localJSONObject.put("is_message_to_business_enabled", mIsMessageToBusinessEnabled);
    localJSONObject.put("latitude", mLatitude);
    localJSONObject.put("longitude", mLongitude);
    localJSONObject.put("avg_rating", mAvgRating);
    localJSONObject.put("geo_accuracy", mGeoAccuracy);
    localJSONObject.put("review_count", mReviewCount);
    localJSONObject.put("price", mPrice);
    localJSONObject.put("quicktip_count", mTipCount);
    localJSONObject.put("regular_count", mRegularCount);
    localJSONObject.put("friend_bookmarked_count", mFriendBookmarkedCount);
    localJSONObject.put("user_count", mUserCount);
    localJSONObject.put("photo_count", mPhotoCount);
    localJSONObject.put("user_latest_review_rating", mUserReviewRating);
    localJSONObject.put("user_check_in_count", mUserCheckinsCount);
    localJSONObject.put("video_count", mVideoCount);
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(mAlternateNames, 0);
    paramParcel.writeTypedList(mMovies);
    paramParcel.writeParcelable(mCallToAction, 0);
    if (mDateReopening == null) {}
    for (long l = -2147483648L;; l = mDateReopening.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeSerializable(mFormatMode);
      paramParcel.writeParcelable(mFromThisBusiness, 0);
      paramParcel.writeTypedList(mLocalizedAttributes);
      paramParcel.writeTypedList(mAttributions);
      paramParcel.writeTypedList(mCategories);
      paramParcel.writeTypedList(mPhotos);
      paramParcel.writeTypedList(mSpecialHours);
      paramParcel.writeStringList(mNeighborhoods);
      paramParcel.writeStringList(mRegularNames);
      paramParcel.writeStringList(mLocalizedHours);
      paramParcel.writeTypedList(mCheckedInFriends);
      paramParcel.writeTypedList(mReviewInsights);
      paramParcel.writeTypedList(mUserDeals);
      paramParcel.writeTypedList(mHours);
      paramParcel.writeParcelable(mMenu, 0);
      paramParcel.writeParcelable(mCheckInOffer, 0);
      paramParcel.writeParcelable(mPrimaryPhoto, 0);
      paramParcel.writeParcelable(mPlatformAction, 0);
      paramParcel.writeParcelable(mRecentCheckInFriends, 0);
      paramParcel.writeParcelable(mReservation, 0);
      paramParcel.writeParcelable(mSpamAlert, 0);
      paramParcel.writeString(mId);
      paramParcel.writeString(mAddress1);
      paramParcel.writeString(mAddress2);
      paramParcel.writeString(mAddress3);
      paramParcel.writeString(mState);
      paramParcel.writeString(mCity);
      paramParcel.writeString(mZip);
      paramParcel.writeString(mCountry);
      paramParcel.writeString(mLocality);
      paramParcel.writeString(mPhotoUrl);
      paramParcel.writeString(mCrossStreets);
      paramParcel.writeString(mLocalizedAddress);
      paramParcel.writeString(mLocalizedPhone);
      paramParcel.writeString(mLocalizedPrice);
      paramParcel.writeString(mName);
      paramParcel.writeString(mAlias);
      paramParcel.writeString(mDialablePhone);
      paramParcel.writeString(mTransitDescription);
      paramParcel.writeString(mUrl);
      paramParcel.writeString(mDisplayUrl);
      paramParcel.writeString(mMenuUrl);
      paramParcel.writeString(mMenuDisplayUrl);
      paramParcel.writeString(mMovedToBusinessId);
      paramParcel.writeString(mUserReviewStatus);
      paramParcel.writeString(mReservationProviderString);
      paramParcel.writeString(mTheaterUrl);
      paramParcel.writeString(mYelpUrl);
      paramParcel.writeParcelable(mTopUser, 0);
      paramParcel.writeParcelable(mBizOwnerVideo, 0);
      paramParcel.writeParcelable(mDisplayAddresses, 0);
      paramParcel.writeParcelable(mReview, 0);
      paramParcel.writeParcelable(mDeal, 0);
      paramParcel.writeBooleanArray(new boolean[] { mIsClosed, mIsMovedToNewAddress, mIsBookmarked, mIsAdRatingDisabled, mIsMessageToBusinessEnabled });
      paramParcel.writeDouble(mLatitude);
      paramParcel.writeDouble(mLongitude);
      paramParcel.writeFloat(mAvgRating);
      paramParcel.writeFloat(mGeoAccuracy);
      paramParcel.writeInt(mReviewCount);
      paramParcel.writeInt(mPrice);
      paramParcel.writeInt(mTipCount);
      paramParcel.writeInt(mRegularCount);
      paramParcel.writeInt(mFriendBookmarkedCount);
      paramParcel.writeInt(mUserCount);
      paramParcel.writeInt(mCheckedInFriendCount);
      paramParcel.writeInt(mPhotoCount);
      paramParcel.writeInt(mUserReviewRating);
      paramParcel.writeInt(mUserCheckinsCount);
      paramParcel.writeInt(mVideoCount);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._YelpBusiness
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */