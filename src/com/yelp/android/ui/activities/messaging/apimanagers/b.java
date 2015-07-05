package com.yelp.android.ui.activities.messaging.apimanagers;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;

class b
  implements com.yelp.android.appdata.webrequests.m<Integer>
{
  b(a parama) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Integer paramInteger)
  {
    if (a.c != null) {
      a.c.a(MessagingAction.MARK_CONVERSATION_READ, paramInteger);
    }
    for (;;)
    {
      a.i();
      return;
      a.a = new m(MessagingAction.MARK_CONVERSATION_READ, paramInteger, null);
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.apimanagers.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */