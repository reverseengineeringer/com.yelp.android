package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.appdata.webrequests.core.c.a;

public class f
  extends c
{
  public f(String paramString, c.a parama)
  {
    super(ApiRequest.RequestType.POST, "account/locations/edit_primary", parama);
    b("location", paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */