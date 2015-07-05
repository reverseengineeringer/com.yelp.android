package com.yelp.android.ui.activities.messaging;

import com.yelp.android.ui.activities.messaging.apimanagers.i;

class n
  implements Runnable
{
  n(ConversationThreadFragment paramConversationThreadFragment) {}
  
  public void run()
  {
    if (!ConversationThreadFragment.h(a).g()) {
      ConversationThreadFragment.h(a).a(ConversationThreadFragment.b(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */