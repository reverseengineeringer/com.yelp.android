package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.i;

public class fe
  extends ShareRequest
{
  public fe(String paramString, ShareRequest.ShareType paramShareType, i parami)
  {
    super("/review/share/", parami, paramShareType);
    addPostParam("review_id", paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fe
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */