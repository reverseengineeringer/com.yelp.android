package com.yelp.android.bv;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.ApiRequest.b;

public class a
{
  public static class a
    extends c
  {
    public a(String paramString1, String paramString2, int paramInt, ApiRequest.b<c.b> paramb)
    {
      super("event/messages/list", paramb);
      a("event_id", paramString1);
      if (paramString2 != null) {
        a("revision", paramString2);
      }
      a("limit", paramInt);
    }
  }
  
  public static class b
    extends c
  {
    public b(String paramString1, String paramString2, String paramString3, ApiRequest.b<c.b> paramb)
    {
      super("event/message/save", paramb);
      b("event_id", paramString1);
      b("text", paramString2);
      b("revision", paramString3);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bv.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */