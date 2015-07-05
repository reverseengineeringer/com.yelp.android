package com.yelp.android.appdata.webrequests;

class da
  extends j<Result>
{
  da(cz paramcz, boolean paramBoolean) {}
  
  public boolean a()
  {
    cz.a(b, true);
    return a;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    b.d = paramYelpException;
  }
  
  public void onSuccess(ApiRequest<?, ?, ?> paramApiRequest, Result paramResult)
  {
    b.c = true;
    b.b = paramResult;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.da
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */