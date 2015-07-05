package com.yelp.android.ui.activities.talk;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;

class n
  implements m<Integer>
{
  n(EventTalkViewPost paramEventTalkViewPost) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Integer paramInteger)
  {
    a.a(paramInteger.intValue());
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.a(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */