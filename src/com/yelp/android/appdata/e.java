package com.yelp.android.appdata;

import android.os.Handler;
import android.os.Looper;
import com.yelp.android.appdata.experiment.g;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.appdata.webrequests.o;
import com.yelp.android.av.a;
import java.util.Map;

class e
  implements m<o>
{
  boolean a = false;
  
  e(AppData paramAppData) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, o paramo)
  {
    AppData.a(b, a);
    g.a().a(b);
    Features.data().a(a);
    if (a.containsKey(Features.mobile_google_analytics.getKey())) {}
    for (paramApiRequest = (String)a.get(Features.mobile_google_analytics.getKey());; paramApiRequest = String.valueOf(Features.mobile_google_analytics.isEnabled()))
    {
      a locala = AppData.b().k();
      if ("false".equals(paramApiRequest)) {
        locala.a(false);
      }
      AppData.b().f().f(d);
      if (d) {
        AppData.a(b);
      }
      AppData.b().f().a(c);
      return;
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    new Handler(Looper.getMainLooper()).postDelayed(new f(this), 5000L);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */