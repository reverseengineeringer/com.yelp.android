package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.i;

public class al
  extends ShareRequest
{
  public al(String paramString, ShareRequest.ShareType paramShareType, i parami)
  {
    super("check_in/share/", parami, paramShareType);
    a = paramShareType;
    addPostParam("check_in_id", paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */