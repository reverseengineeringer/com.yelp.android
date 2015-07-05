package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.i;

public class z
  extends ShareRequest
{
  public z(String paramString, ShareRequest.ShareType paramShareType, i parami)
  {
    super("business/photo/share/", parami, paramShareType);
    a = paramShareType;
    addPostParam("photo_id", paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */