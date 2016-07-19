package com.yelp.android.ui.activities.photoviewer;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.BusinessLocalAd;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.PhotoAdsResponse;
import com.yelp.android.ui.util.t;
import com.yelp.android.ui.util.u.a;

class ActivityBusinessMediaViewer$1
  implements ApiRequest.b<PhotoAdsResponse>
{
  ActivityBusinessMediaViewer$1(ActivityBusinessMediaViewer paramActivityBusinessMediaViewer) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, PhotoAdsResponse paramPhotoAdsResponse)
  {
    ActivityBusinessMediaViewer.a(a, paramPhotoAdsResponse);
    if (paramPhotoAdsResponse.c() != null) {
      t.a(a).a(paramPhotoAdsResponse.c().n().s()).a();
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.ActivityBusinessMediaViewer.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */