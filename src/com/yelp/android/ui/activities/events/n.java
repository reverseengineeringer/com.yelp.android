package com.yelp.android.ui.activities.events;

import android.app.Activity;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.Event;
import com.yelp.android.util.r;

class n
  implements View.OnClickListener
{
  n(EventFragment paramEventFragment, Activity paramActivity) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.EventDirections, "event_id", EventFragment.a(b).getId());
    r.a(a, EventFragment.a(b));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */