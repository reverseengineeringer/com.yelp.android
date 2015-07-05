package com.yelp.android.ui.activities.events;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.av.i;

class ac
  implements i
{
  ac(EventRequestFragment paramEventRequestFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    EventRequestFragment.a(a, null, EventRequestFragment.RequestType.EVENT_UPDATE_GUESTS);
    EventRequestFragment.a(a, null);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    EventRequestFragment.a(a, paramYelpException, EventRequestFragment.RequestType.EVENT_UPDATE_GUESTS);
    EventRequestFragment.a(a, null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */