package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;
import com.yelp.android.av.i;

public class MarkOfferRequest
  extends h
{
  public MarkOfferRequest(MarkOfferRequest.MarkOfferRequestType paramMarkOfferRequestType, String paramString, i parami)
  {
    super(paramMarkOfferRequestType.getPath(), parami);
    addPostParam("offer_id", paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.MarkOfferRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */