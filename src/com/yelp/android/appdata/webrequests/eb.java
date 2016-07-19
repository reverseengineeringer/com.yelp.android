package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c.a;

public class eb
  extends ShareRequest
{
  public eb(String paramString, ShareRequest.ShareType paramShareType, boolean paramBoolean, c.a parama)
  {
    super("/review/share/", parama, paramShareType);
    b("review_id", paramString);
    b("with_award", paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.eb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */