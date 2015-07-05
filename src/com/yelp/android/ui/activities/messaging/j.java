package com.yelp.android.ui.activities.messaging;

import com.yelp.android.services.push.h;
import com.yelp.android.ui.activities.messaging.apimanagers.i;

class j
  implements com.yelp.android.services.push.j
{
  j(ConversationThreadFragment paramConversationThreadFragment) {}
  
  public void a(h paramh)
  {
    if (!ConversationThreadFragment.g(a).equals(paramh.a())) {
      return;
    }
    if ((ConversationThreadFragment.h(a).c()) && (!ConversationThreadFragment.h(a).g()))
    {
      ConversationThreadFragment.h(a).b(ConversationThreadFragment.b(a));
      ConversationThreadFragment.a(a, false);
      return;
    }
    ConversationThreadFragment.a(a, true);
  }
  
  public boolean b(h paramh)
  {
    return !ConversationThreadFragment.g(a).equals(paramh.a());
  }
  
  public String c()
  {
    return "ConversationThreadFragment";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */