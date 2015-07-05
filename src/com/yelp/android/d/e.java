package com.yelp.android.d;

import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class e
{
  private static Method a;
  private static Method b;
  
  static
  {
    try
    {
      Class localClass = Class.forName("libcore.icu.ICU");
      if (localClass != null)
      {
        a = localClass.getMethod("getScript", new Class[] { String.class });
        b = localClass.getMethod("addLikelySubtags", new Class[] { String.class });
      }
      return;
    }
    catch (Exception localException)
    {
      Log.w("ICUCompatIcs", localException);
    }
  }
  
  public static String a(String paramString)
  {
    try
    {
      if (a != null)
      {
        paramString = (String)a.invoke(null, new Object[] { paramString });
        return paramString;
      }
    }
    catch (IllegalAccessException paramString)
    {
      Log.w("ICUCompatIcs", paramString);
      return null;
    }
    catch (InvocationTargetException paramString)
    {
      for (;;)
      {
        Log.w("ICUCompatIcs", paramString);
      }
    }
  }
  
  public static String b(String paramString)
  {
    try
    {
      if (b != null)
      {
        String str = (String)b.invoke(null, new Object[] { paramString });
        return str;
      }
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      Log.w("ICUCompatIcs", localIllegalAccessException);
      return paramString;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      for (;;)
      {
        Log.w("ICUCompatIcs", localInvocationTargetException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.d.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */