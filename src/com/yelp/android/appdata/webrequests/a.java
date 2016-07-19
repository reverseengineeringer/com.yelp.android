package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;

public class a
  extends c
{
  public a(String paramString)
  {
    super(ApiRequest.RequestType.POST, "account/claim_token", null);
    b("claim_nonce", paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */