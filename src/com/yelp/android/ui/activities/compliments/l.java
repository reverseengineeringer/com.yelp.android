package com.yelp.android.ui.activities.compliments;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ax;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Compliment;
import com.yelp.android.ui.activities.profile.j;
import com.yelp.android.ui.util.cr;
import java.util.ArrayList;

class l
  implements m<Compliment>
{
  l(ViewCompliments paramViewCompliments) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Compliment paramCompliment)
  {
    j localj = new j();
    a = paramCompliment;
    if (ViewCompliments.b(a) == Mode.APPROVE) {
      b = 1;
    }
    if ((paramApiRequest instanceof ax))
    {
      ViewCompliments.a(a).b(paramCompliment);
      ViewCompliments.c(a).remove(paramCompliment);
      ViewCompliments.a(a).notifyDataSetChanged();
      b = 0;
    }
    localj.a(a);
    if (ViewCompliments.a(a).isEmpty()) {
      a.finish();
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    cr.a(paramYelpException.getMessage(a), 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.compliments.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */