package com.yelp.android.ui.activities.events;

import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.Event;
import com.yelp.android.ui.dialogs.r;

class k
  implements r
{
  k(EventFragment paramEventFragment) {}
  
  public void a(String paramString)
  {
    a.a(null, 0);
    EventFragment.c(a).a(EventFragment.a(a).getId(), paramString);
    AppData.a(EventIri.FlagEventSent, "event_id", EventFragment.a(a).getId());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */