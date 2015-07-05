package com.yelp.android.serializable;

public final class at
{
  public final String a;
  public final double b;
  
  public at(String paramString, double paramDouble)
  {
    a = paramString;
    b = paramDouble;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (!(paramObject instanceof at)) {
        return false;
      }
      paramObject = (at)paramObject;
      if (a == null)
      {
        if (a != null) {
          return false;
        }
      }
      else if (!a.equals(a)) {
        return false;
      }
    } while (Double.doubleToLongBits(b) == Double.doubleToLongBits(b));
    return false;
  }
  
  public int hashCode()
  {
    if (a == null) {}
    for (int i = 0;; i = a.hashCode())
    {
      long l = Double.doubleToLongBits(b);
      return (i + 31) * 31 + (int)(l ^ l >>> 32);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */