package com.yelp.android.util;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.YelpBookmark;
import com.yelp.android.ui.dialogs.e;

class c$2
  implements ApiRequest.b<YelpBookmark>
{
  c$2(c paramc) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, YelpBookmark paramYelpBookmark)
  {
    c.a(a).dismiss();
    c.b(a).a(true);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    c.a(a).dismiss();
    c.a(a, 2131166609);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.c.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */