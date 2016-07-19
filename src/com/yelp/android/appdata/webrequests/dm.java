package com.yelp.android.appdata.webrequests;

public class dm<Request extends ApiRequest<?, ?, Result>, Result>
  extends dn<Request, Result, ApiRequest.b<Result>>
{
  private final ApiRequest.b<Result> e = new ApiRequest.b()
  {
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      d = paramAnonymousYelpException;
    }
    
    public void onSuccess(ApiRequest<?, ?, ?> paramAnonymousApiRequest, Result paramAnonymousResult)
    {
      b = paramAnonymousResult;
      c = true;
    }
  };
  
  public dm(Request paramRequest)
  {
    super(paramRequest);
    a.a(e);
  }
  
  public Request a(ApiRequest.b<Result> paramb)
  {
    a.a(paramb);
    if (c) {
      paramb.onSuccess(a, b);
    }
    for (;;)
    {
      return a;
      if (d != null) {
        paramb.onError(a, d);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */