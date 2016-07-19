package com.yelp.android.ag;

import com.bumptech.glide.load.b;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.util.UUID;

class f$d
  implements b
{
  private final UUID a;
  
  public f$d()
  {
    this(UUID.randomUUID());
  }
  
  f$d(UUID paramUUID)
  {
    a = paramUUID;
  }
  
  public void a(MessageDigest paramMessageDigest)
    throws UnsupportedEncodingException
  {
    throw new UnsupportedOperationException("Not implemented");
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof d)) {
      return a.equals(a);
    }
    return false;
  }
  
  public int hashCode()
  {
    return a.hashCode();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ag.f.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */