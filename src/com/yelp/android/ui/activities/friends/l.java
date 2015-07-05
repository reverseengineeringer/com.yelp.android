package com.yelp.android.ui.activities.friends;

import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.cc;
import com.yelp.android.ui.activities.FacebookConnectManager;
import com.yelp.android.ui.activities.fg;

class l
  implements fg<ActivityFindFriends>
{
  l(FindFriendsFBContactsFragment paramFindFriendsFBContactsFragment) {}
  
  public void a(FacebookConnectManager<ActivityFindFriends> paramFacebookConnectManager)
  {
    FindFriendsFBContactsFragment.b(a, FindFriendsFBContactsFragment.j(a));
  }
  
  public void a(FacebookConnectManager<ActivityFindFriends> paramFacebookConnectManager, Throwable paramThrowable)
  {
    a.a(new YelpException(paramThrowable, YelpException.YPErrorFacebookConnect));
  }
  
  public void b(FacebookConnectManager<ActivityFindFriends> paramFacebookConnectManager)
  {
    if (FindFriendsFBContactsFragment.k(a) != null) {
      FindFriendsFBContactsFragment.k(a).cancel(true);
    }
    a.getActivity().getSupportFragmentManager().popBackStack();
  }
  
  public void c(FacebookConnectManager<ActivityFindFriends> paramFacebookConnectManager) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */