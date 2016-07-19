package com.yelp.android.appdata;

import android.os.Handler;
import android.os.Looper;
import com.yelp.android.appdata.experiment.e;
import com.yelp.android.appdata.experiment.i;
import com.yelp.android.appdata.experiment.j;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.appdata.webrequests.l.a;
import java.util.Map;

class AppData$5
  implements ApiRequest.b<l.a>
{
  boolean a = false;
  
  AppData$5(AppData paramAppData) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, l.a parama)
  {
    AppData.a(b, a);
    j.a().a(j.a(b, e.u));
    Features.data().a(a);
    if (a.containsKey(Features.mobile_google_analytics.getKey())) {}
    for (paramApiRequest = (String)a.get(Features.mobile_google_analytics.getKey());; paramApiRequest = String.valueOf(Features.mobile_google_analytics.isEnabled()))
    {
      MetricsManager localMetricsManager = AppData.b().k();
      if ("false".equals(paramApiRequest)) {
        localMetricsManager.a(false);
      }
      AppData.b().f().h(e);
      if (e) {
        AppData.a(b);
      }
      AppData.b(b).a(c);
      AppData.b(b).f(f);
      AppData.b(b).d(d);
      return;
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    new Handler(Looper.getMainLooper()).postDelayed(new Runnable()
    {
      public void run()
      {
        if (!a)
        {
          a = true;
          b.x();
        }
      }
    }, 5000L);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.AppData.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */