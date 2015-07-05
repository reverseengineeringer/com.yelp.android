package com.yelp.android.ui.activities.friends;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.gq;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.ui.util.cj;
import com.yelp.android.ui.widgets.EditTextAndClearButton;
import com.yelp.android.util.ErrorType;

class r
  implements m<gq>
{
  r(FriendsListFragment paramFriendsListFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, gq paramgq)
  {
    a.j();
    FriendsListFragment.a(a).a(paramgq.a(), true);
    if (FriendsListFragment.a(a).isEmpty()) {
      FriendsListFragment.b(a);
    }
    a.a(true);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    FriendsListFragment.a(a).clear();
    a.a(ErrorType.getTypeFromException(paramYelpException));
    FriendsListFragment.c(a).setVisibility(8);
    a.a(true);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */