package com.yelp.android.ui.activities.support;

import android.content.Intent;
import android.view.View;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.feed.ActivityFeed;

class c
  extends g
{
  c(YelpActivity paramYelpActivity, Intent paramIntent, b paramb)
  {
    super(paramYelpActivity, paramIntent, paramb);
  }
  
  public void onClick(View paramView)
  {
    a(ActivityLogin.a(a, 2131166050, ActivityFeed.a(a)));
    super.onClick(paramView);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */