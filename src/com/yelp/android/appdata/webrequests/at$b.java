package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;

public final class at$b
  extends at
{
  public at$b(ApiRequest.b<at.a> paramb, String paramString, int paramInt1, int paramInt2)
  {
    super(paramb, "user/compliments", true);
    super.a("offset", paramInt1);
    super.a("limit", paramInt2);
    if (!TextUtils.isEmpty(paramString)) {
      super.a("user_id", paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.at.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */