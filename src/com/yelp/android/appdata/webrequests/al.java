package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c.a;

public class al
  extends ShareRequest
{
  public al(String paramString, ShareRequest.ShareType paramShareType, boolean paramBoolean, c.a parama)
  {
    super("check_in/share/", parama, paramShareType);
    a = paramShareType;
    b("check_in_id", paramString);
    if (!paramShareType.equals(ShareRequest.ShareType.YELP)) {
      b("with_award", paramBoolean);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */