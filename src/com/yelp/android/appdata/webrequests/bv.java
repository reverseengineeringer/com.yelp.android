package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;

public class bv
  extends c
{
  public bv(boolean paramBoolean, ApiRequest.b paramb)
  {
    super(ApiRequest.RequestType.POST, "account/facebook/auto_friend", paramb);
    b("enabled", paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */