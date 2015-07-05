package com.yelp.android.ui.activities.messaging;

import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.bb.d;
import com.yelp.android.serializable.ConversationMessage;
import com.yelp.android.ui.activities.messaging.apimanagers.MessagingAction;
import com.yelp.android.ui.activities.messaging.apimanagers.i;
import com.yelp.android.ui.activities.messaging.apimanagers.p;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.util.ScrollToLoadListView;

class k
  extends p
{
  k(ConversationThreadFragment paramConversationThreadFragment) {}
  
  public void a(MessagingAction paramMessagingAction, YelpException paramYelpException)
  {
    if (paramMessagingAction == MessagingAction.MARK_CONVERSATION_READ) {
      return;
    }
    ConversationThreadFragment.a(a, paramMessagingAction, paramYelpException);
  }
  
  public void a(MessagingAction paramMessagingAction, Object paramObject)
  {
    ConversationThreadFragment.i(a);
    switch (h.a[paramMessagingAction.ordinal()])
    {
    }
    do
    {
      return;
      ActivityUserProfile.a(a.getActivity(), ((Integer)paramObject).intValue());
      ConversationThreadFragment.e(a).b(ConversationThreadFragment.b(a));
      return;
      ConversationThreadFragment.j(a);
      ConversationThreadFragment.k(a);
      paramMessagingAction = (ConversationMessage)paramObject;
      if (!((ConversationMessage)ConversationThreadFragment.l(a).getItem(ConversationThreadFragment.l(a).getCount() - 1)).equals(paramMessagingAction))
      {
        ConversationThreadFragment.l(a).c((ConversationMessage)paramObject);
        ConversationThreadFragment.l(a).notifyDataSetChanged();
        ConversationThreadFragment.m(a).a(true);
      }
      ConversationThreadFragment.e(a).c();
    } while (!ConversationThreadFragment.n(a));
    ConversationThreadFragment.h(a).b(ConversationThreadFragment.b(a));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */