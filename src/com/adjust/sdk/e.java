package com.adjust.sdk;

import android.app.Activity;
import java.util.Map;

public class e
{
  private static a a;
  private static Logger b;
  
  public static void a()
  {
    try
    {
      b.c("onPause");
      a.b();
      return;
    }
    catch (NullPointerException localNullPointerException)
    {
      while (b == null) {}
      b.f("No activity handler found");
    }
  }
  
  public static void a(Activity paramActivity)
  {
    if (a == null) {
      a = new a(paramActivity);
    }
    b = f.a();
    a.a();
  }
  
  public static void a(String paramString)
  {
    a(paramString, null);
  }
  
  public static void a(String paramString, Map<String, String> paramMap)
  {
    try
    {
      a.a(paramString, paramMap);
      return;
    }
    catch (NullPointerException paramString)
    {
      while (b == null) {}
      b.f("No activity handler found");
    }
  }
}

/* Location:
 * Qualified Name:     com.adjust.sdk.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */