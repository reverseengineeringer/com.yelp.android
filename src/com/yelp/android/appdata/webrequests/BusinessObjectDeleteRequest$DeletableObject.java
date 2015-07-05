package com.yelp.android.appdata.webrequests;

public enum BusinessObjectDeleteRequest$DeletableObject
{
  PHOTO("photo"),  VIDEO("video");
  
  private final String mediaType;
  
  private BusinessObjectDeleteRequest$DeletableObject(String paramString)
  {
    mediaType = paramString;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.BusinessObjectDeleteRequest.DeletableObject
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */