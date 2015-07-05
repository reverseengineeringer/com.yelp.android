package com.yelp.android.ui.activities.businesspage;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.cx;
import com.yelp.android.appdata.webrequests.m;
import java.util.List;

class bl
  implements m<cx>
{
  bl(BusinessPageFragment paramBusinessPageFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, cx paramcx)
  {
    BusinessPageFragment.d(a, paramcx.a().subList(0, Math.min(5, paramcx.a().size())));
    BusinessPageFragment.a(a, true);
    BusinessPageFragment.q(a);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    BusinessPageFragment.a(a, true);
    BusinessPageFragment.g(a, paramYelpException.getMessage(a.getActivity()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */