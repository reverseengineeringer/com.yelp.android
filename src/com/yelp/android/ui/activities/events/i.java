package com.yelp.android.ui.activities.events;

import com.google.android.gms.maps.GoogleMap.OnMapClickListener;
import com.google.android.gms.maps.model.LatLng;
import com.yelp.android.serializable.Event;
import com.yelp.android.ui.activities.ActivityMapSingleBusiness;

class i
  implements GoogleMap.OnMapClickListener
{
  i(EventFragment paramEventFragment) {}
  
  public void onMapClick(LatLng paramLatLng)
  {
    if (EventFragment.a(a).hasBusiness())
    {
      a.startActivity(ActivityMapSingleBusiness.a(a.getActivity(), EventFragment.a(a).getBusiness()));
      return;
    }
    a.startActivity(ActivityMapForEvent.a(a.getActivity(), EventFragment.a(a)));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */