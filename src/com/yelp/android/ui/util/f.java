package com.yelp.android.ui.util;

import com.yelp.android.appdata.webrequests.YelpException;

public class f<ResultType>
{
  private final ResultType a;
  private final YelpException b;
  
  public f(ResultType paramResultType, YelpException paramYelpException)
  {
    a = paramResultType;
    b = paramYelpException;
  }
  
  public void a(g<ResultType> paramg)
  {
    if (b == null)
    {
      paramg.a(a);
      return;
    }
    paramg.b(b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */