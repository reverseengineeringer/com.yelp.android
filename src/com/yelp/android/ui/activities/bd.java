package com.yelp.android.ui.activities;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.appdata.BusinessContributionType;
import com.yelp.android.ui.activities.search.SearchOverlay;
import com.yelp.android.ui.activities.search.SearchOverlay.SearchDisplayFeatures;
import java.util.Collections;
import java.util.EnumSet;

class bd
  implements View.OnClickListener
{
  bd(ActivityContributionSearch paramActivityContributionSearch, BusinessContributionType paramBusinessContributionType) {}
  
  public void onClick(View paramView)
  {
    if (a == BusinessContributionType.CHECK_IN) {}
    for (paramView = EnumSet.of(SearchOverlay.SearchDisplayFeatures.NAME);; paramView = EnumSet.allOf(SearchOverlay.SearchDisplayFeatures.class))
    {
      paramView = SearchOverlay.a(b, Collections.singletonList(b.getResources().getString(2131165670)), ActivityContributionSearch.a(b), ActivityContributionSearch.b(b), false, a, paramView);
      b.startActivityForResult(paramView, 1048);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */