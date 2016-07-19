package com.yelp.android.ui.map;

import com.google.android.gms.maps.b;
import com.google.android.gms.maps.c;
import com.google.android.gms.maps.c.f;
import com.google.android.gms.maps.e;
import com.google.android.gms.maps.model.LatLngBounds;
import com.yelp.android.appdata.n;

class YelpMap$4
  implements e
{
  YelpMap$4(YelpMap paramYelpMap, LatLngBounds paramLatLngBounds) {}
  
  public void a(final c paramc)
  {
    try
    {
      paramc.a(b.a(a, n.a));
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      paramc.a(new c.f()
      {
        public void a()
        {
          paramc.a(b.a(a, n.a));
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.YelpMap.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */