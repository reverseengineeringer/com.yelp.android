package com.yelp.android.ui.activities.businesspage;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dm;
import com.yelp.android.appdata.webrequests.m;

class bi
  implements m<dm>
{
  bi(BusinessPageFragment paramBusinessPageFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, dm paramdm)
  {
    BusinessPageFragment.e(a, true);
    BusinessPageFragment.q(a);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    BusinessPageFragment.e(a, true);
    BusinessPageFragment.d(a, paramYelpException.getMessage(a.getActivity()));
    BusinessPageFragment.q(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.bi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */