package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.IGoogleMapDelegate;
import com.google.android.gms.maps.internal.m.a;

class MapFragment$a$1
  extends m.a
{
  MapFragment$a$1(MapFragment.a parama, OnMapReadyCallback paramOnMapReadyCallback) {}
  
  public void a(IGoogleMapDelegate paramIGoogleMapDelegate)
  {
    akU.onMapReady(new GoogleMap(paramIGoogleMapDelegate));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.MapFragment.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */