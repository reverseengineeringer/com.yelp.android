package com.yelp.android.serializable;

import android.content.Context;
import android.content.res.Resources;
import android.location.Address;
import android.location.Location;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Parcel;
import android.text.TextUtils;
import com.google.android.gms.maps.model.LatLng;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BaseYelpApplication;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.FormatMode;
import com.yelp.android.ui.activities.reviews.ReviewState;
import com.yelp.android.ui.activities.support.WebViewActivity;
import com.yelp.android.ui.util.cr;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.o;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class YelpBusiness
  extends _YelpBusiness
  implements by, com.yelp.android.ui.panels.businesssearch.f
{
  public static final JsonParser.DualCreator<YelpBusiness> CREATOR = new dx();
  public static final String EXTRA_BUSINESS = "extra.business";
  public static final int GEOACCURACY_MAPPABLE = 6;
  private String mCachedDisplayAddress;
  private JSONObject mDFPAdParams;
  private String mJSONString;
  private long mTimeFetched = System.currentTimeMillis();
  private TimeZone mTimeZone = TimeZone.getDefault();
  private String mYelpRequestId;
  
  public static ArrayList<YelpBusiness> businessesFromJSONArray(JSONArray paramJSONArray, String paramString, BusinessSearchRequest.FormatMode paramFormatMode)
  {
    int j = paramJSONArray.length();
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    while (i < j)
    {
      YelpBusiness localYelpBusiness = (YelpBusiness)CREATOR.parse(paramJSONArray.getJSONObject(i));
      localYelpBusiness.setYelpRequestId(paramString);
      if (mFormatMode == null) {
        mFormatMode = paramFormatMode;
      }
      localArrayList.add(localYelpBusiness);
      i += 1;
    }
    return localArrayList;
  }
  
  private String deprecatedCreateLongFormAddress()
  {
    boolean bool = LocaleSettings.e(getCountry());
    ArrayList localArrayList = new ArrayList(4);
    Object localObject = getAddress1();
    if (!TextUtils.isEmpty((CharSequence)localObject)) {
      localArrayList.add(localObject);
    }
    localObject = getAddress2();
    if (!TextUtils.isEmpty((CharSequence)localObject)) {
      localArrayList.add(localObject);
    }
    localObject = getAddress3();
    if (!TextUtils.isEmpty((CharSequence)localObject)) {
      localArrayList.add(localObject);
    }
    localObject = getLocality();
    if (!TextUtils.isEmpty((CharSequence)localObject)) {
      if (bool) {
        localArrayList.add(0, localObject);
      }
    }
    String str;
    while (bool)
    {
      return TextUtils.join("\n", localArrayList);
      localArrayList.add(localObject);
      continue;
      if (!bool)
      {
        str = getCity();
        if (TextUtils.isEmpty(str)) {
          break label215;
        }
        localObject = str;
      }
    }
    label215:
    for (;;)
    {
      str = getState();
      if (!TextUtils.isEmpty(str)) {
        TextUtils.concat(new CharSequence[] { localObject, ", ", str });
      }
      str = getZip();
      if (TextUtils.isEmpty(str)) {
        break;
      }
      TextUtils.concat(new CharSequence[] { localObject, " ", str });
      break;
      return TextUtils.join(", ", localArrayList);
    }
  }
  
  private void deprecatedCreatePrimaryLanguageField()
  {
    if ((mDisplayAddresses != null) && (mDisplayAddresses.getPrimaryLanguage() != null)) {
      return;
    }
    String str1 = deprecatedCreateShortFormAddress();
    String str2 = deprecatedCreateLongFormAddress();
    mDisplayAddresses = new YelpAddresses(new YelpAddress(createCrossStreets(), str1, str2), null);
  }
  
  private String deprecatedCreateShortFormAddress()
  {
    Object localObject;
    if (LocaleSettings.e(getCountry()))
    {
      localObject = new ArrayList();
      if ((TextUtils.isEmpty(mCity)) && (mNeighborhoods.size() > 0)) {
        ((ArrayList)localObject).add(mNeighborhoods.get(0));
      }
      for (;;)
      {
        if (!TextUtils.isEmpty(mAddress1)) {
          ((ArrayList)localObject).add(mAddress1);
        }
        if (!TextUtils.isEmpty(mAddress2)) {
          ((ArrayList)localObject).add(mAddress2);
        }
        if (!TextUtils.isEmpty(mAddress3)) {
          ((ArrayList)localObject).add(mAddress3);
        }
        return TextUtils.join("", (Iterable)localObject);
        ((ArrayList)localObject).add(mCity);
      }
    }
    if (!TextUtils.isEmpty(mAddress1))
    {
      localObject = mCity;
      if (mNeighborhoods.size() > 0) {
        localObject = (String)mNeighborhoods.get(0);
      }
      if (localObject != null) {
        return String.format("%s, %s", new Object[] { mAddress1, localObject });
      }
      return mAddress1;
    }
    if (mNeighborhoods.size() > 0) {
      return (String)mNeighborhoods.get(0);
    }
    return mCity;
  }
  
  public static YelpBusiness findBusinessInListById(List<YelpBusiness> paramList, String paramString)
  {
    if ((paramString != null) && (paramList != null))
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        YelpBusiness localYelpBusiness = (YelpBusiness)paramList.next();
        if (localYelpBusiness.getId().equals(paramString)) {
          return localYelpBusiness;
        }
      }
    }
    return null;
  }
  
  private String generateTransitDescription(JSONArray paramJSONArray)
  {
    int j;
    if (paramJSONArray != null)
    {
      j = paramJSONArray.length();
      if (j != 0) {}
    }
    else
    {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder(100);
    int i = 0;
    if (i < j)
    {
      Object localObject = paramJSONArray.getJSONArray(i);
      String str = ((JSONArray)localObject).getString(1);
      localObject = JsonUtil.getStringArray(((JSONArray)localObject).getJSONArray(2));
      if (localObject.length > 0) {
        localStringBuilder.append(String.format("%s (%s)", new Object[] { str, TextUtils.join(",", (Object[])localObject) }));
      }
      for (;;)
      {
        if (i < j - 1) {
          localStringBuilder.append("\n");
        }
        i += 1;
        break;
        localStringBuilder.append(str);
      }
    }
    return localStringBuilder.toString();
  }
  
  public static HashMap<String, YelpBusiness> jsonBusinessesToMap(JSONArray paramJSONArray, String paramString, BusinessSearchRequest.FormatMode paramFormatMode)
  {
    return jsonBusinessesToMap(paramJSONArray, paramString, paramFormatMode, false);
  }
  
  public static HashMap<String, YelpBusiness> jsonBusinessesToMap(JSONArray paramJSONArray, String paramString, BusinessSearchRequest.FormatMode paramFormatMode, boolean paramBoolean)
  {
    int j = paramJSONArray.length();
    HashMap localHashMap = new HashMap(j);
    int i = 0;
    while (i < j)
    {
      if ((!paramBoolean) || (!paramJSONArray.isNull(i)))
      {
        YelpBusiness localYelpBusiness = (YelpBusiness)CREATOR.parse(paramJSONArray.getJSONObject(i));
        localYelpBusiness.setYelpRequestId(paramString);
        if (mFormatMode == null) {
          mFormatMode = paramFormatMode;
        }
        localHashMap.put(localYelpBusiness.getId(), localYelpBusiness);
      }
      i += 1;
    }
    return localHashMap;
  }
  
  public String createCrossStreets()
  {
    Object localObject3 = null;
    Object localObject1 = getNeighborhoods();
    String str;
    Object localObject2;
    if (((List)localObject1).isEmpty())
    {
      localObject1 = null;
      str = getCrossStreets();
      localObject2 = AppData.b();
      if ((TextUtils.isEmpty(str)) || (TextUtils.isEmpty((CharSequence)localObject1))) {
        break label112;
      }
      if (!str.contains("&")) {
        break label91;
      }
      localObject2 = ((Context)localObject2).getString(2131166290, new Object[] { str, localObject1 });
    }
    label91:
    label112:
    do
    {
      do
      {
        return (String)localObject2;
        localObject1 = (String)((List)localObject1).get(0);
        break;
        return ((Context)localObject2).getString(2131165667, new Object[] { str, localObject1 });
        if ((!TextUtils.isEmpty(str)) && (TextUtils.isEmpty((CharSequence)localObject1)))
        {
          if (str.contains("&")) {
            return ((Context)localObject2).getString(2131166291, new Object[] { str });
          }
          return ((Context)localObject2).getString(2131165668, new Object[] { str });
        }
        localObject2 = localObject3;
      } while (!TextUtils.isEmpty(str));
      localObject2 = localObject3;
    } while (TextUtils.isEmpty((CharSequence)localObject1));
    return (String)localObject1;
  }
  
  public void decrementPhotoCount()
  {
    mPhotoCount -= 1;
  }
  
  public void decrementTipCount()
  {
    mTipCount -= 1;
  }
  
  public void deletePhoto(Photo paramPhoto)
  {
    int i = cr.a(mPhotos, paramPhoto);
    if (i >= 0) {
      mPhotos.remove(i);
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (YelpBusiness)paramObject;
        if (mId != null) {
          break;
        }
      } while (mId == null);
      return false;
    } while (mId.equals(mId));
    return false;
  }
  
  public Address getAddress()
  {
    Address localAddress = new Address(new Locale(Locale.getDefault().getLanguage(), getCountry()));
    com.yelp.android.ui.activities.mutatebiz.f.a(localAddress, new String[] { getAddress1(), getAddress2(), getAddress3(), getLocality() });
    localAddress.setLongitude(getLongitude());
    localAddress.setLatitude(getLatitude());
    localAddress.setCountryCode(getCountry());
    localAddress.setAdminArea(getState());
    localAddress.setLocality(getLocality());
    localAddress.setPhone(getLocalizedPhone());
    localAddress.setPostalCode(getZip());
    localAddress.setSubLocality(TextUtils.join(", ", mNeighborhoods));
    localAddress.setUrl(getUrl());
    return localAddress;
  }
  
  public String getAddressForBusinessSearchResult()
  {
    if (mDisplayAddresses == null) {
      deprecatedCreatePrimaryLanguageField();
    }
    String str = mDisplayAddresses.getPrimaryLanguage().getShortForm();
    if (!TextUtils.isEmpty(str)) {
      return str;
    }
    if ((TextUtils.isEmpty(str)) && (mDisplayAddresses.getSecondaryLanguage() != null)) {
      return mDisplayAddresses.getSecondaryLanguage().getShortForm();
    }
    return "";
  }
  
  public String getAddressForDrivingDirections()
  {
    StringBuilder localStringBuilder = new StringBuilder(100);
    String str = getAddress1();
    if (!TextUtils.isEmpty(str))
    {
      localStringBuilder.append(str);
      localStringBuilder.append(", ");
    }
    str = getCity();
    if (!TextUtils.isEmpty(str))
    {
      localStringBuilder.append(str);
      localStringBuilder.append(", ");
    }
    str = getState();
    if (!TextUtils.isEmpty(str))
    {
      localStringBuilder.append(str);
      localStringBuilder.append(", ");
    }
    str = getZip();
    if (!TextUtils.isEmpty(str))
    {
      localStringBuilder.append(str);
      localStringBuilder.append(", ");
    }
    if (localStringBuilder.length() > 0) {
      localStringBuilder.delete(localStringBuilder.length() - 2, localStringBuilder.length());
    }
    return localStringBuilder.toString();
  }
  
  public String getAlternateNameString(Context paramContext)
  {
    Object localObject = getAlternateNames();
    if (localObject == null) {
      return "";
    }
    String str1 = getDisplayName();
    ArrayList localArrayList = new ArrayList();
    if (!mName.equalsIgnoreCase(str1)) {
      localArrayList.add(mName);
    }
    String str2 = ((AlternateBusinessNames)localObject).getPrimary();
    if ((!TextUtils.isEmpty(str2)) && (!str1.equalsIgnoreCase(str2)) && (!StringUtils.a(localArrayList, str2))) {
      localArrayList.add(str2);
    }
    localObject = ((AlternateBusinessNames)localObject).getSecondary();
    if ((!TextUtils.isEmpty((CharSequence)localObject)) && (!str1.equalsIgnoreCase((String)localObject)) && (!StringUtils.a(localArrayList, (String)localObject))) {
      localArrayList.add(localObject);
    }
    return TextUtils.join(paramContext.getResources().getString(2131165723), localArrayList);
  }
  
  public int getAssetForMap()
  {
    if (isLocationAccurate()) {
      return 2130838156;
    }
    return 2130838145;
  }
  
  public String getBestUrl()
  {
    if (TextUtils.isEmpty(getDisplayUrl())) {
      return getUrl();
    }
    return getDisplayUrl();
  }
  
  public YelpBusiness getBusiness()
  {
    return this;
  }
  
  public String getCategoryForBusinessSearchResult()
  {
    if (!mCategories.isEmpty()) {
      return ((Category)mCategories.get(0)).getName();
    }
    return "";
  }
  
  public String getCompleteAddress()
  {
    String str1 = getLocalizedStreetAddress();
    String str2 = getGeneralAddress();
    if (TextUtils.isEmpty(str1)) {
      return str2;
    }
    if (TextUtils.isEmpty(str2)) {
      return str1;
    }
    return String.valueOf(TextUtils.concat(new CharSequence[] { str1, "\n", str2 }));
  }
  
  public Date getDateReopening()
  {
    Date localDate = super.getDateReopening();
    if ((localDate != null) && (localDate.after(new Date()))) {
      return localDate;
    }
    return null;
  }
  
  public JSONObject getDfpParameters()
  {
    return mDFPAdParams;
  }
  
  public String getDisplayName()
  {
    String str2 = getCountry();
    AlternateBusinessNames localAlternateBusinessNames = getAlternateNames();
    Object localObject;
    if ((TextUtils.isEmpty(str2)) || (localAlternateBusinessNames == null)) {
      localObject = mName;
    }
    String str1;
    do
    {
      LocaleSettings localLocaleSettings;
      do
      {
        do
        {
          return (String)localObject;
          localLocaleSettings = AppData.b().g();
          if ((!LocaleSettings.a(str2)) || (localLocaleSettings.i())) {
            break;
          }
          str1 = localAlternateBusinessNames.getSecondary();
          localObject = str1;
        } while (!TextUtils.isEmpty(str1));
        str1 = localAlternateBusinessNames.getRomanized();
        localObject = str1;
      } while (!TextUtils.isEmpty(str1));
      if ((!LocaleSettings.c(str2)) || (localLocaleSettings.j())) {
        break;
      }
      str1 = localAlternateBusinessNames.getPrimary();
      if (!localLocaleSettings.k()) {
        break;
      }
      localObject = str1;
    } while (!TextUtils.isEmpty(str1));
    return mName;
  }
  
  public String getDisplayNameForBusinessSearchResult(Context paramContext)
  {
    String str2 = getDisplayName();
    String str1 = str2;
    if (isClosed())
    {
      if (isMovedToNewAddress()) {
        str1 = paramContext.getString(2131165399, new Object[] { str2 });
      }
    }
    else {
      return str1;
    }
    if (getDateReopening() != null) {
      return paramContext.getString(2131165404, new Object[] { str2 });
    }
    if (!TextUtils.isEmpty(getMovedToBusinessId())) {
      return paramContext.getString(2131165403, new Object[] { str2 });
    }
    return paramContext.getString(2131165396, new Object[] { str2 });
  }
  
  public double getDistance(Location paramLocation)
  {
    if ((Double.isNaN(getLongitude())) || (Double.isNaN(getLatitude())) || (paramLocation == null)) {
      return NaN.0D;
    }
    return o.a(getLatitude(), getLongitude(), paramLocation.getLatitude(), paramLocation.getLongitude());
  }
  
  public String getDistanceFormatted(Context paramContext, StringUtils.Format paramFormat)
  {
    return getDistanceFormatted(AppData.b().n().c(), paramContext, paramFormat);
  }
  
  public String getDistanceFormatted(Location paramLocation, Context paramContext, StringUtils.Format paramFormat)
  {
    if ((!isLocationAccurate()) || (Double.isNaN(getLongitude())) || (Double.isNaN(getLatitude())) || (!o.a(paramLocation))) {
      return null;
    }
    return StringUtils.a(getDistance(paramLocation), paramLocation.getAccuracy(), paramFormat, paramContext);
  }
  
  public String getGeneralAddress()
  {
    if (mDisplayAddresses == null) {
      deprecatedCreatePrimaryLanguageField();
    }
    String str2 = mDisplayAddresses.getPrimaryLanguage().getCrossStreets();
    YelpAddress localYelpAddress = mDisplayAddresses.getSecondaryLanguage();
    String str1 = str2;
    if (TextUtils.isEmpty(str2))
    {
      str1 = str2;
      if (localYelpAddress != null)
      {
        str1 = str2;
        if (!TextUtils.isEmpty(localYelpAddress.getCrossStreets())) {
          str1 = localYelpAddress.getCrossStreets();
        }
      }
    }
    return str1;
  }
  
  public LatLng getLatLng()
  {
    return new LatLng(getLatitude(), getLongitude());
  }
  
  public String getLocalizedStreetAddress()
  {
    if (mDisplayAddresses == null) {
      deprecatedCreatePrimaryLanguageField();
    }
    YelpAddress localYelpAddress1 = getDisplayAddresses().getSecondaryLanguage();
    YelpAddress localYelpAddress2 = getDisplayAddresses().getPrimaryLanguage();
    if (localYelpAddress1 == null) {
      return localYelpAddress2.getLongForm();
    }
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(localYelpAddress2.getShortForm());
    localArrayList.add(localYelpAddress1.getShortForm());
    localArrayList.add(getLocality());
    localArrayList.removeAll(Collections.singleton(""));
    return TextUtils.join("\n", localArrayList);
  }
  
  public Menu getMenu()
  {
    if (WebViewActivity.isEventsFeatureSupported()) {
      return super.getMenu();
    }
    return null;
  }
  
  public int getPhotosAndVideosCount()
  {
    return mPhotoCount + mVideoCount;
  }
  
  public PlatformAction getPlatformAction()
  {
    if (WebViewActivity.isEventsFeatureSupported()) {
      return super.getPlatformAction();
    }
    return null;
  }
  
  public String getRawJSON()
  {
    return mJSONString;
  }
  
  public Reservation.Provider getReservationProvider()
  {
    return Reservation.Provider.getProvider(mReservationProviderString);
  }
  
  public ReviewState getReviewState()
  {
    return ReviewState.fromDescription(mUserReviewStatus);
  }
  
  public String getShareStringShort()
  {
    StringBuilder localStringBuilder = new StringBuilder(256);
    localStringBuilder.append(mName).append('\n');
    if (!TextUtils.isEmpty(mLocalizedAddress)) {
      localStringBuilder.append(mLocalizedAddress).append('\n');
    }
    if (!TextUtils.isEmpty(mLocalizedPhone)) {
      localStringBuilder.append(mLocalizedPhone).append('\n');
    }
    return localStringBuilder.toString();
  }
  
  public long getTimeFetched()
  {
    return mTimeFetched;
  }
  
  public TimeZone getTimeZone()
  {
    return mTimeZone;
  }
  
  public String getYelpRequestId()
  {
    return mYelpRequestId;
  }
  
  public Uri getYelpUrl(Context paramContext)
  {
    return new Uri.Builder().scheme("http").authority(paramContext.getString(2131166852)).path(paramContext.getString(2131165445)).appendPath(mAlias).build();
  }
  
  public int hashCode()
  {
    if (mId == null) {}
    for (int i = 0;; i = mId.hashCode()) {
      return i + 31;
    }
  }
  
  public void incrementPhotoCount()
  {
    mPhotoCount += 1;
  }
  
  public void incrementTipCount()
  {
    mTipCount += 1;
  }
  
  public boolean isClosed()
  {
    return (super.isClosed()) || (getDateReopening() != null);
  }
  
  public boolean isLocationAccurate()
  {
    return getGeoAccuracy() >= 6.0F;
  }
  
  public void prependPhoto(Photo paramPhoto)
  {
    try
    {
      if (mPhotos.isEmpty()) {
        mPhotos = new ArrayList();
      }
      mPhotos.add(0, paramPhoto);
      return;
    }
    catch (UnsupportedOperationException paramPhoto)
    {
      YelpLog.error(paramPhoto);
    }
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    super.readFromJson(paramJSONObject);
    if (!paramJSONObject.isNull("transit")) {
      mTransitDescription = generateTransitDescription(paramJSONObject.getJSONArray("transit"));
    }
    Object localObject1 = paramJSONObject.optJSONObject("recent_check_in_friends");
    if (localObject1 != null)
    {
      paramJSONObject.remove("recent_check_in_friends");
      mCheckedInFriendCount = ((JSONObject)localObject1).optInt("count");
      Object localObject2 = JsonUtil.parseJsonList(((JSONObject)localObject1).getJSONArray("users"), YelpCheckIn.CREATOR);
      localObject1 = new ArrayList(((ArrayList)localObject2).size());
      localObject2 = ((ArrayList)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        YelpCheckIn localYelpCheckIn = (YelpCheckIn)((Iterator)localObject2).next();
        User localUser = localYelpCheckIn.getUser();
        if (localUser != null)
        {
          localUser.setCheckIn(localYelpCheckIn);
          ((ArrayList)localObject1).add(localUser);
        }
      }
      mCheckedInFriends = ((List)localObject1);
      if (!paramJSONObject.isNull("fmode")) {
        if (paramJSONObject.optInt("fmode", 0) != 0) {
          break label252;
        }
      }
    }
    label252:
    for (mFormatMode = BusinessSearchRequest.FormatMode.FULL;; mFormatMode = BusinessSearchRequest.FormatMode.SHORT)
    {
      mDFPAdParams = paramJSONObject.optJSONObject("dfp_ad_params");
      if (mDisplayUrl == null) {
        mDisplayUrl = "";
      }
      mTimeZone = TimeZone.getTimeZone(paramJSONObject.optString("timezone", TimeZone.getDefault().getID()));
      paramJSONObject.put("local_ads", new JSONArray());
      mJSONString = paramJSONObject.toString();
      return;
      mCheckedInFriends = Collections.emptyList();
      break;
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    super.readFromParcel(paramParcel);
    mJSONString = paramParcel.readString();
    mYelpRequestId = paramParcel.readString();
    mTimeFetched = paramParcel.readLong();
    mTimeZone = TimeZone.getTimeZone("" + paramParcel.readString());
    paramParcel = paramParcel.readString();
    if (!TextUtils.isEmpty(paramParcel)) {}
    try
    {
      mDFPAdParams = new JSONObject(paramParcel);
      return;
    }
    catch (JSONException paramParcel) {}
  }
  
  public void setBookmarked(boolean paramBoolean)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject(mJSONString);
      localJSONObject.remove("is_bookmarked");
      localJSONObject.put("is_bookmarked", paramBoolean);
      mJSONString = String.valueOf(localJSONObject);
      mIsBookmarked = paramBoolean;
      return;
    }
    catch (JSONException localJSONException)
    {
      BaseYelpApplication.a("YelpBusiness", "Json Exception [%s]", new Object[] { localJSONException });
    }
  }
  
  public void setCheckInOffer(Offer paramOffer)
  {
    mCheckInOffer = paramOffer;
  }
  
  public void setIsMessageToBusinessEnabled(boolean paramBoolean)
  {
    mIsMessageToBusinessEnabled = paramBoolean;
  }
  
  public void setReservation(Reservation paramReservation)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject(mJSONString);
      localJSONObject.remove("reservation");
      if (paramReservation != null) {
        localJSONObject.put("reservation", paramReservation.writeJSON());
      }
      mJSONString = String.valueOf(localJSONObject);
      mReservation = paramReservation;
      return;
    }
    catch (JSONException paramReservation)
    {
      BaseYelpApplication.a("YelpBusiness", "Got a json exception writing the Reservation, %s", new Object[] { paramReservation });
    }
  }
  
  public void setReviewState(ReviewState paramReviewState)
  {
    mUserReviewStatus = paramReviewState.getDescription();
  }
  
  public void setUserReviewRating(int paramInt)
  {
    mUserReviewRating = paramInt;
  }
  
  public void setYelpRequestId(String paramString)
  {
    mYelpRequestId = paramString;
  }
  
  public void updatePhoto(Photo paramPhoto)
  {
    int i = cr.a(mPhotos, paramPhoto);
    if (i >= 0) {
      mPhotos.set(i, paramPhoto);
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(mJSONString);
    paramParcel.writeString(mYelpRequestId);
    paramParcel.writeLong(mTimeFetched);
    paramParcel.writeString(mTimeZone.getID());
    if (mDFPAdParams != null)
    {
      paramParcel.writeString(mDFPAdParams.toString());
      return;
    }
    paramParcel.writeString("");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.YelpBusiness
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */