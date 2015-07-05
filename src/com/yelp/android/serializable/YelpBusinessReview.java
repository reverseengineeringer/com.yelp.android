package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.services.r;
import com.yelp.android.ui.util.cr;
import com.yelp.android.util.o;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import org.json.JSONObject;

public class YelpBusinessReview
  extends _YelpBusinessReview
  implements Complimentable, m
{
  public static final ah<YelpBusinessReview> CREATOR = new ea();
  private List<IdentifiableMedia> mAttachedMedia;
  private FeatureSet mDisabledFeatureSet = new FeatureSet();
  private boolean mDisplayTranslatedText = false;
  private YelpBusinessReview.ReviewFeedback mFeedback = new YelpBusinessReview.ReviewFeedback(0, 0, 0);
  private boolean mIsUserElite = false;
  private Locale mLocale = null;
  private YelpBusinessReview.UserFeedback mUserFeedback = new YelpBusinessReview.UserFeedback(false, false, false);
  
  public static Locale readLocaleFromParcel(Parcel paramParcel)
  {
    String str = paramParcel.readString();
    if (str == null) {
      return null;
    }
    return new Locale(str, paramParcel.readString(), paramParcel.readString());
  }
  
  private List<IdentifiableMedia> setupAttachedMediaSorted()
  {
    mAttachedMedia = new ArrayList();
    mAttachedMedia.addAll(mPhotos);
    mAttachedMedia.addAll(mVideos);
    Collections.sort(mAttachedMedia, new dz(this));
    return mAttachedMedia;
  }
  
  public static void writeLocaleToParcel(Parcel paramParcel, Locale paramLocale)
  {
    if (paramLocale == null)
    {
      paramParcel.writeString(null);
      return;
    }
    paramParcel.writeString(paramLocale.getLanguage());
    paramParcel.writeString(paramLocale.getCountry());
    paramParcel.writeString(paramLocale.getVariant());
  }
  
  public boolean arePhotosPopulated()
  {
    return getPhotos() != Collections.EMPTY_LIST;
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
        if (!(paramObject instanceof YelpBusinessReview)) {
          return false;
        }
        paramObject = (YelpBusinessReview)paramObject;
        if (mId != null) {
          break;
        }
      } while (mId == null);
      return false;
    } while (mId.equals(mId));
    return false;
  }
  
  public int getAttachedMediaCount()
  {
    return mPhotos.size() + mVideos.size();
  }
  
  public List<IdentifiableMedia> getAttachedMediaSorted()
  {
    if (mAttachedMedia == null) {
      setupAttachedMediaSorted();
    }
    return mAttachedMedia;
  }
  
  public int getAttachedPhotoCount()
  {
    return mPhotos.size();
  }
  
  public int getAttachedVideoCount()
  {
    return mVideos.size();
  }
  
  public YelpBusinessReview.ReviewFeedback getFeedback()
  {
    return mFeedback;
  }
  
  public Locale getLocale()
  {
    return mLocale;
  }
  
  public Compliment.ComplimentableItemType getType()
  {
    return Compliment.ComplimentableItemType.REVIEW;
  }
  
  public YelpBusinessReview.UserFeedback getUserFeedback()
  {
    return mUserFeedback;
  }
  
  public RankTitle.Rank getUserLocationRank()
  {
    return RankTitle.Rank.rankForString(getUserRankTitleText());
  }
  
  public int getUserMediaCount()
  {
    return getUserVideoCount() + getUserPhotoCount();
  }
  
  public int hashCode()
  {
    if (mId == null) {}
    for (int i = 0;; i = mId.hashCode()) {
      return i + 31;
    }
  }
  
  public boolean isFeatureDisabled(FeatureSet.Feature paramFeature)
  {
    return mDisabledFeatureSet.contains(paramFeature);
  }
  
  public boolean isUpdatableByCurrentUser()
  {
    return (AppData.b().m().a(mUserId)) && (getUpdatableAfter() < o.f(System.currentTimeMillis()));
  }
  
  public boolean isUserElite()
  {
    return mIsUserElite;
  }
  
  public void populateDataFromUser(User paramUser)
  {
    mUserFriendCount = paramUser.getFriendCount();
    mUserReviewCount = paramUser.getReviewCount();
    mIsUserElite = paramUser.isEliteUser();
    mUserId = paramUser.getId();
    mUserName = paramUser.getName();
    mUserPhotoUrl = paramUser.getUserPhotoUrl();
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    super.readFromJson(paramJSONObject);
    JSONObject localJSONObject = paramJSONObject.optJSONObject("feedback");
    if (localJSONObject != null) {
      mFeedback = new YelpBusinessReview.ReviewFeedback(Math.max(0, localJSONObject.optInt("useful")), Math.max(0, localJSONObject.optInt("funny")), Math.max(0, localJSONObject.optInt("cool")));
    }
    paramJSONObject = paramJSONObject.optJSONObject("user_feedback");
    if (paramJSONObject != null) {
      mUserFeedback = new YelpBusinessReview.UserFeedback(paramJSONObject.optBoolean("useful"), paramJSONObject.optBoolean("funny"), paramJSONObject.optBoolean("cool"));
    }
    mIsUserElite = r.a(getUserEliteYears());
    mDisabledFeatureSet.setFeatures(mUserDisabledFeatures);
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    super.readFromParcel(paramParcel);
    mFeedback = ((YelpBusinessReview.ReviewFeedback)YelpBusinessReview.ReviewFeedback.CREATOR.createFromParcel(paramParcel));
    mUserFeedback = ((YelpBusinessReview.UserFeedback)YelpBusinessReview.UserFeedback.CREATOR.createFromParcel(paramParcel));
    mDisabledFeatureSet = ((FeatureSet)paramParcel.readParcelable(FeatureSet.class.getClassLoader()));
    mLocale = readLocaleFromParcel(paramParcel);
    paramParcel = paramParcel.createBooleanArray();
    mDisplayTranslatedText = paramParcel[0];
    mIsUserElite = paramParcel[1];
  }
  
  public void setDateModified(Date paramDate)
  {
    mDateModified = paramDate;
  }
  
  public void setDisplayTranslatedText(boolean paramBoolean)
  {
    mDisplayTranslatedText = paramBoolean;
  }
  
  public void setFeedback(YelpBusinessReview.ReviewFeedback paramReviewFeedback)
  {
    mFeedback = paramReviewFeedback;
  }
  
  public void setFirstToReview(boolean paramBoolean)
  {
    mIsFirstReview = paramBoolean;
  }
  
  public void setLocale(Locale paramLocale)
  {
    mLocale = paramLocale;
  }
  
  public void setText(String paramString)
  {
    mText = paramString;
  }
  
  public void setTranslatedText(String paramString)
  {
    mTranslatedText = paramString;
  }
  
  public void setUserFeedback(YelpBusinessReview.UserFeedback paramUserFeedback)
  {
    mUserFeedback = paramUserFeedback;
  }
  
  public boolean shouldDisplayTranslation()
  {
    return mDisplayTranslatedText;
  }
  
  public void updatePhoto(Photo paramPhoto)
  {
    if (arePhotosPopulated())
    {
      int i = cr.a(mPhotos, paramPhoto);
      if (i >= 0) {
        mPhotos.set(i, paramPhoto);
      }
    }
  }
  
  public JSONObject writeJSON()
  {
    JSONObject localJSONObject = super.writeJSON();
    if (mUserFeedback != null) {
      localJSONObject.put("user_feedback", mUserFeedback.writeJSON());
    }
    if (mFeedback != null) {
      localJSONObject.put("feedback", mFeedback.writeJSON());
    }
    return localJSONObject;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    mFeedback.writeToParcel(paramParcel, 0);
    mUserFeedback.writeToParcel(paramParcel, 0);
    paramParcel.writeParcelable(mDisabledFeatureSet, paramInt);
    writeLocaleToParcel(paramParcel, mLocale);
    paramParcel.writeBooleanArray(new boolean[] { mDisplayTranslatedText, mIsUserElite });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.YelpBusinessReview
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */