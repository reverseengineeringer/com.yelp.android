package com.google.android.gms.maps;

import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.maps.internal.d.a;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.internal.l;

class GoogleMap$13
  extends d.a
{
  GoogleMap$13(GoogleMap paramGoogleMap, GoogleMap.InfoWindowAdapter paramInfoWindowAdapter) {}
  
  public d f(l paraml)
  {
    return e.k(akD.getInfoWindow(new Marker(paraml)));
  }
  
  public d g(l paraml)
  {
    return e.k(akD.getInfoContents(new Marker(paraml)));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMap.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */