package com.yelp.android.ui.activities.friendcheckins;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.appdata.BusinessContributionType;
import com.yelp.android.ui.activities.ActivityContributionSearch;

class j
  implements View.OnClickListener
{
  j(NearbyCheckIns paramNearbyCheckIns) {}
  
  public void onClick(View paramView)
  {
    a.startActivity(ActivityContributionSearch.a(a, BusinessContributionType.CHECK_IN));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.friendcheckins.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */