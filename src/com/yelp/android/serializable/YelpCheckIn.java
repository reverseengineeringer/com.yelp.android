package com.yelp.android.serializable;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.maps.model.LatLng;
import com.yelp.android.av.g;
import com.yelp.android.ui.activities.ActivityBadge;
import com.yelp.android.ui.activities.ActivityRoyal;
import com.yelp.android.util.StringUtils;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class YelpCheckIn
  extends _YelpCheckIn
  implements Parcelable, CheckIn, DisplayableAsUserBadge, by
{
  public static final JsonParser.DualCreator<YelpCheckIn> CREATOR = new ee();
  private Feedback mFeedback = new Feedback(Collections.emptyList(), 0);
  private boolean mIsOfferAwarded;
  private RankTitle.Rank mLocationRankTitle;
  private List<YelpCheckIn.TitleLocation> mNewRankTitles;
  
  public static YelpCheckIn checkInFromJSONResponse(JSONObject paramJSONObject, g<?, ?, ?> paramg)
  {
    YelpCheckIn localYelpCheckIn = (YelpCheckIn)CREATOR.parse(paramJSONObject.getJSONObject("check_in"));
    mIsOfferAwarded = paramJSONObject.optBoolean("check_in_offer_awarded");
    if (!paramJSONObject.isNull("business"))
    {
      mBusiness = ((YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business")));
      mBusiness.setYelpRequestId(paramg.getRequestId());
    }
    int i;
    if (!paramJSONObject.isNull("new_badges"))
    {
      mNewBadges = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("new_badges"), Badge.CREATOR);
      paramg = paramJSONObject.optJSONObject("stats");
      if (paramg == null) {
        break label323;
      }
      mUserCount = paramg.optInt("user_count");
      mTotalCount = paramg.optInt("total_count");
      mWeekCount = paramg.optInt("week_count");
      mLocationRank = paramg.optInt("location_rank");
      mFriendRank = paramg.optInt("friend_rank");
      mFriendActiveCount = paramg.optInt("friend_active_count");
      mRegularRank = paramg.optInt("regular_rank");
      paramg = paramg.optJSONArray("new_location_rank_titles");
      if (paramg != null)
      {
        mNewRankTitles = new ArrayList();
        i = 1;
      }
    }
    else
    {
      for (;;)
      {
        if (i > paramg.length()) {
          break label323;
        }
        JSONArray localJSONArray = paramg.getJSONObject(paramg.length() - i).getJSONArray("location_names");
        RankTitle.Rank localRank = RankTitle.Rank.rankForString(paramg.getJSONObject(paramg.length() - i).getString("title"));
        int j = 0;
        for (;;)
        {
          if (j < localJSONArray.length())
          {
            mNewRankTitles.add(new YelpCheckIn.TitleLocation(localRank, localJSONArray.getString(j)));
            j += 1;
            continue;
            mNewBadges = Collections.emptyList();
            break;
          }
        }
        i += 1;
      }
    }
    mNewRankTitles = Collections.emptyList();
    label323:
    if (!paramJSONObject.isNull("survey_questions")) {
      mSurveyQuestions = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("survey_questions"), SurveyQuestion.CREATOR);
    }
    mContributionTypeString = paramJSONObject.optString("contribution_type");
    return localYelpCheckIn;
  }
  
  public static ArrayList<YelpCheckIn> checkInsFromJSONArray(JSONArray paramJSONArray, Map<String, YelpBusiness> paramMap)
  {
    paramJSONArray = JsonUtil.parseJsonList(paramJSONArray, CREATOR);
    Iterator localIterator = paramJSONArray.iterator();
    while (localIterator.hasNext())
    {
      YelpCheckIn localYelpCheckIn = (YelpCheckIn)localIterator.next();
      if ((paramMap != null) && (paramMap.containsKey(localYelpCheckIn.getBusinessId()))) {
        mBusiness = ((YelpBusiness)paramMap.get(localYelpCheckIn.getBusinessId()));
      }
    }
    return paramJSONArray;
  }
  
  private static boolean shouldShowRegular(List<YelpCheckIn.TitleLocation> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      if (YelpCheckIn.TitleLocation.access$000((YelpCheckIn.TitleLocation)paramList.next()).greaterThan(RankTitle.Rank.REGULAR)) {
        return false;
      }
    }
    return true;
  }
  
  public void clearUser()
  {
    mUser = null;
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
        if (!(paramObject instanceof YelpCheckIn)) {
          return false;
        }
        paramObject = (YelpCheckIn)paramObject;
        if (mId != null) {
          break;
        }
      } while (mId == null);
      return false;
    } while (mId.equals(mId));
    return false;
  }
  
  public String getAppName()
  {
    return null;
  }
  
  public String getBusinessId()
  {
    if (mBusiness != null) {
      return mBusiness.getId();
    }
    return mBusinessId;
  }
  
  public String getBusinessName()
  {
    if (mBusiness != null) {
      return mBusiness.getDisplayName();
    }
    return mBusinessName;
  }
  
  public CharSequence getCommentCountLikeCountText(Context paramContext)
  {
    int j = getCommentsCount();
    int k = getFeedback().getPositiveFeedbackCount();
    int i = j;
    if (getPrimaryComment() != null) {
      i = j - 1;
    }
    String str1 = "";
    String str2;
    if (i <= 0)
    {
      str2 = str1;
      if (k <= 0) {}
    }
    else
    {
      str2 = null;
      if (k > 0) {
        str1 = StringUtils.a(paramContext, 2131624003, k, new Object[] { Boolean.valueOf(true) });
      }
      if (i > 0)
      {
        str1 = StringUtils.a(paramContext, 2131623987, i, new Object[] { Boolean.valueOf(true) });
        str2 = str1;
      }
      if ((i > 0) && (k > 0))
      {
        str1 = StringUtils.a(paramContext, 2131623995, k, new Object[] { Boolean.valueOf(true) });
        return paramContext.getResources().getString(2131166551, new Object[] { str2.toString(), str1.toString() });
      }
      str2 = str1;
      if (k == 1)
      {
        str2 = str1;
        if (getFeedback().isLikedByUser()) {
          return paramContext.getText(2131166917);
        }
      }
    }
    return str2;
  }
  
  public YelpCheckIn.ContributionType getContributionType()
  {
    String str = getContributionTypeString();
    if (str.equals("review")) {
      return YelpCheckIn.ContributionType.REVIEW;
    }
    if (str.equals("video")) {
      return YelpCheckIn.ContributionType.PHOTO_OR_VIDEO;
    }
    return YelpCheckIn.ContributionType.TIP;
  }
  
  public String getContributionTypeString()
  {
    if (TextUtils.isEmpty(mContributionTypeString)) {
      return "tip";
    }
    return mContributionTypeString;
  }
  
  public Feedback getFeedback()
  {
    return mFeedback;
  }
  
  public int getFriendCount()
  {
    return mUser.getFriendCount();
  }
  
  public LatLng getLatLng()
  {
    return getBusiness().getLatLng();
  }
  
  public RankTitle.Rank getLocationRankTitle()
  {
    return mLocationRankTitle;
  }
  
  public int getMediaCount()
  {
    return mUser.getMediaCount();
  }
  
  public List<YelpCheckIn.TitleLocation> getNewLocationTitles()
  {
    if (mNewRankTitles == null) {
      return Collections.emptyList();
    }
    return mNewRankTitles;
  }
  
  public RankTitle.Rank getNewestBelow(RankTitle.Rank paramRank)
  {
    RankTitle.Rank localRank = RankTitle.Rank.USER;
    Iterator localIterator = mNewRankTitles.iterator();
    if (localIterator.hasNext())
    {
      YelpCheckIn.TitleLocation localTitleLocation = (YelpCheckIn.TitleLocation)localIterator.next();
      if ((!localTitleLocation.getRank().greaterThan(localRank)) || (!localTitleLocation.getRank().lessThan(paramRank))) {
        break label69;
      }
      localRank = localTitleLocation.getRank();
    }
    label69:
    for (;;)
    {
      break;
      return localRank;
    }
  }
  
  public ArrayList<Intent> getNotificationsList(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = mNewBadges.iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(ActivityBadge.a(paramContext, (Badge)localIterator.next(), true));
    }
    localIterator = mNewRankTitles.iterator();
    while (localIterator.hasNext())
    {
      YelpCheckIn.TitleLocation localTitleLocation = (YelpCheckIn.TitleLocation)localIterator.next();
      RankTitle.Rank localRank = YelpCheckIn.TitleLocation.access$000(localTitleLocation);
      if ((localRank.greaterThan(RankTitle.Rank.USER)) && ((localRank != RankTitle.Rank.REGULAR) || (shouldShowRegular(mNewRankTitles)))) {
        localArrayList.add(ActivityRoyal.a(paramContext, localRank, localTitleLocation.getLocation()));
      }
    }
    return localArrayList;
  }
  
  public int getPhotoCount()
  {
    return mUser.getLocalPhotoCount();
  }
  
  public int getReviewCount()
  {
    return mUser.getReviewCount();
  }
  
  public String getTip()
  {
    return super.getTip();
  }
  
  public String getUserId()
  {
    if (mUser != null) {
      return mUser.getId();
    }
    return mUserId;
  }
  
  public String getUserName()
  {
    return mUser.getName();
  }
  
  public String getUserPhotoUrl()
  {
    return mUser.getUserPhotoUrl();
  }
  
  public int getVideoCount()
  {
    return mUser.getVideoCount();
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
    return mUser.isEliteUser();
  }
  
  public boolean isOfferAwarded()
  {
    return mIsOfferAwarded;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    super.readFromJson(paramJSONObject);
    mLocationRankTitle = RankTitle.Rank.USER;
    if (!paramJSONObject.isNull("location_rank_title")) {
      mLocationRankTitle = RankTitle.Rank.rankForString(paramJSONObject.optString("location_rank_title", RankTitle.Rank.USER.name()));
    }
    for (;;)
    {
      mFeedback = new Feedback(mPrivateFeedback, mPositiveFeedback);
      return;
      if (!paramJSONObject.isNull("rank_title")) {
        mLocationRankTitle = RankTitle.Rank.rankForString(paramJSONObject.optString("rank_title", RankTitle.Rank.USER.name()));
      }
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    super.readFromParcel(paramParcel);
    mLocationRankTitle = RankTitle.Rank.values()[paramParcel.readInt()];
    mNewRankTitles = paramParcel.createTypedArrayList(YelpCheckIn.TitleLocation.CREATOR);
    mFeedback = ((Feedback)paramParcel.readParcelable(Feedback.class.getClassLoader()));
    if (paramParcel.readInt() == 1) {}
    for (boolean bool = true;; bool = false)
    {
      mIsOfferAwarded = bool;
      return;
    }
  }
  
  public void setFeedback(Feedback paramFeedback)
  {
    mFeedback = paramFeedback;
    mPrivateFeedback = mFeedback.getFeedbackByUser();
    mPositiveFeedback = mFeedback.getPositiveFeedbackCount();
  }
  
  public void updateCommentCount(int paramInt)
  {
    mCommentsCount = paramInt;
  }
  
  public void updateUser(User paramUser)
  {
    mUser = paramUser;
    mUser.clearCheckIn();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(mLocationRankTitle.ordinal());
    paramParcel.writeTypedList(mNewRankTitles);
    paramParcel.writeParcelable(mFeedback, paramInt);
    if (mIsOfferAwarded) {}
    for (paramInt = 1;; paramInt = 0)
    {
      paramParcel.writeInt(paramInt);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.YelpCheckIn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */