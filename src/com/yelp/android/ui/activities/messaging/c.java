package com.yelp.android.ui.activities.messaging;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Conversation;
import com.yelp.android.ui.util.cr;

class c
  implements m<Conversation>
{
  c(ComposeMessageFragment paramComposeMessageFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Conversation paramConversation)
  {
    ComposeMessageFragment.c(a, true);
    ComposeMessageFragment.g(a);
    ComposeMessageFragment.h(a).a();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.j();
    cr.a(paramYelpException.getMessage(a.getActivity()), 1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */