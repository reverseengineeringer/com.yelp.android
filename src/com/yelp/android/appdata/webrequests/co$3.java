package com.yelp.android.appdata.webrequests;

import com.yelp.android.analytics.i;
import com.yelp.android.analytics.iris.KahunaAttributeIri;
import com.yelp.android.appdata.AppData;

class co$3
  implements ApiRequest.b<com.yelp.android.serializable.j>
{
  co$3(co paramco) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, com.yelp.android.serializable.j paramj)
  {
    ApiException localApiException = null;
    if (!paramj.f()) {
      localApiException = ApiException.getExceptionForCode(11, null);
    }
    paramApiRequest = (cp)paramApiRequest;
    co.a(a, paramApiRequest.b(), paramj);
    a.a(paramj);
    co.b(a, localApiException);
    com.yelp.android.appdata.j.a().i();
    AppData.b().m().a(KahunaAttributeIri.FirstName, paramj.a());
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    co.b(a, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.co.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */