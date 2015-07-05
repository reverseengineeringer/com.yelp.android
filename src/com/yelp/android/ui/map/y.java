package com.yelp.android.ui.map;

import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.MapView;

class y
  implements Runnable
{
  y(YelpMap paramYelpMap) {}
  
  public void run()
  {
    YelpMap.b(a).a();
    YelpMap localYelpMap = a;
    if (YelpMap.c(a) != null) {}
    for (boolean bool = true;; bool = false)
    {
      YelpMap.a(localYelpMap, bool);
      if ((YelpMap.a(a) != null) && (YelpMap.a(a).getMap() != null))
      {
        YelpMap.a(a).getMap().setInfoWindowAdapter(YelpMap.b(a));
        YelpMap.a(a).getMap().setOnInfoWindowClickListener(a);
        YelpMap.a(a).getMap().clear();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */