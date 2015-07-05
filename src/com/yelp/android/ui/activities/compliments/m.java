package com.yelp.android.ui.activities.compliments;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.bb;
import com.yelp.android.ui.util.ScrollToLoadListView;
import java.util.ArrayList;
import java.util.List;

class m
  implements com.yelp.android.appdata.webrequests.m<bb>
{
  m(ViewCompliments paramViewCompliments) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, bb parambb)
  {
    ViewCompliments.c(a).addAll(parambb.a());
    ViewCompliments.a(a).a(ViewCompliments.c(a));
    a.d(parambb.a().size());
    if (!parambb.b()) {
      a.q().f();
    }
    a.disableLoading();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.onError(paramApiRequest, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.compliments.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */