package com.yelp.android.ui.activities.photoviewer;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.VideoFeedback;
import java.util.ArrayList;
import java.util.List;

class at
  implements m<List<VideoFeedback>>
{
  at(WhoLikedThisBizPhotoFragment paramWhoLikedThisBizPhotoFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<VideoFeedback> paramList)
  {
    WhoLikedThisBizPhotoFragment.a(a, new ArrayList(paramList));
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    WhoLikedThisBizPhotoFragment.a(a, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */