package com.yelp.android.ui.activities.feed;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.gx;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.serializable.FeedEntry;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

class z
  extends j<FeedRequestResult>
{
  z(FeedFragment paramFeedFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, FeedRequestResult paramFeedRequestResult)
  {
    paramApiRequest = new ArrayList();
    Iterator localIterator = paramFeedRequestResult.a().iterator();
    while (localIterator.hasNext())
    {
      FeedEntry localFeedEntry = (FeedEntry)localIterator.next();
      if (localFeedEntry.isSupported()) {
        paramApiRequest.add(localFeedEntry);
      }
    }
    if (paramApiRequest.isEmpty())
    {
      FeedFragment.a(a, new gx(FeedFragment.d(a), null, null));
      FeedFragment.e(a).execute(new Void[0]);
    }
    for (;;)
    {
      FeedFragment.b(a, false);
      FeedFragment.a(a, false);
      if (paramFeedRequestResult.c() == FeedRequestResult.FeedStatus.NO_MORE_FEEDS)
      {
        FeedFragment.a(a, null);
        a.n();
      }
      return;
      FeedFragment.a(a, paramFeedRequestResult.b());
      a.b(false);
      a.j();
      if (FeedFragment.f(a))
      {
        a.e();
        a.b(paramApiRequest);
        if ((a.m().g()) && (FeedFragment.g(a) != null)) {
          a.o();
        }
      }
      else
      {
        a.a(paramApiRequest);
      }
    }
  }
  
  public boolean a()
  {
    FeedFragment.a(a, false);
    a.b(false);
    a.a(ErrorType.NO_LOCATION, FeedFragment.c(a));
    a.j();
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    FeedFragment.a(a, false);
    a.b(false);
    a.a(ErrorType.getTypeFromException(paramYelpException), FeedFragment.c(a));
    a.n();
    a.j();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */