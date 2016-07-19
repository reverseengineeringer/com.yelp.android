package com.yelp.android.appdata.webrequests;

public abstract class dn<Request extends ApiRequest<?, ?, Result>, Result, Callback extends ApiRequest.b<Result>>
{
  protected Request a;
  protected Result b;
  protected boolean c;
  protected YelpException d;
  
  public dn(Request paramRequest)
  {
    a = paramRequest;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */