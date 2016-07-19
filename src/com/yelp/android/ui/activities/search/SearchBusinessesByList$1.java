package com.yelp.android.ui.activities.search;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;

class SearchBusinessesByList$1
  implements View.OnClickListener
{
  SearchBusinessesByList$1(SearchBusinessesByList paramSearchBusinessesByList) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.HotButtonSearch);
    d.a(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchBusinessesByList.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */