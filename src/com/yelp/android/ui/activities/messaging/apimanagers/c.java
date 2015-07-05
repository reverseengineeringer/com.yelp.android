package com.yelp.android.ui.activities.messaging.apimanagers;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.av.i;
import com.yelp.android.serializable.ConversationMessage;

class c
  implements m<ConversationMessage>
{
  c(a parama) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ConversationMessage paramConversationMessage)
  {
    a.a(paramConversationMessage);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.d.onError(paramApiRequest, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.apimanagers.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */