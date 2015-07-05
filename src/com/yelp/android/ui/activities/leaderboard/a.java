package com.yelp.android.ui.activities.leaderboard;

import android.widget.TabHost.OnTabChangeListener;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.ui.activities.ActivityLogin;

class a
  implements TabHost.OnTabChangeListener
{
  a(ActivityLeaderboard paramActivityLeaderboard) {}
  
  public void onTabChanged(String paramString)
  {
    if (("friends_rank".equals(paramString)) && (!AppData.b().m().c())) {
      a.startActivity(ActivityLogin.a(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.leaderboard.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */