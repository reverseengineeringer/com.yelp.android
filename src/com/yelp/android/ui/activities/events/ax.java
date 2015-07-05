package com.yelp.android.ui.activities.events;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.bz;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.util.ErrorType;

class ax
  extends j<bz>
{
  ax(MoreEventsFragment paramMoreEventsFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, bz parambz)
  {
    a.j();
    MoreEventsFragment.a(a).a(a);
    MoreEventsFragment.a(a).notifyDataSetChanged();
    a.b(MoreEventsFragment.a(a).getCount());
    if (b == MoreEventsFragment.a(a).getCount()) {
      a.a(true);
    }
    if (b == 0) {
      a.a(ErrorType.NO_EVENTS);
    }
  }
  
  public boolean a()
  {
    return false;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.j();
    MoreEventsFragment.a(a, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */