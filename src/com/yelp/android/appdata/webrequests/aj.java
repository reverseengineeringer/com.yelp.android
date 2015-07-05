package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;
import com.yelp.android.av.i;
import com.yelp.android.serializable.YelpBusiness;

public class aj
  extends h
{
  public aj(YelpBusiness paramYelpBusiness, i parami)
  {
    super("reservation/cancel", parami);
    addPostParam("business_id", paramYelpBusiness.getId());
    addPostParam("reservation_provider", paramYelpBusiness.getReservationProviderString());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */