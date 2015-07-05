package com.yelp.android.ah;

import com.bumptech.glide.load.b;
import java.security.MessageDigest;

public class c
  implements b
{
  private final String a;
  
  public c(String paramString)
  {
    if (paramString == null) {
      throw new NullPointerException("Signature cannot be null!");
    }
    a = paramString;
  }
  
  public void a(MessageDigest paramMessageDigest)
  {
    paramMessageDigest.update(a.getBytes("UTF-8"));
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if ((paramObject == null) || (getClass() != paramObject.getClass())) {
      return false;
    }
    paramObject = (c)paramObject;
    return a.equals(a);
  }
  
  public int hashCode()
  {
    return a.hashCode();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ah.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */