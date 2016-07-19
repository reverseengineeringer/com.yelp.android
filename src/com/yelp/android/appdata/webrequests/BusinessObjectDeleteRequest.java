package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.serializable.Media;

public class BusinessObjectDeleteRequest
  extends c
{
  private Media a;
  
  public BusinessObjectDeleteRequest(DeletableObject paramDeletableObject, c.a parama, Media paramMedia)
  {
    super("/business/" + mediaType + "/delete", parama);
    a = paramMedia;
    b(mediaType + "_id", paramMedia.a());
  }
  
  public Media b()
  {
    return a;
  }
  
  public static enum DeletableObject
  {
    PHOTO("photo"),  VIDEO("video");
    
    private final String mediaType;
    
    private DeletableObject(String paramString)
    {
      mediaType = paramString;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.BusinessObjectDeleteRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */