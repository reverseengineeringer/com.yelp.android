package com.yelp.android.ui.activities.leaderboard;

import android.widget.TabHost.OnTabChangeListener;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.ui.activities.ActivityLogin;

class ActivityLeaderboard$1
  implements TabHost.OnTabChangeListener
{
  ActivityLeaderboard$1(ActivityLeaderboard paramActivityLeaderboard) {}
  
  public void onTabChanged(String paramString)
  {
    if (("friends_rank".equals(paramString)) && (!AppData.b().q().b())) {
      a.startActivity(ActivityLogin.a(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.leaderboard.ActivityLeaderboard.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */