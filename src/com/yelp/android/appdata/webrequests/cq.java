package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.appdata.webrequests.core.c.a;
import org.apache.http.client.HttpClient;

public class cq
  extends c
{
  public cq(HttpClient paramHttpClient, c.a parama)
  {
    super("account/logout", parama);
    a(paramHttpClient);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */