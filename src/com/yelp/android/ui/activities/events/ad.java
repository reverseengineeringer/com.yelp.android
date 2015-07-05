package com.yelp.android.ui.activities.events;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;

class ad
  implements m<String>
{
  ad(EventRequestFragment paramEventRequestFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, String paramString)
  {
    EventRequestFragment.a(a, paramString, EventRequestFragment.RequestType.EVENT_FLAG_REQUEST);
    EventRequestFragment.a(a, null);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    EventRequestFragment.a(a, paramYelpException, EventRequestFragment.RequestType.EVENT_FLAG_REQUEST);
    EventRequestFragment.a(a, null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */