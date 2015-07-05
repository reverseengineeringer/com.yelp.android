package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.ILocationSourceDelegate.a;
import com.google.android.gms.maps.internal.i;

class GoogleMap$6
  extends ILocationSourceDelegate.a
{
  GoogleMap$6(GoogleMap paramGoogleMap, LocationSource paramLocationSource) {}
  
  public void activate(i parami)
  {
    aku.activate(new GoogleMap.6.1(this, parami));
  }
  
  public void deactivate()
  {
    aku.deactivate();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMap.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */