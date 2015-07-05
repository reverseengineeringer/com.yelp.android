package com.google.android.gms.maps;

import com.google.android.gms.maps.internal.g.a;
import com.google.android.gms.maps.model.IndoorBuilding;
import com.google.android.gms.maps.model.internal.j;

class GoogleMap$1
  extends g.a
{
  GoogleMap$1(GoogleMap paramGoogleMap, GoogleMap.OnIndoorStateChangeListener paramOnIndoorStateChangeListener) {}
  
  public void a(j paramj)
  {
    ako.onIndoorLevelActivated(new IndoorBuilding(paramj));
  }
  
  public void onIndoorBuildingFocused()
  {
    ako.onIndoorBuildingFocused();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMap.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */