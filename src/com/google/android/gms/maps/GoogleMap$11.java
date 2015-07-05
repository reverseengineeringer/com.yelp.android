package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.o.a;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.internal.l;

class GoogleMap$11
  extends o.a
{
  GoogleMap$11(GoogleMap paramGoogleMap, GoogleMap.OnMarkerDragListener paramOnMarkerDragListener) {}
  
  public void b(l paraml)
  {
    akB.onMarkerDragStart(new Marker(paraml));
  }
  
  public void c(l paraml)
  {
    akB.onMarkerDragEnd(new Marker(paraml));
  }
  
  public void d(l paraml)
  {
    akB.onMarkerDrag(new Marker(paraml));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMap.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */