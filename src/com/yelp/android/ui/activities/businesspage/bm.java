package com.yelp.android.ui.activities.businesspage;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ez;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessReview;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;

class bm
  implements m<ez>
{
  bm(BusinessPageFragment paramBusinessPageFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ez paramez)
  {
    paramApiRequest = a.iterator();
    while (paramApiRequest.hasNext()) {
      ((YelpBusinessReview)paramApiRequest.next()).setLocale(c);
    }
    if (BusinessPageFragment.g(a) == null) {
      BusinessPageFragment.e(a, a);
    }
    for (;;)
    {
      BusinessPageFragment.a(a, b);
      BusinessPageFragment.a(a, new ArrayList(d));
      paramApiRequest = AppData.b().g().h();
      if (!b.containsKey(paramApiRequest)) {
        BusinessPageFragment.A(a).remove(paramApiRequest);
      }
      BusinessPageFragment.A(a).addAll(d);
      BusinessPageFragment.a(a, e);
      if ((BusinessPageFragment.B(a) == null) || (BusinessPageFragment.g(a).size() >= 5)) {
        break;
      }
      BusinessPageFragment.c(a, BusinessPageFragment.c(a).getId());
      return;
      BusinessPageFragment.g(a).addAll(a);
    }
    BusinessPageFragment.b(a, true);
    BusinessPageFragment.q(a);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    BusinessPageFragment.b(a, true);
    BusinessPageFragment.f(a, paramYelpException.getMessage(a.getActivity()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */