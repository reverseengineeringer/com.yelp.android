package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;

public final class bc
  extends az
{
  public bc(m<bb> paramm, String paramString, int paramInt1, int paramInt2)
  {
    super(paramm, "user/compliments", true);
    super.addUrlParam("offset", paramInt1);
    super.addUrlParam("limit", paramInt2);
    if (!TextUtils.isEmpty(paramString)) {
      super.addUrlParam("user_id", paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */