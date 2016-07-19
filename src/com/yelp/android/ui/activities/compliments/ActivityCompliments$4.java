package com.yelp.android.ui.activities.compliments;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.at.a;
import com.yelp.android.ui.util.ScrollToLoadListView;
import java.util.ArrayList;
import java.util.List;

class ActivityCompliments$4
  implements ApiRequest.b<at.a>
{
  ActivityCompliments$4(ActivityCompliments paramActivityCompliments) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, at.a parama)
  {
    ActivityCompliments.c(a).addAll(parama.a());
    ActivityCompliments.a(a).a(ActivityCompliments.c(a));
    a.d(parama.a().size());
    if (!parama.b()) {
      a.r().f();
    }
    a.disableLoading();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.onError(paramApiRequest, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.compliments.ActivityCompliments.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */