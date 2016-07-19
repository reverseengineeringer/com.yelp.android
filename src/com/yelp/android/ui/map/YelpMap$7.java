package com.yelp.android.ui.map;

import com.google.android.gms.maps.c;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;
import com.yelp.android.serializable.f;

class YelpMap$7
  implements com.google.android.gms.maps.e
{
  YelpMap$7(YelpMap paramYelpMap, LatLng paramLatLng, a parama, f paramf, int paramInt) {}
  
  public void a(c paramc)
  {
    paramc = paramc.a(new MarkerOptions().a(false).a(a).a(b.a(c)).a("marker " + d).a(0.5F, 1.0F));
    YelpMap.a(e).a(c, paramc);
    YelpMap.a(e, paramc);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.YelpMap.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */