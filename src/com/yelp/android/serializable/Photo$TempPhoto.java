package com.yelp.android.serializable;

import java.util.Collections;
import java.util.UUID;

public class Photo$TempPhoto
  extends Photo
{
  public Photo$TempPhoto(String paramString1, String paramString2)
  {
    this(paramString1, paramString2, UUID.randomUUID().toString());
  }
  
  public Photo$TempPhoto(String paramString1, String paramString2, String paramString3)
  {
    h = "";
    b = paramString3;
    e = Collections.emptyList();
    j = paramString2;
    c = paramString1;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Photo.TempPhoto
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */