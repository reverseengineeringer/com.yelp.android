package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;
import com.yelp.android.av.i;

public class fh
  extends h
{
  public fh(String paramString, i parami)
  {
    super(ApiRequest.RequestType.POST, "reviews/suggestions/remove", parami);
    addPostParam("business_id", paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */