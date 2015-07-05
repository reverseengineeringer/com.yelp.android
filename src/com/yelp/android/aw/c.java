package com.yelp.android.aw;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.m;

public class c
  extends f
{
  public c(String paramString1, String paramString2, int paramInt, m<h> paramm)
  {
    super(ApiRequest.RequestType.GET, "event/messages/list", paramm);
    addUrlParam("event_id", paramString1);
    if (paramString2 != null) {
      addUrlParam("revision", paramString2);
    }
    addUrlParam("limit", paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.aw.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */