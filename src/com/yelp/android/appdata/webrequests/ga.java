package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.i;

public class ga
  extends ShareRequest
{
  public ga(String paramString, ShareRequest.ShareType paramShareType, i parami)
  {
    super("quicktips/share/", parami, paramShareType);
    addPostParam("quicktip_id", paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ga
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */