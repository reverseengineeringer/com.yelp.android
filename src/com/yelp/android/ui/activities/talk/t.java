package com.yelp.android.ui.activities.talk;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.aw.h;

class t
  implements m<h>
{
  t(q paramq) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, h paramh)
  {
    q.d(a).disableLoading();
    a.a(paramh.a());
    q.a(a, paramh.c());
    int i = q.a(a, paramh.b());
    if (i != -1) {
      q.a(a, paramh.b(), i);
    }
    for (;;)
    {
      if (q.e(a) == null) {
        q.d(a).a(true);
      }
      a.notifyDataSetChanged();
      return;
      int j = paramh.b();
      i = j;
      if (q.e(a) != null) {
        i = j - q.e(a).getCount() - q.e(a).e() + 1;
      }
      q.b(a, Math.min(50, i));
      q.c(a, a.getCount());
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    q.d(a).a(paramYelpException);
    q.b(a, q.f(a));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.talk.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */