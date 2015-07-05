package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;
import com.yelp.android.av.i;

public class bn
  extends h
{
  public bn(String paramString1, String paramString2, i parami)
  {
    super(ApiRequest.RequestType.POST, "/business/photo/caption/edit", parami);
    addPostParam("photo_id", paramString1);
    addPostParam("caption", paramString2);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */