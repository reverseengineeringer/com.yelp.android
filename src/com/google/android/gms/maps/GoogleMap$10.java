package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.n.a;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.internal.l;

class GoogleMap$10
  extends n.a
{
  GoogleMap$10(GoogleMap paramGoogleMap, GoogleMap.OnMarkerClickListener paramOnMarkerClickListener) {}
  
  public boolean a(l paraml)
  {
    return akA.onMarkerClick(new Marker(paraml));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMap.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */