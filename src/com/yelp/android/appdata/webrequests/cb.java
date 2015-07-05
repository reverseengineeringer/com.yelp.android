package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;
import com.yelp.android.av.i;
import java.util.concurrent.TimeUnit;

public class cb
  extends h
{
  public cb(String paramString1, String paramString2, String paramString3, String paramString4, TimeUnit paramTimeUnit, long paramLong, i parami)
  {
    super("account/facebook/save", parami);
    if (paramLong > 0L) {
      addPostParam("access_token_expiry", TimeUnit.SECONDS.convert(paramLong, paramTimeUnit));
    }
    addPostParam("permissions", paramString1);
    addPostParam("api_key", paramString2);
    addPostParam("access_token", paramString4);
    addPostParam("fbuid", paramString3);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */