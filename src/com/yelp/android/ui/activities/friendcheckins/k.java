package com.yelp.android.ui.activities.friendcheckins;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.ui.activities.profile.ActivityUserCheckIns;

class k
  implements View.OnClickListener
{
  k(NearbyCheckIns paramNearbyCheckIns) {}
  
  public void onClick(View paramView)
  {
    paramView = paramView.getContext();
    paramView.startActivity(ActivityUserCheckIns.a(paramView, null));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friendcheckins.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */