package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.serializable.User;

public class i
  extends c
{
  public i(c.a parama, User paramUser, String paramString)
  {
    super("user/add_friend", parama);
    b("user_id", paramUser.ae());
    b("message", paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */