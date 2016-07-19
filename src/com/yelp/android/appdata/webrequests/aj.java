package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.serializable.YelpBusiness;

public class aj
  extends c
{
  public aj(YelpBusiness paramYelpBusiness, c.a parama)
  {
    super("reservation/cancel", parama);
    b("business_id", paramYelpBusiness.aD());
    b("reservation_provider", paramYelpBusiness.ae());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */