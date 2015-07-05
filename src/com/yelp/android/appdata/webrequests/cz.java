package com.yelp.android.appdata.webrequests;

public class cz<Request extends h<?, ?, Result>, Result>
  extends ek<Request, Result, j<Result>>
{
  private boolean e;
  
  public cz(Request paramRequest, boolean paramBoolean)
  {
    super(paramRequest);
    a = paramRequest;
    ((h)a).setCallback(new da(this, paramBoolean));
  }
  
  public Request a(j<Result> paramj)
  {
    ((h)a).setCallback(paramj);
    if (e) {
      paramj.a();
    }
    if (c) {
      paramj.onSuccess(a, b);
    }
    for (;;)
    {
      return (h)a;
      if (d != null) {
        paramj.onError(a, d);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */