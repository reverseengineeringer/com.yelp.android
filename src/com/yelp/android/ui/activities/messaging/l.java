package com.yelp.android.ui.activities.messaging;

import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.ui.activities.messaging.apimanagers.MessagingAction;
import com.yelp.android.ui.activities.messaging.apimanagers.p;

class l
  extends p
{
  l(ConversationThreadFragment paramConversationThreadFragment) {}
  
  public void a()
  {
    ConversationThreadFragment.a(a);
  }
  
  public void a(MessagingAction paramMessagingAction, YelpException paramYelpException)
  {
    ConversationThreadFragment.a(a, paramMessagingAction, paramYelpException);
  }
  
  public void a(MessagingAction paramMessagingAction, Object paramObject)
  {
    if (paramMessagingAction != MessagingAction.DELETE_CONVERSATION) {
      a.j();
    }
    ConversationThreadFragment.o(a);
    ConversationThreadFragment.p(a).a(ConversationThreadFragment.e(a), paramMessagingAction, ConversationThreadFragment.b(a));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */