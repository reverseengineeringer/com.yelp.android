package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;
import com.yelp.android.av.i;

public class ge
  extends h
{
  public ge(String paramString1, String paramString2, i parami)
  {
    super("account/twitter/save_request_token", parami);
    addPostParam("oauth_token", paramString1);
    addPostParam("oauth_verifier", paramString2);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ge
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */