package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;

public class ar
  extends c
{
  public ar(String paramString)
  {
    super(ApiRequest.RequestType.POST, "client/unregister", null);
    b("device_id", paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */