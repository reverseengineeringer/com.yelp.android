package com.yelp.android.ui.map;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.UiSettings;

class v
  implements Runnable
{
  v(YelpMap paramYelpMap, boolean paramBoolean) {}
  
  public void run()
  {
    if (YelpMap.a(b) != null)
    {
      GoogleMap localGoogleMap = YelpMap.a(b).getMap();
      localGoogleMap.getUiSettings().setAllGesturesEnabled(a);
      localGoogleMap.getUiSettings().setZoomControlsEnabled(a);
      localGoogleMap.getUiSettings().setMyLocationButtonEnabled(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */