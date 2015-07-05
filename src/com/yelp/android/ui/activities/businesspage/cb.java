package com.yelp.android.ui.activities.businesspage;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ev;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.ui.activities.reviewpage.t;
import java.lang.ref.WeakReference;

class cb
  implements m<ev>
{
  private final WeakReference<BusinessPageFragment> a;
  
  public cb(BusinessPageFragment paramBusinessPageFragment)
  {
    a = new WeakReference(paramBusinessPageFragment);
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ev paramev)
  {
    paramApiRequest = (BusinessPageFragment)a.get();
    if (paramApiRequest != null) {
      BusinessPageFragment.a(paramApiRequest, paramev.a(), paramev.b());
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    paramApiRequest = (BusinessPageFragment)a.get();
    if (paramApiRequest != null)
    {
      BusinessPageFragment.w(paramApiRequest).clear();
      BusinessPageFragment.d(paramApiRequest, true);
      BusinessPageFragment.q(paramApiRequest);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.cb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */