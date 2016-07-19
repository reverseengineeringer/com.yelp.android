package com.yelp.android.ui.activities;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.appdata.BusinessContributionType;
import com.yelp.android.ui.activities.search.SearchOverlay;
import com.yelp.android.ui.activities.search.SearchOverlay.SearchDisplayFeatures;
import com.yelp.android.ui.util.SuggestionFilter.SuggestionType;
import java.util.Collections;
import java.util.EnumSet;

class ActivityContributionSearch$1
  implements View.OnClickListener
{
  ActivityContributionSearch$1(ActivityContributionSearch paramActivityContributionSearch, BusinessContributionType paramBusinessContributionType) {}
  
  public void onClick(View paramView)
  {
    if (a == BusinessContributionType.CHECK_IN) {}
    for (paramView = EnumSet.of(SearchOverlay.SearchDisplayFeatures.NAME);; paramView = EnumSet.allOf(SearchOverlay.SearchDisplayFeatures.class))
    {
      paramView = SearchOverlay.a(b, Collections.singletonList(b.getResources().getString(2131165745)), ActivityContributionSearch.a(b), ActivityContributionSearch.b(b), false, a, SuggestionFilter.SuggestionType.CONTRIBUTION, paramView);
      SearchOverlay.a(paramView, b.c());
      b.startActivityForResult(paramView, 1055);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityContributionSearch.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */