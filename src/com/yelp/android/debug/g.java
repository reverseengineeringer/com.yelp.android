package com.yelp.android.debug;

import android.widget.TextView;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;

class g
  implements m<Result>
{
  g(f paramf) {}
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    f.b(a).setText(f.a(a) + " failed");
    f.a(a, null);
  }
  
  public void onSuccess(ApiRequest<?, ?, ?> paramApiRequest, Result paramResult)
  {
    f.b(a).setText(f.a(a) + " completed");
    f.a(a, null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.debug.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */