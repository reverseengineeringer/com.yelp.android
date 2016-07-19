package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;

public class cr
  extends c
{
  public cr(String paramString1, String paramString2)
  {
    super("account/logout/web_session", null);
    b("public_session_token", paramString2);
    b("private_session_token", paramString1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */