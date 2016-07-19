package com.yelp.android.bv;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.ApiRequest.b;

public class c$a
  extends c
{
  public c$a(String paramString1, String paramString2, int paramInt, ApiRequest.b<c.b> paramb)
  {
    super(ApiRequest.RequestType.GET, "talk/messages/list", paramb);
    a("topic_id", paramString1);
    if (paramString2 != null) {
      a("revision", paramString2);
    }
    a("limit", paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bv.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */