package com.yelp.android.appdata.webrequests;

public abstract class ek<Request extends ApiRequest<?, ?, Result>, Result, Callback extends m<Result>>
{
  protected Request a;
  protected Result b;
  protected boolean c;
  protected YelpException d;
  
  public ek(Request paramRequest)
  {
    a = paramRequest;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ek
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */