package com.yelp.android.ui.activities.messaging;

import android.support.v4.app.FragmentActivity;
import com.yelp.android.services.push.h;
import com.yelp.android.services.push.j;
import com.yelp.android.ui.activities.messaging.apimanagers.d;

class q
  implements j
{
  q(ConversationsInboxFragment paramConversationsInboxFragment) {}
  
  public void a(h paramh)
  {
    if (ConversationsInboxFragment.a(a).g())
    {
      ConversationsInboxFragment.a(a, true);
      return;
    }
    a.getActivity().runOnUiThread(new r(this));
  }
  
  public boolean b(h paramh)
  {
    return true;
  }
  
  public String c()
  {
    return "ConversationsInboxFragment";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */