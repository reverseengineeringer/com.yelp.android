package com.yelp.android.ui.activities.compliments;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Compliment;
import com.yelp.android.ui.util.cr;

class j
  implements m<Compliment>
{
  j(ViewCompliments paramViewCompliments) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Compliment paramCompliment)
  {
    ViewCompliments.a(a).b(paramCompliment);
    paramApiRequest = new com.yelp.android.ui.activities.profile.j();
    if (Mode.APPROVE == ViewCompliments.b(a)) {
      a = paramCompliment;
    }
    for (;;)
    {
      paramApiRequest.a(a);
      return;
      b = -1;
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    cr.a(paramYelpException.getMessage(a), 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.compliments.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */