package com.yelp.android.ui.activities.profile;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.BusinessInfoProviderFeedEntry;
import com.yelp.android.serializable.User;
import java.util.List;

class b
  implements m<List<BusinessInfoProviderFeedEntry>>
{
  b(ActivityFirstAwards paramActivityFirstAwards) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<BusinessInfoProviderFeedEntry> paramList)
  {
    if ((paramList == null) || (paramList.isEmpty())) {
      ActivityFirstAwards.a(a, ActivityFirstAwards.a(a).getFirstToTipCount());
    }
    for (;;)
    {
      ActivityFirstAwards.a(a, paramList);
      return;
      ActivityFirstAwards.b(a, paramList.size());
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.populateError(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */