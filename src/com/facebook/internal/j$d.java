package com.facebook.internal;

import android.net.Uri;

class j$d
{
  Uri a;
  Object b;
  
  j$d(Uri paramUri, Object paramObject)
  {
    a = paramUri;
    b = paramObject;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (paramObject != null)
    {
      bool1 = bool2;
      if ((paramObject instanceof d))
      {
        paramObject = (d)paramObject;
        bool1 = bool2;
        if (a == a)
        {
          bool1 = bool2;
          if (b == b) {
            bool1 = true;
          }
        }
      }
    }
    return bool1;
  }
  
  public int hashCode()
  {
    return (a.hashCode() + 1073) * 37 + b.hashCode();
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.j.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */