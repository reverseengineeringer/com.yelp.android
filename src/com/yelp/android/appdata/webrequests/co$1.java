package com.yelp.android.appdata.webrequests;

import com.yelp.android.util.q;
import org.apache.http.client.CookieStore;

class co$1
  extends q<CookieStore, Void, Void>
{
  co$1(co paramco) {}
  
  public Void a(CookieStore... paramVarArgs)
  {
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      paramVarArgs[i].clear();
      i += 1;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.co.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */