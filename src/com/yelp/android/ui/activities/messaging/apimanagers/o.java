package com.yelp.android.ui.activities.messaging.apimanagers;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.av.i;

class o
  implements i
{
  o(n paramn) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    a.a(null);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if (a.c != null) {
      a.c.a(a.b, paramYelpException);
    }
    for (;;)
    {
      a.i();
      return;
      a.a = new m(a.b, null, paramYelpException);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.apimanagers.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */