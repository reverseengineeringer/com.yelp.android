package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.internal.m.a;

class MapView$a$1
  extends m.a
{
  MapView$a$1(MapView.a parama, OnMapReadyCallback paramOnMapReadyCallback) {}
  
  public void a(IGoogleMapDelegate paramIGoogleMapDelegate)
  {
    akU.onMapReady(new GoogleMap(paramIGoogleMapDelegate));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.MapView.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */