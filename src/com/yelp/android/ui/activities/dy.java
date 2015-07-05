package com.yelp.android.ui.activities;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.ui.activities.friends.ActivityFindFriends;

class dy
  implements View.OnClickListener
{
  dy(ActivitySplashFindFriends paramActivitySplashFindFriends) {}
  
  public void onClick(View paramView)
  {
    a.startActivityForResult(ActivityFindFriends.a(paramView.getContext(), false, false), 100);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.dy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */