package com.yelp.android.ui.util;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dm;
import com.yelp.android.appdata.webrequests.m;
import java.util.List;

class az
  implements m<dm>
{
  az(ax paramax) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, dm paramdm)
  {
    ax.a(a, null);
    ax.b(a).addAll(paramdm.c());
    if (ax.c(a) >= ax.b(a).size()) {
      ax.a(a, ax.c(a));
    }
    a.c();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    ax.a(a, null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.az
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */