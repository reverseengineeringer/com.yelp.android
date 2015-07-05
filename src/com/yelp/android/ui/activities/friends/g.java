package com.yelp.android.ui.activities.friends;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.RelativeLayout;
import com.yelp.android.appdata.webrequests.cd;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.widgets.YelpToggleButton;

class g
  implements View.OnClickListener
{
  g(FindFriendsFBContactsFragment paramFindFriendsFBContactsFragment) {}
  
  public void onClick(View paramView)
  {
    FindFriendsFBContactsFragment.a(a, new cd(FindFriendsFBContactsFragment.f(a).isChecked(), FindFriendsFBContactsFragment.g(a)));
    FindFriendsFBContactsFragment.h(a).execute(new Void[0]);
    FindFriendsFBContactsFragment.a(a, FindFriendsFBContactsFragment.f(a).isChecked());
    if (FindFriendsFBContactsFragment.f(a).isChecked())
    {
      FindFriendsFBContactsFragment.e(a).setVisibility(8);
      a.m().setVisibility(4);
      return;
    }
    FindFriendsFBContactsFragment.e(a).setVisibility(0);
    a.m().setVisibility(0);
    a.a_();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friends.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */