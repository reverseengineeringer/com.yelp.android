package com.yelp.android.appdata.webrequests;

import com.yelp.android.serializable.eq;

class dg
  extends j<eq>
{
  dg(dc paramdc, String paramString) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, eq parameq)
  {
    dc.a(b, a, parameq);
    b.a(parameq);
    dc.a(b, true, null);
  }
  
  public boolean a()
  {
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    dc.a(b, false, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */