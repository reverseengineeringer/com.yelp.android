package com.yelp.android.ui.activities.messaging;

import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.Conversation;
import com.yelp.android.ui.activities.messaging.apimanagers.ApiListManager.RequestResult;
import com.yelp.android.ui.activities.messaging.apimanagers.g;
import com.yelp.android.ui.activities.messaging.apimanagers.i;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.ui.util.ScrollToLoadListView;
import java.util.List;

class m
  implements g
{
  m(ConversationThreadFragment paramConversationThreadFragment) {}
  
  public void a(YelpException paramYelpException)
  {
    ConversationThreadFragment.i(a);
    a.a();
    ((ActivityMessaging)a.getActivity()).populateError(paramYelpException);
    ((ActivityMessaging)a.getActivity()).getErrorPanel().setBackgroundResource(17170443);
  }
  
  public void a(ApiListManager.RequestResult paramRequestResult, Object paramObject)
  {
    if (ConversationThreadFragment.h(a).b())
    {
      ConversationThreadFragment.m(a).f();
      switch (h.b[paramRequestResult.ordinal()])
      {
      default: 
        label60:
        ConversationThreadFragment.i(a);
        if (ConversationThreadFragment.n(a))
        {
          ConversationThreadFragment.h(a).b(ConversationThreadFragment.b(a));
          ConversationThreadFragment.a(a, false);
        }
        break;
      }
    }
    while (paramRequestResult != ApiListManager.RequestResult.CONTENT_ADDED_BOTTOM)
    {
      return;
      if (!ConversationThreadFragment.m(a).g()) {
        break;
      }
      ConversationThreadFragment.q(a);
      break;
      paramObject = (Conversation)paramObject;
      a.b((Conversation)paramObject);
      break label60;
      ConversationThreadFragment.m(a).a(false);
      break label60;
      ConversationThreadFragment.m(a).a(true);
      break label60;
      paramObject = (List)paramObject;
      int j = ConversationThreadFragment.m(a).getFirstVisiblePosition() + ((List)paramObject).size();
      paramObject = ConversationThreadFragment.m(a);
      int i = j;
      if (ConversationThreadFragment.m(a).g()) {
        i = j - 1;
      }
      ((ScrollToLoadListView)paramObject).setSelectionFromTop(i, 0);
      break label60;
    }
    a.e();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */