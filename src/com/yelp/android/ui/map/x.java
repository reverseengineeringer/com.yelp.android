package com.yelp.android.ui.map;

import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap.CancelableCallback;
import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.model.LatLngBounds;
import com.yelp.android.appdata.ao;

class x
  implements Runnable
{
  x(YelpMap paramYelpMap, LatLngBounds paramLatLngBounds) {}
  
  public void run()
  {
    YelpMap.b(b, false);
    if ((YelpMap.a(b) != null) && (YelpMap.a(b).getMap() != null))
    {
      Object localObject = new ab(b, YelpMap.d(b), 0);
      localObject = new z(YelpMap.a(b).getMap(), CameraUpdateFactory.newLatLngBounds(a, ao.a), (GoogleMap.CancelableCallback)localObject);
      b.a((Runnable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */