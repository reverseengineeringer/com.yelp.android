package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;
import com.yelp.android.av.i;
import org.apache.http.client.HttpClient;

public class dk
  extends h
{
  public dk(HttpClient paramHttpClient, i parami)
  {
    super("account/logout", parami);
    setHttpClient(paramHttpClient);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */