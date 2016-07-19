package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.serializable.User;

public class ff
  extends c
{
  public ff(User paramUser, c.a parama)
  {
    super(ApiRequest.RequestType.POST, "user/follow", parama);
    b("user_id", paramUser.i());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ff
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */