package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;

public class ap
  extends c
{
  public ap(String paramString, ApiRequest.b<Void> paramb)
  {
    super("user/alerts_v2/clear", paramb);
    b("revision", paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */