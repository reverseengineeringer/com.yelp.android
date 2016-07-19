package com.yelp.android.di;

import java.lang.reflect.Field;
import sun.misc.Unsafe;

public final class y
{
  public static final Unsafe a;
  private static final boolean b;
  
  static
  {
    boolean bool = true;
    if (System.getProperty("rx.unsafe-disable") != null) {}
    for (;;)
    {
      b = bool;
      try
      {
        Object localObject1 = Unsafe.class.getDeclaredField("theUnsafe");
        ((Field)localObject1).setAccessible(true);
        localObject1 = (Unsafe)((Field)localObject1).get(null);
        a = (Unsafe)localObject1;
        return;
        bool = false;
      }
      catch (Throwable localThrowable)
      {
        for (;;)
        {
          Object localObject2 = null;
        }
      }
    }
  }
  
  public static long a(Class<?> paramClass, String paramString)
  {
    try
    {
      paramClass = paramClass.getDeclaredField(paramString);
      long l = a.objectFieldOffset(paramClass);
      return l;
    }
    catch (NoSuchFieldException paramClass)
    {
      paramString = new InternalError();
      paramString.initCause(paramClass);
      throw paramString;
    }
  }
  
  public static boolean a()
  {
    return (a != null) && (!b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.di.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */