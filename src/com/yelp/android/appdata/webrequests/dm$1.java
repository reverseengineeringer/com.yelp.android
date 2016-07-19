package com.yelp.android.appdata.webrequests;

class dm$1
  implements ApiRequest.b<Result>
{
  dm$1(dm paramdm) {}
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.d = paramYelpException;
  }
  
  public void onSuccess(ApiRequest<?, ?, ?> paramApiRequest, Result paramResult)
  {
    a.b = paramResult;
    a.c = true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dm.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */