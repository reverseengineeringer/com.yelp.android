package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;
import com.yelp.android.av.i;

public class ch
  extends h
{
  public ch(String paramString, i parami)
  {
    super("client/force_dirty_session", parami);
    addPostParam("context", paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */