package com.google.android.gms.internal;

import android.content.Context;
import android.util.Log;

public final class jp
{
  private final String Nq;
  
  public jp(String paramString)
  {
    Nq = ((String)jx.i(paramString));
  }
  
  public void a(Context paramContext, String paramString1, String paramString2, Throwable paramThrowable)
  {
    StackTraceElement[] arrayOfStackTraceElement = paramThrowable.getStackTrace();
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    while ((i < arrayOfStackTraceElement.length) && (i < 2))
    {
      localStringBuilder.append(arrayOfStackTraceElement[i].toString());
      localStringBuilder.append("\n");
      i += 1;
    }
    paramContext = new oo(paramContext, 10);
    paramContext.a("GMS_WTF", null, new String[] { "GMS_WTF", localStringBuilder.toString() });
    paramContext.send();
    if (aF(7))
    {
      Log.e(paramString1, paramString2, paramThrowable);
      Log.wtf(paramString1, paramString2, paramThrowable);
    }
  }
  
  public void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (aF(4)) {
      Log.i(paramString1, paramString2, paramThrowable);
    }
  }
  
  public boolean aF(int paramInt)
  {
    return Log.isLoggable(Nq, paramInt);
  }
  
  public void b(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (aF(5)) {
      Log.w(paramString1, paramString2, paramThrowable);
    }
  }
  
  public void c(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (aF(6)) {
      Log.e(paramString1, paramString2, paramThrowable);
    }
  }
  
  public void m(String paramString1, String paramString2)
  {
    if (aF(3)) {
      Log.d(paramString1, paramString2);
    }
  }
  
  public void n(String paramString1, String paramString2)
  {
    if (aF(2)) {
      Log.v(paramString1, paramString2);
    }
  }
  
  public void o(String paramString1, String paramString2)
  {
    if (aF(5)) {
      Log.w(paramString1, paramString2);
    }
  }
  
  public void p(String paramString1, String paramString2)
  {
    if (aF(6)) {
      Log.e(paramString1, paramString2);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */