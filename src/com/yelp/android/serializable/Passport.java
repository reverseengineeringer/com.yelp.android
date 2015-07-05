package com.yelp.android.serializable;

import android.content.res.Resources;
import android.os.Parcel;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

public class Passport
  extends _Passport
{
  public static final JsonParser.DualCreator<Passport> CREATOR = new br();
  private FeatureSet mDisabledFeatureSet = new FeatureSet();
  private String mProfilePhotoPlaceholder;
  
  @Deprecated
  protected static Passport fromLoginManager(dc paramdc)
  {
    Passport localPassport = new Passport();
    mId = paramdc.b();
    mProfilePhotoPlaceholder = paramdc.v();
    return localPassport;
  }
  
  public static String getMediaQuantityString(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, Resources paramResources)
  {
    if (!paramBoolean) {
      return Integer.toString(paramInt3);
    }
    if (paramInt2 == 0) {
      return paramResources.getQuantityString(2131623965, paramInt1, new Object[] { Integer.valueOf(paramInt1) });
    }
    if ((paramInt1 == 0) && (paramInt2 > 0)) {
      return paramResources.getQuantityString(2131623983, paramInt2, new Object[] { Integer.valueOf(paramInt2) });
    }
    return paramResources.getString(2131166304, new Object[] { Integer.valueOf(paramInt3) });
  }
  
  public static String getMediaQuantityString(boolean paramBoolean, DisplayableAsUserBadge paramDisplayableAsUserBadge, Resources paramResources)
  {
    return getMediaQuantityString(paramBoolean, paramDisplayableAsUserBadge.getPhotoCount(), paramDisplayableAsUserBadge.getVideoCount(), paramDisplayableAsUserBadge.getMediaCount(), paramResources);
  }
  
  public static String getMediaQuantityString(boolean paramBoolean, YelpBusinessReview paramYelpBusinessReview, Resources paramResources)
  {
    return getMediaQuantityString(paramBoolean, paramYelpBusinessReview.getUserPhotoCount(), paramYelpBusinessReview.getUserVideoCount(), paramYelpBusinessReview.getUserMediaCount(), paramResources);
  }
  
  public int getMediaCount()
  {
    return getVideoCount() + getPhotoCount();
  }
  
  public String getProfileThumbnail()
  {
    if (getProfilePhoto() != null) {
      return getProfilePhoto().getThumbnailUrl();
    }
    return mProfilePhotoPlaceholder;
  }
  
  public boolean isFeatureDisabled(FeatureSet.Feature paramFeature)
  {
    return mDisabledFeatureSet.contains(paramFeature);
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    super.readFromJson(paramJSONObject);
    mDisabledFeatureSet.setFeatures(mDisabledFeatures);
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    super.readFromParcel(paramParcel);
    mDisabledFeatureSet = ((FeatureSet)paramParcel.readParcelable(FeatureSet.class.getClassLoader()));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeParcelable(mDisabledFeatureSet, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Passport
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */