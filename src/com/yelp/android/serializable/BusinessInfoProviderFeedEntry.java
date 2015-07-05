package com.yelp.android.serializable;

import android.os.Parcel;
import com.google.android.gms.maps.model.LatLng;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.ui.activities.feed.FeedType;
import org.json.JSONObject;

public abstract class BusinessInfoProviderFeedEntry
  extends FeedEntry
{
  public BusinessInfoProviderFeedEntry() {}
  
  public BusinessInfoProviderFeedEntry(Parcel paramParcel)
  {
    super(paramParcel);
  }
  
  public BusinessInfoProviderFeedEntry(JSONObject paramJSONObject, ApiRequest<?, ?, ?> paramApiRequest)
  {
    super(paramJSONObject, paramApiRequest);
  }
  
  public String getBusinessCountry()
  {
    if (mBusiness != null) {
      return mBusiness.getCountry();
    }
    return null;
  }
  
  public String getBusinessId()
  {
    if (mBusiness != null) {
      return mBusiness.getId();
    }
    return getInfoProvider().getBusinessId();
  }
  
  public String getBusinessName()
  {
    if (mBusiness != null) {
      return mBusiness.getDisplayName();
    }
    return getInfoProvider().getBusinessName();
  }
  
  public abstract m getInfoProvider();
  
  public LatLng getLocation()
  {
    if (mBusiness != null) {
      return mBusiness.getLatLng();
    }
    return null;
  }
  
  public String getPhotoURL(FeedType paramFeedType)
  {
    if (mBusiness != null) {
      return mBusiness.getPhotoUrl();
    }
    return getInfoProvider().getBusinessPhotoUrl();
  }
  
  public String getTitle()
  {
    return getBusinessName();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.BusinessInfoProviderFeedEntry
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */