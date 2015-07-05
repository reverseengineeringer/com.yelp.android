package com.yelp.android.ui.activities.talk;

import android.content.SharedPreferences;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.er;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Location;

class b
  implements m<er>
{
  b(ActivityTalk paramActivityTalk) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, er paramer)
  {
    paramApiRequest = ActivityTalk.e(a).getString(ActivityTalk.d(a), null);
    if ((b) && (a != null))
    {
      ActivityTalk.a(a, a.getDisplay());
      if (!ActivityTalk.f(a).equals(paramApiRequest)) {
        ActivityTalk.g(a);
      }
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */