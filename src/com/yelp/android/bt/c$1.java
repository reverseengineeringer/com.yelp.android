package com.yelp.android.bt;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import rx.a.a;
import rx.e;

class c$1
  implements a.a<Result>
{
  c$1(c paramc, ApiRequest paramApiRequest) {}
  
  public void a(e<? super Result> parame)
  {
    try
    {
      parame.a(a.i());
      parame.a();
      return;
    }
    catch (YelpException localYelpException)
    {
      for (;;)
      {
        parame.a(localYelpException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bt.c.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */