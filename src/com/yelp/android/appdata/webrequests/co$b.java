package com.yelp.android.appdata.webrequests;

import com.yelp.android.serializable.j;

class co$b
  extends k.b<j>
{
  private String b;
  
  private co$b(co paramco, String paramString)
  {
    b = paramString;
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, j paramj)
  {
    co.a(a, b, paramj);
    a.a(paramj);
    co.b(a, null);
  }
  
  public boolean a()
  {
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    co.b(a, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.co.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */