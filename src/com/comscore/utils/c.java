package com.comscore.utils;

import android.util.Log;

public class c
{
  public static void a(Class<? extends Object> paramClass, String paramString)
  {
    if (f.a) {
      Log.d(paramClass.getSimpleName(), paramString);
    }
  }
  
  public static void a(Exception paramException)
  {
    if (f.a) {
      paramException.printStackTrace();
    }
  }
  
  public static void a(Object paramObject, String paramString)
  {
    if (f.a) {
      a(paramObject.getClass(), paramString);
    }
  }
  
  public static void b(Class<? extends Object> paramClass, String paramString)
  {
    if (f.a) {
      Log.e(paramClass.getSimpleName(), paramString);
    }
  }
  
  public static void b(Object paramObject, String paramString)
  {
    if (f.a) {
      b(paramObject.getClass(), paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.comscore.utils.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */