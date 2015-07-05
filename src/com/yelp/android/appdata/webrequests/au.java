package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;

public class au
  extends h
{
  public au(String paramString)
  {
    super(ApiRequest.RequestType.POST, "client/unregister", null);
    addPostParam("device_id", paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */