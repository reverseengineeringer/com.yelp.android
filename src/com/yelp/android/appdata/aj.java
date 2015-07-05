package com.yelp.android.appdata;

import android.util.Log;
import com.yelp.android.services.push.t;
import java.lang.reflect.Constructor;
import java.util.HashSet;
import java.util.Set;

abstract class aj
  implements t
{
  public final int a;
  private final String b;
  
  public aj(String paramString, int paramInt)
  {
    b = paramString;
    a = paramInt;
  }
  
  public aj(String paramString, boolean paramBoolean) {}
  
  public final boolean a()
  {
    return a != 2;
  }
  
  public final boolean equals(Object paramObject)
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
        paramObject = (aj)paramObject;
        if (a != a) {
          return false;
        }
        if (b != null) {
          break;
        }
      } while (b == null);
      return false;
    } while (b.equals(b));
    return false;
  }
  
  public final Set<? extends t> getAntiTokens()
  {
    HashSet localHashSet = new HashSet();
    try
    {
      Constructor localConstructor = getClass().getConstructor(new Class[] { Integer.TYPE });
      localHashSet.add(localConstructor.newInstance(new Object[] { Integer.valueOf(0) }));
      localHashSet.add(localConstructor.newInstance(new Object[] { Integer.valueOf(1) }));
      localHashSet.add(localConstructor.newInstance(new Object[] { Integer.valueOf(2) }));
      if (a != 2) {
        localHashSet.remove(this);
      }
      return localHashSet;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Log.e(b, "Something went very wrong", localException);
      }
    }
  }
  
  public final int hashCode()
  {
    int j = a;
    if (b == null) {}
    for (int i = 0;; i = b.hashCode()) {
      return i + (j + 31) * 31;
    }
  }
  
  public final String toString()
  {
    return b + "/" + a;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */