package com.yelp.android.appdata.webrequests;

class ej
  implements m<Result>
{
  ej(ei paramei) {}
  
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
 * Qualified Name:     com.yelp.android.appdata.webrequests.ej
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */