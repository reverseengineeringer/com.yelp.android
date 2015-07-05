package com.yelp.android.aw;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.av.h;

public class a
  extends h
{
  public a(String paramString)
  {
    super(ApiRequest.RequestType.POST, "client/unregister", null);
    addPostParam("ydid", paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.aw.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */