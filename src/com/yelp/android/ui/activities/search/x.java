package com.yelp.android.ui.activities.search;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.ui.map.YelpMap;

class x
  implements View.OnClickListener
{
  x(w paramw) {}
  
  public void onClick(View paramView)
  {
    SearchBusinessesByMap.a(a.a, a.a.a(SearchBusinessesByMap.d(a.a).getViewableRegion()));
    SearchBusinessesByMap.d(a.a).removeView(a.a());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */