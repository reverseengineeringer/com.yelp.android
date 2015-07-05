package com.yelp.android.appdata.webrequests;

public enum BusinessObjectFlagRequest$FlaggableObject
{
  PHOTO("photo"),  VIDEO("video");
  
  private final String mediaType;
  
  private BusinessObjectFlagRequest$FlaggableObject(String paramString)
  {
    mediaType = paramString;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.BusinessObjectFlagRequest.FlaggableObject
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */