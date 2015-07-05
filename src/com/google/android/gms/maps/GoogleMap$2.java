package com.google.android.gms.maps;

import android.location.Location;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.maps.internal.q.a;

class GoogleMap$2
  extends q.a
{
  GoogleMap$2(GoogleMap paramGoogleMap, GoogleMap.OnMyLocationChangeListener paramOnMyLocationChangeListener) {}
  
  public void c(Location paramLocation)
  {
    akq.onMyLocationChange(paramLocation);
  }
  
  public void g(d paramd)
  {
    akq.onMyLocationChange((Location)e.f(paramd));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMap.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */