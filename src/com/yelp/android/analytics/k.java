package com.yelp.android.analytics;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

final class k
  extends com.yelp.android.appdata.webrequests.j<Map<String, String>>
{
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Map<String, String> paramMap)
  {
    paramApiRequest = paramMap.keySet().iterator();
    while (paramApiRequest.hasNext())
    {
      String str = (String)paramApiRequest.next();
      j.a(str, (String)paramMap.get(str));
    }
  }
  
  public boolean a()
  {
    return false;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */