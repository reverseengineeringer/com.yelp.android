package com.yelp.android.ui.activities.search;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.ui.map.YelpMap;

class SearchBusinessesByMap$1
  implements View.OnClickListener
{
  SearchBusinessesByMap$1(SearchBusinessesByMap paramSearchBusinessesByMap) {}
  
  public void onClick(View paramView)
  {
    SearchBusinessesByMap.a(a, a.a(SearchBusinessesByMap.a(a).getViewableRegion()));
    SearchBusinessesByMap.b(a).setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchBusinessesByMap.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */