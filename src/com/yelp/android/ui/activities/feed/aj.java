package com.yelp.android.ui.activities.feed;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.ui.activities.messaging.ActivityMessaging;

class aj
  implements View.OnClickListener
{
  aj(FeedFragment paramFeedFragment) {}
  
  public void onClick(View paramView)
  {
    a.startActivity(ActivityMessaging.a(a.getActivity()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */