package com.yelp.android.ui.activities.feed;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.panels.PanelError;
import com.yelp.android.util.ErrorType;

class ae
  implements m<User>
{
  ae(FeedFragment paramFeedFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, User paramUser)
  {
    a.b(false);
    if (paramUser.getFriendCount() > 0)
    {
      a.a(ErrorType.NO_FRIEND_ACTIVITIES, FeedFragment.m(a));
      FeedFragment.n(a).setText(2131165855);
    }
    for (;;)
    {
      a.j();
      return;
      a.a(ErrorType.NO_FRIENDS, FeedFragment.m(a));
      FeedFragment.o(a).setText(2131165856);
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.b(false);
    a.j();
    a.a(paramYelpException, FeedFragment.c(a));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */