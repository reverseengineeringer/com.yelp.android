package com.yelp.android.ui.activities.feed;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.ui.activities.notifications.ActivityNotifications;

class ai
  implements View.OnClickListener
{
  ai(FeedFragment paramFeedFragment) {}
  
  public void onClick(View paramView)
  {
    a.startActivity(new Intent(a.getActivity(), ActivityNotifications.class));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */