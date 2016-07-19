package com.yelp.android.analytics;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.kahuna.sdk.h;
import com.yelp.android.analytics.iris.KahunaAttributeIri;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.c.a;

class i$1
  implements c.a
{
  i$1(i parami) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    i.b(a).edit().putBoolean("migration_complete", true).commit();
    i.c(a).e();
    a.a(KahunaAttributeIri.KahunaEnabled, "true");
    i.a(a).a();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    i.a(a).a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.i.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */