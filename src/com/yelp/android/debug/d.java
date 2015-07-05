package com.yelp.android.debug;

import android.widget.TextView;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;

class d
  implements m<Result>
{
  d(c paramc) {}
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    c.b(a).setText(c.a(a) + " failed");
    c.a(a, null);
  }
  
  public void onSuccess(ApiRequest<?, ?, ?> paramApiRequest, Result paramResult)
  {
    c.b(a).setText(c.a(a) + " completed");
    c.a(a, null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.debug.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */