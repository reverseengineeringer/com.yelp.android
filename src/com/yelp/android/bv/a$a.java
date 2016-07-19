package com.yelp.android.bv;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.ApiRequest.b;

public class a$a
  extends c
{
  public a$a(String paramString1, String paramString2, int paramInt, ApiRequest.b<c.b> paramb)
  {
    super(ApiRequest.RequestType.GET, "event/messages/list", paramb);
    a("event_id", paramString1);
    if (paramString2 != null) {
      a("revision", paramString2);
    }
    a("limit", paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bv.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */