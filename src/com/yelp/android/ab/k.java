package com.yelp.android.ab;

import com.bumptech.glide.load.b;
import java.security.MessageDigest;
import java.util.UUID;

class k
  implements b
{
  private final UUID a = UUID.randomUUID();
  private int b;
  
  public void a()
  {
    b += 1;
  }
  
  public void a(MessageDigest paramMessageDigest)
  {
    throw new UnsupportedOperationException("Not implemented");
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if ((paramObject instanceof k))
    {
      paramObject = (k)paramObject;
      bool1 = bool2;
      if (a.equals(a))
      {
        bool1 = bool2;
        if (b == b) {
          bool1 = true;
        }
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    return a.hashCode() * 31 + b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ab.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */