package com.yelp.android.ui.activities.events;

import com.yelp.android.appdata.webrequests.bu;

class f
  implements Runnable
{
  f(EventAttendeesFragment paramEventAttendeesFragment) {}
  
  public void run()
  {
    if ((EventAttendeesFragment.a(a) == null) || (!EventAttendeesFragment.a(a).isFetching()))
    {
      EventAttendeesFragment.a(a, new bu(EventAttendeesFragment.b(a).b(), EventAttendeesFragment.c(a), EventAttendeesFragment.d(a)));
      EventAttendeesFragment.a(a).execute(new Void[0]);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */