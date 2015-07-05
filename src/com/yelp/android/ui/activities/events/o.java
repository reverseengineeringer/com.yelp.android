package com.yelp.android.ui.activities.events;

import android.view.View;
import com.yelp.android.analytics.d;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.IriSource;

class o
  extends d
{
  o(EventFragment paramEventFragment, EventIri paramEventIri)
  {
    super(paramEventIri);
  }
  
  public void a(View paramView)
  {
    EventFragment.a(a, IriSource.Button);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */