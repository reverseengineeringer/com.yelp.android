package com.yelp.android.ui.activities.friends;

import android.widget.RelativeLayout;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.av.i;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.widgets.YelpToggleButton;

class h
  implements i
{
  h(FindFriendsFBContactsFragment paramFindFriendsFBContactsFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    a.j();
    if (FindFriendsFBContactsFragment.f(a) != null)
    {
      if (FindFriendsFBContactsFragment.f(a).isChecked())
      {
        a.m().setVisibility(8);
        FindFriendsFBContactsFragment.e(a).setVisibility(8);
        FindFriendsFBContactsFragment.a(a, FindFriendsFBContactsFragment.f(a).isChecked());
      }
    }
    else {
      return;
    }
    a.m().setVisibility(0);
    FindFriendsFBContactsFragment.e(a).setVisibility(0);
    a.a_();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.a(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */