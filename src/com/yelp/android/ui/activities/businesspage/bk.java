package com.yelp.android.ui.activities.businesspage;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.LocalAd;
import com.yelp.android.serializable.LocalAdPlacement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

class bk
  implements m<List<LocalAd>>
{
  bk(BusinessPageFragment paramBusinessPageFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<LocalAd> paramList)
  {
    BusinessPageFragment.f(a, true);
    BusinessPageFragment.b(a, new ArrayList());
    BusinessPageFragment.c(a, new ArrayList());
    paramApiRequest = paramList.iterator();
    while (paramApiRequest.hasNext())
    {
      paramList = (LocalAd)paramApiRequest.next();
      if (paramList.getLocalAdPlacement() == LocalAdPlacement.ABOVE_BIZ_REVIEW) {
        BusinessPageFragment.y(a).add(paramList);
      } else if (paramList.getLocalAdPlacement() == LocalAdPlacement.BELOW_BIZ_REVIEW) {
        BusinessPageFragment.z(a).add(paramList);
      }
    }
    BusinessPageFragment.q(a);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    BusinessPageFragment.f(a, true);
    BusinessPageFragment.b(a, Collections.emptyList());
    BusinessPageFragment.c(a, Collections.emptyList());
    BusinessPageFragment.q(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.bk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */