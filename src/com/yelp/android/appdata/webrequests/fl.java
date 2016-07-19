package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.appdata.webrequests.core.c.a;

public class fl
  extends c
{
  public fl(String paramString, c.a parama)
  {
    super("/user/profile/photo/remove", parama);
    b("photo_id", paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */