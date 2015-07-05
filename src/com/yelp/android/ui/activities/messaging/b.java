package com.yelp.android.ui.activities.messaging;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.gq;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.ui.util.cr;
import java.util.ArrayList;

class b
  implements m<gq>
{
  b(ComposeMessageFragment paramComposeMessageFragment) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, gq paramgq)
  {
    ComposeMessageFragment.a(a, true);
    ComposeMessageFragment.e(a).addAll(paramgq.a());
    if (!a.isResumed())
    {
      ComposeMessageFragment.b(a, true);
      return;
    }
    ComposeMessageFragment.f(a);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.j();
    ComposeMessageFragment.d(a);
    cr.a(paramYelpException.getMessage(a.getActivity()), 1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */