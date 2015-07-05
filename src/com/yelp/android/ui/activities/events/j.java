package com.yelp.android.ui.activities.events;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.Event;
import com.yelp.android.ui.activities.ActivityMapSingleBusiness;
import com.yelp.android.ui.map.g;

class j
  implements View.OnClickListener
{
  j(EventFragment paramEventFragment) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.EventMaps, "event_id", EventFragment.a(a).getId());
    if (!g.a(a.getActivity(), 1022)) {
      return;
    }
    if (EventFragment.a(a).hasBusiness())
    {
      a.startActivity(ActivityMapSingleBusiness.a(a.getActivity(), EventFragment.a(a).getBusiness()));
      return;
    }
    a.startActivity(ActivityMapForEvent.a(a.getActivity(), EventFragment.a(a)));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */