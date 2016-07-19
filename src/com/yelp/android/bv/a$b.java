package com.yelp.android.bv;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.ApiRequest.b;

public class a$b
  extends c
{
  public a$b(String paramString1, String paramString2, String paramString3, ApiRequest.b<c.b> paramb)
  {
    super(ApiRequest.RequestType.POST, "event/message/save", paramb);
    b("event_id", paramString1);
    b("text", paramString2);
    b("revision", paramString3);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bv.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */