package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;
import com.yelp.android.av.i;

public class BusinessObjectDeleteRequest
  extends h
{
  public BusinessObjectDeleteRequest(BusinessObjectDeleteRequest.DeletableObject paramDeletableObject, String paramString, i parami)
  {
    super("/business/" + BusinessObjectDeleteRequest.DeletableObject.access$000(paramDeletableObject) + "/delete", parami);
    addPostParam(BusinessObjectDeleteRequest.DeletableObject.access$000(paramDeletableObject) + "_id", paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.BusinessObjectDeleteRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */