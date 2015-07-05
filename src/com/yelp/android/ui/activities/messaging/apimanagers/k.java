package com.yelp.android.ui.activities.messaging.apimanagers;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.appdata.webrequests.messaging.MessagingRequestType;
import com.yelp.android.bb.d;
import com.yelp.android.serializable.Conversation;

class k
  implements m<Conversation>
{
  k(i parami) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Conversation paramConversation)
  {
    paramApiRequest = a;
    if ((paramConversation.getBizUser() != null) && (paramConversation.getReviewId() != null)) {}
    for (boolean bool = true;; bool = false)
    {
      i.a(paramApiRequest, bool);
      i.b(a).a(paramConversation);
      a.i();
      i.b(a, true);
      i.a(a, paramConversation.getLatestMessages(), MessagingRequestType.Default);
      a.f().a(ApiListManager.RequestResult.CONTENT_NEW, paramConversation);
      return;
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    i.a(a).onError(paramApiRequest, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.apimanagers.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */