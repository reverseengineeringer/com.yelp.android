package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate;
import com.google.android.gms.maps.internal.u.a;

class StreetViewPanoramaFragment$a$1
  extends u.a
{
  StreetViewPanoramaFragment$a$1(StreetViewPanoramaFragment.a parama, OnStreetViewPanoramaReadyCallback paramOnStreetViewPanoramaReadyCallback) {}
  
  public void a(IStreetViewPanoramaDelegate paramIStreetViewPanoramaDelegate)
  {
    alo.onStreetViewPanoramaReady(new StreetViewPanorama(paramIStreetViewPanoramaDelegate));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.StreetViewPanoramaFragment.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */