package com.yelp.android.appdata.webrequests;

class cm$1
  extends k.b<Result>
{
  cm$1(cm paramcm) {}
  
  public boolean a()
  {
    cm.a(a, true);
    return !((k)a.a).b();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.d = paramYelpException;
  }
  
  public void onSuccess(ApiRequest<?, ?, ?> paramApiRequest, Result paramResult)
  {
    a.c = true;
    a.b = paramResult;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cm.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */