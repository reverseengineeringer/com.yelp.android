package com.yelp.android.ui.activities.messaging.apimanagers;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.messaging.MessagingRequestType;
import com.yelp.android.appdata.webrequests.messaging.l;
import java.util.List;

class j
  implements com.yelp.android.appdata.webrequests.m<com.yelp.android.appdata.webrequests.messaging.m>
{
  j(i parami) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, com.yelp.android.appdata.webrequests.messaging.m paramm)
  {
    boolean bool2 = true;
    boolean bool1 = true;
    a.i();
    paramApiRequest = (l)paramApiRequest;
    i.a(a, a, paramApiRequest.a());
    if (paramApiRequest.a() == MessagingRequestType.OlderThan)
    {
      localg = a.f();
      locali = a;
      paramApiRequest = paramApiRequest.a();
      if (a.size() == 0) {}
      for (;;)
      {
        localg.a(locali.a(paramApiRequest, bool1), a);
        return;
        bool1 = false;
      }
    }
    if (a.a(a, paramApiRequest.a(), 20))
    {
      a.f().a(ApiListManager.RequestResult.CONTENT_TRASHED, null);
      return;
    }
    g localg = a.f();
    i locali = a;
    paramApiRequest = paramApiRequest.a();
    if (a.size() == 0) {}
    for (bool1 = bool2;; bool1 = false)
    {
      localg.a(locali.a(paramApiRequest, bool1), null);
      return;
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.i();
    a.f().a(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.apimanagers.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */