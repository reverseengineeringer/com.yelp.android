package com.yelp.android.ui.activities.search;

import android.view.View;
import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.c;
import com.google.android.gms.maps.c.c;
import com.google.android.gms.maps.e;
import com.google.android.gms.maps.g;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.VisibleRegion;
import com.yelp.android.ui.map.YelpMap;
import java.util.ArrayList;

class SearchBusinessesByMap$9
  implements c.c
{
  SearchBusinessesByMap$9(SearchBusinessesByMap paramSearchBusinessesByMap) {}
  
  public void a(CameraPosition paramCameraPosition)
  {
    SearchBusinessesByMap.a(a).getMapView().a(new e()
    {
      public void a(c paramAnonymousc)
      {
        paramAnonymousc = dae;
        if ((SearchBusinessesByMap.f(a) != null) && (!paramAnonymousc.equals(SearchBusinessesByMap.f(a))))
        {
          if (SearchBusinessesByMap.g(a).size() < 2) {
            SearchBusinessesByMap.g(a).add(a.getString(2131165746));
          }
          SearchBusinessesByMap.b(a).setVisibility(0);
        }
        SearchBusinessesByMap.a(a, paramAnonymousc);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchBusinessesByMap.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */