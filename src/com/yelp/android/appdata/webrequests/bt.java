package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.appdata.webrequests.core.c.a;
import java.util.concurrent.TimeUnit;

public class bt
  extends c
{
  public bt(String paramString1, String paramString2, String paramString3, String paramString4, TimeUnit paramTimeUnit, long paramLong, c.a parama)
  {
    super("account/facebook/save", parama);
    if (paramLong > 0L) {
      b("access_token_expiry", TimeUnit.SECONDS.convert(paramLong, paramTimeUnit));
    }
    b("permissions", paramString1);
    b("api_key", paramString2);
    b("access_token", paramString4);
    b("fbuid", paramString3);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */