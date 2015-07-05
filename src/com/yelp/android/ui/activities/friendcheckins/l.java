package com.yelp.android.ui.activities.friendcheckins;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.ui.activities.leaderboard.ActivityLeaderboard;

class l
  implements View.OnClickListener
{
  l(NearbyCheckIns paramNearbyCheckIns) {}
  
  public void onClick(View paramView)
  {
    a.startActivity(ActivityLeaderboard.a(a, NearbyCheckIns.a(a)));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friendcheckins.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */