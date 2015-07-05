package com.yelp.android.ui.activities.reviewpage;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.eu;
import com.yelp.android.appdata.webrequests.ev;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.ui.util.ScrollToLoadListView;
import java.util.ArrayList;

class h
  implements m<ev>
{
  h(ActivityHighlights paramActivityHighlights) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, ev paramev)
  {
    ActivityHighlights.a(a, paramev.b());
    a.b.addAll(paramev.a());
    a.a.a(false);
    if (a.b.size() >= paramev.b())
    {
      a.q().f();
      a.a.c();
    }
    a.a.a(ActivityHighlights.b(a, a.b.size()));
    a.a.notifyDataSetChanged();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if ((paramApiRequest instanceof eu))
    {
      a.q().f();
      a.a.c();
      a.a.notifyDataSetChanged();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */