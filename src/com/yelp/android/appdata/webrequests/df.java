package com.yelp.android.appdata.webrequests;

import com.yelp.android.analytics.iris.KahunaAttributeIri;
import com.yelp.android.analytics.j;
import com.yelp.android.appdata.ab;
import com.yelp.android.serializable.eq;

class df
  implements m<eq>
{
  df(dc paramdc) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, eq parameq)
  {
    ApiException localApiException = null;
    if (!parameq.d()) {
      localApiException = ApiException.getExceptionForCode(11, null);
    }
    paramApiRequest = (dj)paramApiRequest;
    dc.a(a, paramApiRequest.a(), parameq);
    a.a(parameq);
    paramApiRequest = a;
    if (localApiException == null) {}
    for (boolean bool = true;; bool = false)
    {
      dc.a(paramApiRequest, bool, localApiException);
      ab.a().i();
      j.a(KahunaAttributeIri.FirstName, parameq.a());
      return;
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    dc.a(a, false, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.df
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */