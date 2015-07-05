package com.yelp.android.ui.activities.photoviewer;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.PhotoFeedback;
import java.util.ArrayList;
import java.util.List;

class as
  implements m<List<PhotoFeedback>>
{
  as(WhoLikedThisBizPhotoFragment paramWhoLikedThisBizPhotoFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<PhotoFeedback> paramList)
  {
    WhoLikedThisBizPhotoFragment.a(a, new ArrayList(paramList));
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    WhoLikedThisBizPhotoFragment.a(a, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */