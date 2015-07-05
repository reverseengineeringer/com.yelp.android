package com.yelp.android.ui.util;

import android.location.Location;

public class cb
{
  public String a;
  public boolean b;
  public boolean c;
  public Location d;
  public String e;
  
  public cb(String paramString1, boolean paramBoolean1, boolean paramBoolean2, Location paramLocation, String paramString2)
  {
    a = paramString1;
    b = paramBoolean1;
    c = paramBoolean2;
    d = paramLocation;
    e = paramString2;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (cb)paramObject;
        if (a == null)
        {
          if (a != null) {
            return false;
          }
        }
        else if (!a.equals(a)) {
          return false;
        }
        if (b != b) {
          return false;
        }
      } while (!c);
      if (((d != null) && (!d.equals(d))) || ((d != null) && (!d.equals(d)))) {
        return false;
      }
    } while (e.equals(e));
    return false;
  }
  
  public int hashCode()
  {
    int i;
    if (a == null)
    {
      i = 0;
      if (!b) {
        break label41;
      }
    }
    label41:
    for (int j = 1231;; j = 1237)
    {
      return j + (i + 31) * 31;
      i = a.hashCode();
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.cb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */