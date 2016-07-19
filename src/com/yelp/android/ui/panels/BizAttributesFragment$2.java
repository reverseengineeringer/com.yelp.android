package com.yelp.android.ui.panels;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import java.util.ArrayList;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

class BizAttributesFragment$2
  implements ApiRequest.b<ArrayList<String>>
{
  BizAttributesFragment$2(BizAttributesFragment paramBizAttributesFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ArrayList<String> paramArrayList)
  {
    if ((paramArrayList != null) && (!paramArrayList.isEmpty()))
    {
      BizAttributesFragment.a(a, paramArrayList);
      BizAttributesFragment.b().schedule(BizAttributesFragment.j(a), 3L, TimeUnit.SECONDS);
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    BizAttributesFragment.b().schedule(BizAttributesFragment.j(a), 3L, TimeUnit.SECONDS);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.BizAttributesFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */