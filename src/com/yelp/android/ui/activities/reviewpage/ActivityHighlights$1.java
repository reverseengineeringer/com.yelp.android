package com.yelp.android.ui.activities.reviewpage;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dw;
import com.yelp.android.appdata.webrequests.dw.a;
import com.yelp.android.ui.util.ScrollToLoadListView;
import java.util.ArrayList;

class ActivityHighlights$1
  implements ApiRequest.b<dw.a>
{
  ActivityHighlights$1(ActivityHighlights paramActivityHighlights) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, dw.a parama)
  {
    ActivityHighlights.a(a, parama.b());
    a.b.addAll(parama.a());
    a.a.a(false);
    if (a.b.size() >= parama.b())
    {
      a.r().f();
      a.a.c();
    }
    a.a.a(ActivityHighlights.b(a, a.b.size()));
    a.a.notifyDataSetChanged();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if ((paramApiRequest instanceof dw))
    {
      a.r().f();
      a.a.c();
      a.a.notifyDataSetChanged();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ActivityHighlights.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */