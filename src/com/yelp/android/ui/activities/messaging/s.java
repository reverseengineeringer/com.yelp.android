package com.yelp.android.ui.activities.messaging;

import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.ui.activities.messaging.apimanagers.MessagingAction;
import com.yelp.android.ui.activities.messaging.apimanagers.p;

class s
  extends p
{
  s(ConversationsInboxFragment paramConversationsInboxFragment) {}
  
  public void a()
  {
    ConversationsInboxFragment.f(a);
  }
  
  public void a(MessagingAction paramMessagingAction, YelpException paramYelpException)
  {
    ConversationsInboxFragment.b(a);
    ConversationsInboxFragment.e(a).a(paramMessagingAction, paramYelpException, ConversationsInboxFragment.d(a));
  }
  
  public void a(MessagingAction paramMessagingAction, Object paramObject)
  {
    ConversationsInboxFragment.b(a);
    ConversationsInboxFragment.e(a).a(ConversationsInboxFragment.c(a), paramMessagingAction, ConversationsInboxFragment.d(a));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */