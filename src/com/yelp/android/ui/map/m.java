package com.yelp.android.ui.map;

import com.google.android.gms.maps.GoogleMap.OnMapClickListener;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Marker;

class m
  implements GoogleMap.OnMapClickListener
{
  m(l paraml, GoogleMap.OnMapClickListener paramOnMapClickListener) {}
  
  public void onMapClick(LatLng paramLatLng)
  {
    a.onMapClick(paramLatLng);
    l.a(b).showInfoWindow();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */