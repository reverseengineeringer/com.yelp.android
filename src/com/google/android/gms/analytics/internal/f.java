package com.google.android.gms.analytics.internal;

import android.util.Log;
import com.google.android.gms.analytics.e;

@Deprecated
public class f
{
  private static volatile e a;
  
  static
  {
    a(new ae());
  }
  
  public static e a()
  {
    return a;
  }
  
  public static void a(e parame)
  {
    a = parame;
  }
  
  public static void a(String paramString)
  {
    Object localObject = g.b();
    if (localObject != null) {
      ((g)localObject).d(paramString);
    }
    for (;;)
    {
      localObject = a;
      if (localObject != null) {
        ((e)localObject).b(paramString);
      }
      return;
      if (a(1)) {
        Log.i((String)ak.c.a(), paramString);
      }
    }
  }
  
  public static void a(String paramString, Object paramObject)
  {
    g localg = g.b();
    if (localg != null) {
      localg.e(paramString, paramObject);
    }
    while (!a(3))
    {
      paramObject = a;
      if (paramObject != null) {
        ((e)paramObject).d(paramString);
      }
      return;
    }
    if (paramObject != null) {}
    for (paramObject = paramString + ":" + paramObject;; paramObject = paramString)
    {
      Log.e((String)ak.c.a(), (String)paramObject);
      break;
    }
  }
  
  public static boolean a(int paramInt)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (a() != null)
    {
      bool1 = bool2;
      if (a().a() <= paramInt) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public static void b(String paramString)
  {
    Object localObject = g.b();
    if (localObject != null) {
      ((g)localObject).b(paramString);
    }
    for (;;)
    {
      localObject = a;
      if (localObject != null) {
        ((e)localObject).a(paramString);
      }
      return;
      if (a(0)) {
        Log.v((String)ak.c.a(), paramString);
      }
    }
  }
  
  public static void c(String paramString)
  {
    Object localObject = g.b();
    if (localObject != null) {
      ((g)localObject).e(paramString);
    }
    for (;;)
    {
      localObject = a;
      if (localObject != null) {
        ((e)localObject).c(paramString);
      }
      return;
      if (a(2)) {
        Log.w((String)ak.c.a(), paramString);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */