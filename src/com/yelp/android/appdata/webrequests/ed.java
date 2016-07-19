package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.appdata.webrequests.core.c.a;

public class ed
  extends c
{
  public ed(String paramString, c.a parama)
  {
    super(ApiRequest.RequestType.POST, "reviews/suggestions/remove", parama);
    b("business_id", paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ed
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */