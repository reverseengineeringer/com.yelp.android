package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.appdata.webrequests.core.c.a;

public class bg
  extends c
{
  public bg(String paramString1, String paramString2, c.a parama)
  {
    super(ApiRequest.RequestType.POST, "/business/photo/caption/edit", parama);
    b("photo_id", paramString1);
    b("caption", paramString2);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */