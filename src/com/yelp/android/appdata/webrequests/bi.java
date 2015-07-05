package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;
import com.yelp.android.av.i;

public class bi
  extends h
{
  public bi(String paramString, i parami)
  {
    super("deal/redeem", parami);
    addPostParam("deal_purchase_id", paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */