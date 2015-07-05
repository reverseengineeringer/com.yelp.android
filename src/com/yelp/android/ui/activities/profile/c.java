package com.yelp.android.ui.activities.profile;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.BusinessInfoProviderFeedEntry;
import com.yelp.android.serializable.User;
import java.util.List;

class c
  implements m<List<BusinessInfoProviderFeedEntry>>
{
  c(ActivityFirstAwards paramActivityFirstAwards) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<BusinessInfoProviderFeedEntry> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {
      ActivityFirstAwards.c(a, ActivityFirstAwards.a(a).getFirstToReviewCount());
    }
    for (;;)
    {
      ActivityFirstAwards.a(a, paramList);
      return;
      ActivityFirstAwards.d(a, paramList.size());
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.populateError(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */