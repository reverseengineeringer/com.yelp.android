package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;
import com.yelp.android.av.i;

public abstract class ShareRequest
  extends h
{
  protected ShareRequest.ShareType a;
  
  public ShareRequest(String paramString, i parami, ShareRequest.ShareType paramShareType)
  {
    super(paramString + paramShareType.getTypeString(), parami);
    a = paramShareType;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ShareRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */