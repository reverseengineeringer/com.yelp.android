package com.yelp.android.ui.activities.search;

import android.view.LayoutInflater;
import android.view.View;
import com.google.android.gms.maps.GoogleMap.OnCameraChangeListener;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.LatLngBounds;
import com.yelp.android.ui.map.YelpMap;
import java.util.ArrayList;

class w
  implements GoogleMap.OnCameraChangeListener
{
  private View b;
  
  w(SearchBusinessesByMap paramSearchBusinessesByMap) {}
  
  View a()
  {
    if (b == null)
    {
      b = LayoutInflater.from(a).inflate(2130903356, SearchBusinessesByMap.d(a), false);
      b.findViewById(2131493927).setOnClickListener(new x(this));
    }
    return b;
  }
  
  public void onCameraChange(CameraPosition paramCameraPosition)
  {
    if ((SearchBusinessesByMap.e(a) == null) || (!SearchBusinessesByMap.d(a).getBounds().equals(SearchBusinessesByMap.e(a))))
    {
      if (SearchBusinessesByMap.f(a).size() < 2) {
        SearchBusinessesByMap.f(a).add(a.getString(2131165671));
      }
      paramCameraPosition = a();
      if (paramCameraPosition.getParent() == null) {
        SearchBusinessesByMap.d(a).addView(paramCameraPosition);
      }
    }
    SearchBusinessesByMap.a(a, SearchBusinessesByMap.d(a).getBounds());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */