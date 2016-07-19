package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c.a;

public class ac
  extends ShareRequest
{
  public ac(String paramString, ShareRequest.ShareType paramShareType, c.a parama)
  {
    super("business/photo/share/", parama, paramShareType);
    a = paramShareType;
    b("photo_id", paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */