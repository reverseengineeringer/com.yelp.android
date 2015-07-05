package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;

public class dl
  extends h
{
  public dl(String paramString1, String paramString2)
  {
    super("account/logout/web_session", null);
    addPostParam("public_session_token", paramString2);
    addPostParam("private_session_token", paramString1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */