package com.yelp.android.ui.activities.events;

import com.yelp.android.appdata.webrequests.YelpException;

class ae
{
  private final Object a;
  private final YelpException b;
  private final EventRequestFragment.RequestType c;
  
  public ae(Object paramObject, YelpException paramYelpException, EventRequestFragment.RequestType paramRequestType)
  {
    a = paramObject;
    b = paramYelpException;
    c = paramRequestType;
  }
  
  public void a(EventFragment paramEventFragment)
  {
    if (b == null)
    {
      paramEventFragment.a(a, c);
      return;
    }
    paramEventFragment.a(b, c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */