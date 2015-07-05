package com.yelp.android.ui.activities.events;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.util.ScrollToLoadListView;
import java.util.List;

class g
  implements m<List<User>>
{
  g(EventAttendeesFragment paramEventAttendeesFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<User> paramList)
  {
    EventAttendeesFragment.b(a).a(paramList);
    EventAttendeesFragment.b(a).notifyDataSetChanged();
    if (EventAttendeesFragment.b(a).c()) {
      a.m().f();
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.m().f();
    a.m().setAdapter(null);
    EventAttendeesFragment.a(a, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */