package com.yelp.android.appdata.webrequests;

import com.yelp.android.util.aa;
import org.apache.http.client.CookieStore;

class de
  extends aa<CookieStore, Void, Void>
{
  de(dc paramdc) {}
  
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
 * Qualified Name:     com.yelp.android.appdata.webrequests.de
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */