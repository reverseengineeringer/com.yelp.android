package com.yelp.android.ui.activities.nearby;

import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.model.LatLngBounds;
import com.yelp.android.appdata.ao;
import com.yelp.android.ui.map.YelpMap;

class k
  implements Runnable
{
  k(ComboMapFragment paramComboMapFragment, LatLngBounds paramLatLngBounds) {}
  
  public void run()
  {
    if (ComboMapFragment.c(b).getMapView().getMap() != null) {
      ComboMapFragment.d(b).getMapView().getMap().animateCamera(CameraUpdateFactory.newLatLngBounds(a, ao.a));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */