package com.yelp.android.ui.activities.nearby;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.activities.search.SearchOverlay;
import com.yelp.android.ui.util.SuggestionFilter.SuggestionType;
import java.util.Collections;

class ActivityNearby$1
  implements View.OnClickListener
{
  ActivityNearby$1(ActivityNearby paramActivityNearby) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.SearchBar, IriSource.Nearby.getMapWithParameter());
    paramView = Collections.singletonList(a.getResources().getString(2131165745));
    a.startActivity(SearchOverlay.a(a, paramView, "", "", SuggestionFilter.SuggestionType.SEARCH, IriSource.Nearby));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.ActivityNearby.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */