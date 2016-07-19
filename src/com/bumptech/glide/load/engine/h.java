package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.b;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;

class h
  implements b
{
  private final String a;
  private final b b;
  
  public h(String paramString, b paramb)
  {
    a = paramString;
    b = paramb;
  }
  
  public void a(MessageDigest paramMessageDigest)
    throws UnsupportedEncodingException
  {
    paramMessageDigest.update(a.getBytes("UTF-8"));
    b.a(paramMessageDigest);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if ((paramObject == null) || (getClass() != paramObject.getClass())) {
        return false;
      }
      paramObject = (h)paramObject;
      if (!a.equals(a)) {
        return false;
      }
    } while (b.equals(b));
    return false;
  }
  
  public int hashCode()
  {
    return a.hashCode() * 31 + b.hashCode();
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */