package com.yelp.android.ui.activities;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Badge;

class d
  implements m<Badge>
{
  d(ActivityBadge paramActivityBadge) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Badge paramBadge)
  {
    a.hideLoadingDialog();
    a.a(paramBadge);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.hideLoadingDialog();
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */