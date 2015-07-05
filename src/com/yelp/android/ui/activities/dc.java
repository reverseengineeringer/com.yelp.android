package com.yelp.android.ui.activities;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.Category;
import com.yelp.android.ui.activities.nearby.ActivityNearby;

class dc
  implements View.OnClickListener
{
  dc(ActivityOnboardingSearch paramActivityOnboardingSearch, ActivityOnboardingSearch.SearchCategory paramSearchCategory) {}
  
  public void onClick(View paramView)
  {
    AppData.a(a.getEventIri());
    b.startActivity(ActivityNearby.a(b, a.getCategory().getAlias(), a.getCategory()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.dc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */