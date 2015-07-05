package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;
import com.yelp.android.av.i;

public class bm
  extends h
{
  public bm(String paramString, i parami)
  {
    super("quicktips/delete", parami);
    addPostParam("quicktip_id", paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */