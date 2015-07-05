package com.yelp.android.ui.panels;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import java.util.ArrayList;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

class h
  implements m<ArrayList<String>>
{
  h(BizAttributesFragment paramBizAttributesFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ArrayList<String> paramArrayList)
  {
    if ((paramArrayList != null) && (!paramArrayList.isEmpty()))
    {
      BizAttributesFragment.b(a, paramArrayList);
      BizAttributesFragment.b().schedule(BizAttributesFragment.j(a), 3L, TimeUnit.SECONDS);
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    BizAttributesFragment.b().schedule(BizAttributesFragment.j(a), 3L, TimeUnit.SECONDS);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */