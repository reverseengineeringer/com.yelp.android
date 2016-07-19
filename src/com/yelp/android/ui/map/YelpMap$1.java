package com.yelp.android.ui.map;

import android.annotation.SuppressLint;
import com.google.android.gms.maps.c;
import com.google.android.gms.maps.e;
import com.yelp.android.appdata.PermissionGroup;
import com.yelp.android.appdata.k;

class YelpMap$1
  implements e
{
  YelpMap$1(YelpMap paramYelpMap) {}
  
  @SuppressLint({"MissingPermission"})
  public void a(c paramc)
  {
    paramc.a(YelpMap.a(a));
    paramc.a(a);
    paramc.a(true);
    if (k.a(a.getContext(), PermissionGroup.LOCATION)) {
      paramc.b(true);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.YelpMap.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */