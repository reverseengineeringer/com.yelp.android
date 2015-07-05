package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;
import com.yelp.android.av.i;
import com.yelp.android.serializable.User;

public class e
  extends h
{
  public e(i parami, User paramUser, String paramString)
  {
    super("user/add_friend", parami);
    addPostParam("user_id", paramUser.getId());
    addPostParam("message", paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */