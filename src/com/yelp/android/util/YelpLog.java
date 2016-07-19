package com.yelp.android.util;

import android.text.TextUtils;
import android.util.Log;

public class YelpLog
{
  private static a mDelegate = null;
  
  public static int d(Object paramObject, String paramString)
  {
    return 0;
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
  
  public static int i(Object paramObject, String paramString)
  {
    return 0;
  }
  
  public static void registerDelegate(a parama)
  {
    mDelegate = parama;
  }
  
  public static void remoteBreadcrumb(String paramString)
  {
    d("Breadcrumb", paramString);
    mDelegate.remoteBreadcrumb(paramString);
  }
  
  public static void remoteError(Object paramObject, String paramString)
  {
    remoteError(paramObject, null, new YelpLogException(paramString));
  }
  
  public static void remoteError(Object paramObject, String paramString, Throwable paramThrowable)
  {
    String str3 = resolveTag(paramObject);
    String str2 = paramThrowable.getLocalizedMessage();
    String str1 = str2;
    if (!TextUtils.isEmpty(paramString)) {
      str1 = "[" + paramString + "]" + str2;
    }
    e(str3, str1, paramThrowable);
    if (mDelegate != null) {
      mDelegate.remoteError(paramObject, paramString, paramThrowable);
    }
  }
  
  public static void remoteError(Object paramObject, Throwable paramThrowable)
  {
    remoteError(paramObject, null, paramThrowable);
  }
  
  public static void remoteError(Throwable paramThrowable)
  {
    remoteError(null, null, paramThrowable);
  }
  
  public static void removeTopOfStackTrace(Throwable paramThrowable)
  {
    StackTraceElement[] arrayOfStackTraceElement1 = paramThrowable.getStackTrace();
    StackTraceElement[] arrayOfStackTraceElement2 = new StackTraceElement[arrayOfStackTraceElement1.length - 1];
    int i = 0;
    while (i < arrayOfStackTraceElement2.length)
    {
      arrayOfStackTraceElement2[i] = arrayOfStackTraceElement1[(i + 1)];
      i += 1;
    }
    paramThrowable.setStackTrace(arrayOfStackTraceElement2);
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
    return 0;
  }
  
  public static int w(Object paramObject, String paramString)
  {
    showDebugToast(paramString);
    return Log.w(resolveTag(paramObject), paramString);
  }
  
  public static class YelpLogException
    extends Exception
  {
    private static final long serialVersionUID = -8220825712806410535L;
    
    public YelpLogException()
    {
      YelpLog.removeTopOfStackTrace(this);
    }
    
    public YelpLogException(String paramString)
    {
      super();
      YelpLog.removeTopOfStackTrace(this);
    }
  }
  
  public static abstract interface a
  {
    public abstract void remoteBreadcrumb(String paramString);
    
    public abstract void remoteError(Object paramObject, String paramString, Throwable paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.YelpLog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */