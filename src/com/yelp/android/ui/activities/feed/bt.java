package com.yelp.android.ui.activities.feed;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.BusinessInfoProviderFeedEntry;
import com.yelp.android.serializable.User;
import com.yelp.android.util.ErrorType;
import java.util.List;

class bt
  implements m<List<BusinessInfoProviderFeedEntry>>
{
  bt(UserReviewsFragment paramUserReviewsFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<BusinessInfoProviderFeedEntry> paramList)
  {
    if (a.r() == null) {
      if (!AppData.b().m().a(UserReviewsFragment.a(a).getUserId())) {
        break label53;
      }
    }
    label53:
    for (paramApiRequest = FeedType.ME;; paramApiRequest = FeedType.USER)
    {
      a.a(paramApiRequest);
      UserReviewsFragment.a(a, paramList);
      return;
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.a(ErrorType.getTypeFromException(paramYelpException));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.bt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */