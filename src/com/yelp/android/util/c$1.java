package com.yelp.android.util;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.ui.dialogs.e;

class c$1
  implements com.yelp.android.appdata.webrequests.core.c.a
{
  c$1(c paramc) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    c.a(a).dismiss();
    c.b(a).a(false);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    c.a(a).dismiss();
    c.a(a, 2131166609);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.c.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */