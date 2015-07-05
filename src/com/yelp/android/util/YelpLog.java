package com.yelp.android.util;

import android.text.TextUtils;
import android.util.Log;

public class YelpLog
{
  private static al mDelegate = null;
  
  public static int d(Object paramObject, String paramString)
  {
    showDebugToast(paramString);
    return Log.d(resolveTag(paramObject), paramString);
  }
  
  public static int e(Object paramObject, String paramString)
  {
    showDebugToast(paramString);
    return Log.e(resolveTag(paramObject), paramString);
  }
  
  public static int e(Object paramObject, String paramString, Throwable paramThrowable)
  {
    showDebugToast(paramString);
    return Log.e(resolveTag(paramObject), paramString, paramThrowable);
  }
  
  public static void error(Exception paramException)
  {
    error(null, null, paramException);
  }
  
  public static void error(Object paramObject, Exception paramException)
  {
    error(paramObject, null, paramException);
  }
  
  public static void error(Object paramObject, String paramString)
  {
    error(paramObject, paramString, new YelpLog.YelpLogException());
  }
  
  public static void error(Object paramObject, String paramString, Exception paramException)
  {
    String str3 = resolveTag(paramObject);
    String str2 = paramException.getLocalizedMessage();
    String str1 = str2;
    if (!TextUtils.isEmpty(paramString)) {
      str1 = "[" + paramString + "]" + str2;
    }
    e(str3, str1, paramException);
    if (mDelegate != null) {
      mDelegate.error(paramObject, paramString, paramException);
    }
  }
  
  public static int i(Object paramObject, String paramString)
  {
    showDebugToast(paramString);
    return Log.i(resolveTag(paramObject), paramString);
  }
  
  public static void registerDelegate(al paramal)
  {
    mDelegate = paramal;
  }
  
  private static String resolveTag(Object paramObject)
  {
    if (paramObject == null) {
      return YelpLog.class.getName();
    }
    if ((paramObject instanceof String)) {
      return (String)paramObject;
    }
    return paramObject.getClass().getSimpleName();
  }
  
  private static void showDebugToast(String paramString) {}
  
  public static int v(Object paramObject, String paramString)
  {
    showDebugToast(paramString);
    return Log.v(resolveTag(paramObject), paramString);
  }
  
  public static int w(Object paramObject, String paramString)
  {
    showDebugToast(paramString);
    return Log.w(resolveTag(paramObject), paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.YelpLog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */