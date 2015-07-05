package com.yelp.android.ui.activities.messaging;

import android.content.res.Configuration;
import android.content.res.Resources;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.bb.h;
import com.yelp.android.ui.activities.messaging.apimanagers.ApiListManager.RequestResult;
import com.yelp.android.ui.activities.messaging.apimanagers.d;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.util.ErrorType;

class t
  implements com.yelp.android.ui.activities.messaging.apimanagers.g
{
  t(ConversationsInboxFragment paramConversationsInboxFragment) {}
  
  public void a(YelpException paramYelpException)
  {
    ConversationsInboxFragment.b(a);
    ConversationsInboxFragment.b(a, true);
    ((ActivityMessaging)a.getActivity()).populateError(paramYelpException);
    a.m().f();
    if (ConversationsInboxFragment.j(a))
    {
      ConversationsInboxFragment.a(a, false);
      if (ConversationsInboxFragment.i(a).isEmpty()) {
        ConversationsInboxFragment.l(a);
      }
    }
    else
    {
      return;
    }
    a.g();
  }
  
  public void a(ApiListManager.RequestResult paramRequestResult, Object paramObject)
  {
    if (!a.isResumed()) {}
    do
    {
      return;
      ConversationsInboxFragment.b(a);
      ConversationsInboxFragment.b(a, true);
      if ((paramRequestResult == ApiListManager.RequestResult.CONTENT_TRASHED) || (paramRequestResult == ApiListManager.RequestResult.CONTENT_NEW))
      {
        ConversationsInboxFragment.g(a).b(false);
        if (a.getResources().getConfiguration().orientation == 2)
        {
          paramRequestResult = ConversationsInboxFragment.h(a);
          a.a(paramRequestResult);
          ConversationsInboxFragment.a(a, paramRequestResult);
          ConversationsInboxFragment.c(a).a(ConversationsInboxFragment.i(a).a(paramRequestResult));
        }
      }
      if (ConversationsInboxFragment.a(a).a()) {
        ConversationsInboxFragment.g(a).f();
      }
      while (ConversationsInboxFragment.i(a).isEmpty())
      {
        ((ActivityMessaging)a.getActivity()).populateError(ErrorType.NO_CONVERSATIONS);
        return;
        if (ConversationsInboxFragment.g(a).g()) {
          a.j_();
        }
      }
      if (ConversationsInboxFragment.j(a))
      {
        ConversationsInboxFragment.a(a, false);
        a.g();
      }
    } while (ConversationsInboxFragment.k(a));
    ActivityUserProfile.a(a.getActivity(), c);
    ConversationsInboxFragment.c(a, true);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */