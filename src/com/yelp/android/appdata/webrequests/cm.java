package com.yelp.android.appdata.webrequests;

public class cm<Request extends k<?, ?, Result>, Result>
  extends dn<Request, Result, k.b<Result>>
{
  private boolean e;
  
  public cm(Request paramRequest)
  {
    super(paramRequest);
    a = paramRequest;
    ((k)a).a(new k.b()
    {
      public boolean a()
      {
        cm.a(cm.this, true);
        return !((k)a).b();
      }
      
      public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
      {
        d = paramAnonymousYelpException;
      }
      
      public void onSuccess(ApiRequest<?, ?, ?> paramAnonymousApiRequest, Result paramAnonymousResult)
      {
        c = true;
        b = paramAnonymousResult;
      }
    });
  }
  
  public Request a(k.b<Result> paramb)
  {
    ((k)a).a(paramb);
    if (e) {
      paramb.a();
    }
    if (c) {
      paramb.onSuccess(a, b);
    }
    for (;;)
    {
      return (k)a;
      if (d != null) {
        paramb.onError(a, d);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */