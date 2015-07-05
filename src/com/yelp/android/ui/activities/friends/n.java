package com.yelp.android.ui.activities.friends;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dn;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.util.cj;
import java.util.List;

class n
  implements m<List<User>>
{
  n(FindFriendsSearchResultsFragment paramFindFriendsSearchResultsFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<User> paramList)
  {
    a.j();
    FindFriendsSearchResultsFragment.a(a).a(paramList);
    if (paramList.isEmpty()) {
      FindFriendsSearchResultsFragment.a(a, FindFriendsSearchResultsFragment.b(a));
    }
    if ((FindFriendsSearchResultsFragment.c(a) != null) && (!FindFriendsSearchResultsFragment.c(a).c())) {
      a.a(true);
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    FindFriendsSearchResultsFragment.a(a, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */