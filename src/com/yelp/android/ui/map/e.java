package com.yelp.android.ui.map;

import com.google.android.gms.maps.GoogleMap.InfoWindowAdapter;
import com.google.android.gms.maps.model.Marker;

public abstract interface e<T>
  extends GoogleMap.InfoWindowAdapter
{
  public abstract void a();
  
  public abstract void a(f<T> paramf);
  
  public abstract void a(T paramT, Marker paramMarker);
  
  public abstract T b(Marker paramMarker);
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */