package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.appdata.webrequests.core.c.a;

public class ev
  extends c
{
  public ev(String paramString1, String paramString2, c.a parama)
  {
    super("account/twitter/save_request_token", parama);
    b("oauth_token", paramString1);
    b("oauth_verifier", paramString2);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ev
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */