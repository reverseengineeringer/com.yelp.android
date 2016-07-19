package com.yelp.android.appdata;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.serializable.Preferences;
import java.util.Map;

class ApiPreferences$3
  implements c.a
{
  ApiPreferences$3(ApiPreferences paramApiPreferences, Integer paramInteger, String paramString, ApiPreferences.b paramb) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    c.a(null);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if (a != null) {
      ApiPreferences.a(d).a().put(b, a);
    }
    c.a(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.ApiPreferences.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */