package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c.a;

public class er
  extends ShareRequest
{
  public er(String paramString, ShareRequest.ShareType paramShareType, boolean paramBoolean, c.a parama)
  {
    super("quicktips/share/", parama, paramShareType);
    b("quicktip_id", paramString);
    b("with_award", paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.er
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */