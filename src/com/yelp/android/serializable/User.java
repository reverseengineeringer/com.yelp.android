package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.services.r;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class User
  extends _User
  implements Parcelable, DisplayableAsUserBadge
{
  public static final ah<User> CREATOR = new dk();
  public static final String EXTRA_USER = "extra.user";
  private YelpCheckIn mCheckIn;
  private FeatureSet mDisabledFeatureSet = new FeatureSet();
  private User.Gender mGender;
  private boolean mIsElite;
  private Map<String, String> mProfileBio = Collections.emptyMap();
  private RankTitle[] mRankTitles = new RankTitle[RankTitle.Rank.values().length];
  private transient String mUserName;
  private User.EliteYear[] mYearsElite = new User.EliteYear[0];
  
  protected User()
  {
    mFormat = -1;
  }
  
  public User(String paramString1, String paramString2, String paramString3, boolean paramBoolean, int paramInt1, int paramInt2, String paramString4)
  {
    this();
    mId = paramString1;
    mUserName = formatName(paramString2, paramString3, "");
    mFriendCount = paramInt1;
    mReviewCount = paramInt2;
    paramString1 = new ArrayList();
    paramString1.add(new Photo.TempPhoto(paramString4, null));
    mPhotos = paramString1;
    mGender = User.Gender.MALE;
    mFormat = -1;
    mFirstName = paramString2;
    mLastName = paramString3;
    if (!TextUtils.isEmpty(mLastName)) {
      mLastInitial = String.valueOf(mLastName.charAt(0));
    }
    mIsElite = paramBoolean;
  }
  
  public static String formatName(String paramString1, String paramString2, String paramString3)
  {
    String str = paramString3;
    if (TextUtils.isEmpty(paramString3))
    {
      str = paramString3;
      if (!TextUtils.isEmpty(paramString2)) {
        str = String.valueOf(paramString2.charAt(0));
      }
    }
    if (TextUtils.isEmpty(str)) {
      return paramString1;
    }
    return String.format("%s %s.", new Object[] { paramString1, str });
  }
  
  public static <T extends DisplayableAsUserBadge> T getCurrentUserInCollection(List<T> paramList)
  {
    String str = AppData.b().m().b();
    if (TextUtils.isEmpty(str)) {
      return null;
    }
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      DisplayableAsUserBadge localDisplayableAsUserBadge = (DisplayableAsUserBadge)paramList.next();
      if (str.equals(localDisplayableAsUserBadge.getUserId())) {
        return localDisplayableAsUserBadge;
      }
    }
    return null;
  }
  
  public static String getNameWithoutPeriod(String paramString1, String paramString2)
  {
    return String.format("%s %s", new Object[] { paramString1, paramString2 });
  }
  
  public static int getRankNameResource(RankTitle.Rank paramRank, Boolean paramBoolean)
  {
    if (paramBoolean.booleanValue()) {
      switch (dl.a[paramRank.ordinal()])
      {
      }
    }
    for (;;)
    {
      return 0;
      return 2131166737;
      return 2131166739;
      return 2131166741;
      switch (dl.a[paramRank.ordinal()])
      {
      }
    }
    return 2131166736;
    return 2131166738;
    return 2131166740;
  }
  
  public static HashMap<String, User> jsonUsersToMap(JSONArray paramJSONArray)
  {
    int j = paramJSONArray.length();
    HashMap localHashMap = new HashMap(j);
    int i = 0;
    while (i < j)
    {
      User localUser = (User)CREATOR.parse(paramJSONArray.getJSONObject(i));
      localHashMap.put(localUser.getId(), localUser);
      i += 1;
    }
    return localHashMap;
  }
  
  public void addComplimentCount(int paramInt)
  {
    mComplimentCount += paramInt;
  }
  
  public void addFriendCount(int paramInt)
  {
    mFriendCount += paramInt;
  }
  
  public void addPhotoCount(int paramInt)
  {
    mLocalPhotoCount += paramInt;
  }
  
  public void addReviewCount(int paramInt)
  {
    mReviewCount += paramInt;
  }
  
  public void addVideoCount(int paramInt)
  {
    mVideoCount += paramInt;
  }
  
  public void clearCheckIn()
  {
    mCheckIn = null;
  }
  
  public int describeContents()
  {
    return 0;
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
        if (!(paramObject instanceof User)) {
          return false;
        }
        paramObject = (User)paramObject;
        if (mId != null) {
          break;
        }
      } while (mId == null);
      return false;
    } while (mId.equals(mId));
    return false;
  }
  
  public YelpCheckIn getCheckIn()
  {
    return mCheckIn;
  }
  
  public String getFullName()
  {
    if (mLastName != null) {
      return String.format("%s %s", new Object[] { mFirstName, mLastName });
    }
    return getName();
  }
  
  public User.Gender getGender()
  {
    return mGender;
  }
  
  public int getLocationCount(RankTitle.Rank paramRank)
  {
    paramRank = getRankTitle(paramRank);
    if (paramRank == null) {
      return 0;
    }
    return paramRank.getLocationCount();
  }
  
  public int getMediaCount()
  {
    return mLocalPhotoCount + mVideoCount;
  }
  
  public Date getMemberSince()
  {
    return mMemberSince;
  }
  
  public User.EliteYear getMostRecentEliteYear()
  {
    if (mYearsElite.length == 0) {
      return null;
    }
    return (User.EliteYear)Collections.max(Arrays.asList(mYearsElite));
  }
  
  public String getName()
  {
    if (mUserName == null) {
      mUserName = formatName(mFirstName, mLastName, mLastInitial);
    }
    return mUserName;
  }
  
  public String getNameWithoutPeriod()
  {
    return getNameWithoutPeriod(mFirstName, mLastInitial);
  }
  
  public int getPhotoCount()
  {
    return mLocalPhotoCount;
  }
  
  public Map<String, String> getProfileBio()
  {
    return mProfileBio;
  }
  
  public int getRankNameResource(RankTitle.Rank paramRank)
  {
    return paramRank.getRankNameResource(Boolean.valueOf(isMale()));
  }
  
  public RankTitle getRankTitle(RankTitle.Rank paramRank)
  {
    return mRankTitles[paramRank.ordinal()];
  }
  
  public int getRegularCount()
  {
    return getLocationCount(RankTitle.Rank.REGULAR);
  }
  
  public int getTopRegularCount()
  {
    return getLocationCount(RankTitle.Rank.TOP_USER);
  }
  
  public String getUserId()
  {
    return mId;
  }
  
  public String getUserName()
  {
    return getName();
  }
  
  public String getUserPhotoUrl()
  {
    if ((mPhotos != null) && (mPhotos.size() > 0)) {
      return ((Photo)mPhotos.get(0)).getThumbnailUrl();
    }
    return null;
  }
  
  public List<User.EliteYear> getYearsElite()
  {
    return Arrays.asList(mYearsElite);
  }
  
  public int hashCode()
  {
    if (mId == null) {}
    for (int i = 0;; i = mId.hashCode()) {
      return i + 31;
    }
  }
  
  public boolean isEliteUser()
  {
    return mIsElite;
  }
  
  public boolean isFeatureDisabled(FeatureSet.Feature paramFeature)
  {
    return mDisabledFeatureSet.contains(paramFeature);
  }
  
  public boolean isFullUser()
  {
    return mFormat == 0;
  }
  
  public boolean isMale()
  {
    return mGender == User.Gender.MALE;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    super.readFromJson(paramJSONObject);
    Object localObject1 = mPhotos.iterator();
    Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Photo)((Iterator)localObject1).next();
      mUserPassport = new Passport();
      mUserPassport.mId = mId;
    }
    localObject1 = paramJSONObject.optJSONArray("location_rank_titles");
    int j;
    int i;
    Object localObject3;
    if (localObject1 != null)
    {
      j = ((JSONArray)localObject1).length();
      i = 0;
      if (i < j)
      {
        localObject3 = ((JSONArray)localObject1).optJSONObject(i);
        if (localObject3 != null)
        {
          localObject2 = RankTitle.Rank.rankForString(((JSONObject)localObject3).optString("title", null));
          if (localObject2 != null) {
            break label131;
          }
        }
        for (;;)
        {
          i += 1;
          break;
          label131:
          localObject3 = new RankTitle(JsonUtil.getStringList(((JSONObject)localObject3).optJSONArray("location_names")), ((JSONObject)localObject3).optInt("location_count", 0));
          mRankTitles[localObject2.ordinal()] = localObject3;
        }
      }
    }
    if ("f".equalsIgnoreCase(mGenderString)) {
      mGender = User.Gender.FEMALE;
    }
    while (!paramJSONObject.isNull("profile_bio"))
    {
      mProfileBio = new HashMap();
      paramJSONObject = paramJSONObject.getJSONObject("profile_bio");
      localObject1 = paramJSONObject.keys();
      for (;;)
      {
        if (((Iterator)localObject1).hasNext())
        {
          localObject2 = (String)((Iterator)localObject1).next();
          localObject3 = paramJSONObject.getString((String)localObject2);
          mProfileBio.put(localObject2, localObject3);
          continue;
          mGender = User.Gender.MALE;
          break;
        }
      }
      if ((mLoves != null) && (!mLoves.isEmpty())) {
        mProfileBio.put(AppData.b().getString(2131166697), mLoves.get(0));
      }
      if (!mProfileBio.isEmpty()) {
        mProfileBio = Collections.unmodifiableMap(mProfileBio);
      }
    }
    paramJSONObject = getEliteYears();
    if (paramJSONObject != null)
    {
      Arrays.sort(paramJSONObject);
      mYearsElite = new User.EliteYear[paramJSONObject.length];
      j = paramJSONObject.length;
      i = 0;
      while (i < j)
      {
        mYearsElite[i] = new User.EliteYear(paramJSONObject[i], User.EliteYear.TYPE.getBadgeByYear(i + 1));
        i += 1;
      }
      mIsElite = r.a(getEliteYears());
    }
    mDisabledFeatureSet.setFeatures(mDisabledFeatures);
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    super.readFromParcel(paramParcel);
    mRankTitles = ((RankTitle[])paramParcel.createTypedArray(RankTitle.CREATOR));
    mGender = User.Gender.values()[paramParcel.readInt()];
    mCheckIn = ((YelpCheckIn)paramParcel.readParcelable(YelpCheckIn.class.getClassLoader()));
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    paramParcel.readStringList(localArrayList1);
    paramParcel.readStringList(localArrayList2);
    mProfileBio = Collections.emptyMap();
    int j = localArrayList1.size();
    int i = 0;
    while (i < j)
    {
      if (mProfileBio.isEmpty()) {
        mProfileBio = new HashMap();
      }
      mProfileBio.put(localArrayList1.get(i), localArrayList2.get(i));
      i += 1;
    }
    if (!mProfileBio.isEmpty()) {
      mProfileBio = Collections.unmodifiableMap(mProfileBio);
    }
    mYearsElite = ((User.EliteYear[])paramParcel.createTypedArray(User.EliteYear.CREATOR));
    mDisabledFeatureSet = ((FeatureSet)paramParcel.readParcelable(FeatureSet.class.getClassLoader()));
    mIsElite = paramParcel.createBooleanArray()[0];
  }
  
  public void setCheckIn(YelpCheckIn paramYelpCheckIn)
  {
    mCheckIn = paramYelpCheckIn;
    if (paramYelpCheckIn != null) {
      paramYelpCheckIn.clearUser();
    }
  }
  
  public void setDisabledFeatures(List<String> paramList)
  {
    mDisabledFeatures = paramList;
    mDisabledFeatureSet.setFeatures(paramList);
  }
  
  public void setFriendRequestPending(boolean paramBoolean)
  {
    mIsFriendRequestPending = paramBoolean;
  }
  
  public void setPhoto(Photo paramPhoto)
  {
    if ((mPhotos == null) || (!(mPhotos instanceof ArrayList))) {
      mPhotos = new ArrayList();
    }
    mPhotos.clear();
    mPhotos.add(paramPhoto);
  }
  
  public void setSendingNotifications(boolean paramBoolean)
  {
    mIsSendingNotifications = paramBoolean;
  }
  
  public void setUnreadMessageCount(int paramInt)
  {
    mUnreadMessageCount = paramInt;
  }
  
  public void setUserPhotoCount(int paramInt)
  {
    mUserPhotoCount = paramInt;
  }
  
  public void setUserReviewCount(int paramInt)
  {
    mReviewCount = paramInt;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeTypedArray(mRankTitles, 0);
    paramParcel.writeInt(mGender.ordinal());
    paramParcel.writeParcelable(mCheckIn, paramInt);
    ArrayList localArrayList1 = new ArrayList(mProfileBio.keySet());
    ArrayList localArrayList2 = new ArrayList(mProfileBio.values());
    paramParcel.writeStringList(localArrayList1);
    paramParcel.writeStringList(localArrayList2);
    paramParcel.writeTypedArray(mYearsElite, paramInt);
    paramParcel.writeParcelable(mDisabledFeatureSet, paramInt);
    paramParcel.writeBooleanArray(new boolean[] { mIsElite });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.User
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */