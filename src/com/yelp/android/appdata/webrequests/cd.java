package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;

public class cd
  extends h
{
  public cd(boolean paramBoolean, m paramm)
  {
    super(ApiRequest.RequestType.POST, "account/facebook/auto_friend", paramm);
    addPostParam("enabled", paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */