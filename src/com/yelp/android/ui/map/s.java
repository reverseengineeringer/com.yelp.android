package com.yelp.android.ui.map;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.MapView;

class s
  implements Runnable
{
  s(YelpMap paramYelpMap) {}
  
  public void run()
  {
    GoogleMap localGoogleMap = YelpMap.a(a).getMap();
    localGoogleMap.setInfoWindowAdapter(YelpMap.b(a));
    localGoogleMap.setOnInfoWindowClickListener(a);
    localGoogleMap.setIndoorEnabled(true);
    localGoogleMap.setMyLocationEnabled(true);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */