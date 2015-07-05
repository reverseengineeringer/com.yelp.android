package com.yelp.android.ui.activities.messaging;

import com.yelp.android.ui.activities.messaging.apimanagers.d;

class u
  implements Runnable
{
  u(ConversationsInboxFragment paramConversationsInboxFragment) {}
  
  public void run()
  {
    if (!ConversationsInboxFragment.a(a).g()) {
      ConversationsInboxFragment.l(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */