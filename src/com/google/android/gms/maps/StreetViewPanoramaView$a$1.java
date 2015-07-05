package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate;
import com.google.android.gms.maps.internal.u.a;

class StreetViewPanoramaView$a$1
  extends u.a
{
  StreetViewPanoramaView$a$1(StreetViewPanoramaView.a parama, OnStreetViewPanoramaReadyCallback paramOnStreetViewPanoramaReadyCallback) {}
  
  public void a(IStreetViewPanoramaDelegate paramIStreetViewPanoramaDelegate)
  {
    alo.onStreetViewPanoramaReady(new StreetViewPanorama(paramIStreetViewPanoramaDelegate));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.StreetViewPanoramaView.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */