package com.yelp.android.appdata;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.Preferences;
import java.util.Iterator;
import java.util.List;

class ApiPreferences$4
  implements ApiRequest.b<Preferences>
{
  ApiPreferences$4(ApiPreferences paramApiPreferences) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Preferences paramPreferences)
  {
    ApiPreferences.a(a, paramPreferences);
    paramApiRequest = ApiPreferences.b(a).iterator();
    while (paramApiRequest.hasNext()) {
      ((ApiPreferences.a)paramApiRequest.next()).a(null);
    }
    ApiPreferences.b(a).clear();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    paramApiRequest = ApiPreferences.b(a).iterator();
    while (paramApiRequest.hasNext()) {
      ((ApiPreferences.a)paramApiRequest.next()).a(paramYelpException);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.ApiPreferences.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */