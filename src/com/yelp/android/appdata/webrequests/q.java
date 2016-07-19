package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c.a;

public class q
  extends ShareRequest
{
  public q(String paramString1, String paramString2, ShareRequest.ShareType paramShareType, c.a parama)
  {
    super("/badge/share/", parama, paramShareType);
    b("badge_id", paramString1);
    b("check_in_id", paramString2);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */