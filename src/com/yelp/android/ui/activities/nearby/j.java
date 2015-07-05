package com.yelp.android.ui.activities.nearby;

import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.model.CameraPosition;
import com.yelp.android.ui.map.YelpMap;

class j
  implements Runnable
{
  j(ComboMapFragment paramComboMapFragment, CameraPosition paramCameraPosition) {}
  
  public void run()
  {
    if (ComboMapFragment.a(b).getMapView().getMap() != null) {
      ComboMapFragment.b(b).getMapView().getMap().animateCamera(CameraUpdateFactory.newCameraPosition(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */