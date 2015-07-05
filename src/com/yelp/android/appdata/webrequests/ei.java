package com.yelp.android.appdata.webrequests;

public class ei<Request extends ApiRequest<?, ?, Result>, Result>
  extends ek<Request, Result, m<Result>>
{
  private final m<Result> e = new ej(this);
  
  public ei(Request paramRequest)
  {
    super(paramRequest);
    a.setCallback(e);
  }
  
  public Request a(m<Result> paramm)
  {
    a.setCallback(paramm);
    if (c) {
      paramm.onSuccess(a, b);
    }
    for (;;)
    {
      return a;
      if (d != null) {
        paramm.onError(a, d);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ei
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */