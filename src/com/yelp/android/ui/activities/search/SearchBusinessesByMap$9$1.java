package com.yelp.android.ui.activities.search;

import android.view.View;
import com.google.android.gms.maps.c;
import com.google.android.gms.maps.e;
import com.google.android.gms.maps.g;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.VisibleRegion;
import java.util.ArrayList;

class SearchBusinessesByMap$9$1
  implements e
{
  SearchBusinessesByMap$9$1(SearchBusinessesByMap.9 param9) {}
  
  public void a(c paramc)
  {
    paramc = dae;
    if ((SearchBusinessesByMap.f(a.a) != null) && (!paramc.equals(SearchBusinessesByMap.f(a.a))))
    {
      if (SearchBusinessesByMap.g(a.a).size() < 2) {
        SearchBusinessesByMap.g(a.a).add(a.a.getString(2131165746));
      }
      SearchBusinessesByMap.b(a.a).setVisibility(0);
    }
    SearchBusinessesByMap.a(a.a, paramc);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchBusinessesByMap.9.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */