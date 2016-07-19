package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.appdata.webrequests.core.c.a;

public class cg
  extends c
{
  public cg(String paramString1, String paramString2, c.a parama)
  {
    super("account/line/link", parama);
    b("access_token", paramString1);
    b("line_user_id", paramString2);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */