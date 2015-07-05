package com.yelp.android.ui.activities.messaging.apimanagers;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.appdata.webrequests.messaging.MessagingRequestType;
import com.yelp.android.appdata.webrequests.messaging.f;
import java.util.List;

class e
  implements m<com.yelp.android.appdata.webrequests.messaging.g>
{
  e(d paramd) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, com.yelp.android.appdata.webrequests.messaging.g paramg)
  {
    a.i();
    Object localObject = (f)paramApiRequest;
    d.a(a, a, ((f)localObject).a());
    if (a.a(a, ((f)localObject).a(), 20))
    {
      a.f().a(ApiListManager.RequestResult.CONTENT_TRASHED, paramg);
      return;
    }
    paramApiRequest = a.f();
    d locald = a;
    localObject = ((f)localObject).a();
    if (a.size() == 0) {}
    for (boolean bool = true;; bool = false)
    {
      paramApiRequest.a(locald.a((MessagingRequestType)localObject, bool), paramg);
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
 * Qualified Name:     com.yelp.android.ui.activities.messaging.apimanagers.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */