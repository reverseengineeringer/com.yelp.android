package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;
import com.yelp.android.av.i;
import com.yelp.android.serializable.YelpBusiness;

public class eg
  extends h
{
  public eg(YelpBusiness paramYelpBusiness, i parami)
  {
    super("bookmarks/remove", parami);
    addPostParam("business_id", paramYelpBusiness.getId());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.eg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */