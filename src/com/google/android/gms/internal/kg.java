package com.google.android.gms.internal;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.os.Binder;
import java.util.Iterator;
import java.util.List;

public class kg
{
  public static String a(int paramInt1, int paramInt2)
  {
    StackTraceElement[] arrayOfStackTraceElement = Thread.currentThread().getStackTrace();
    StringBuffer localStringBuffer = new StringBuffer();
    int i = paramInt1;
    while (i < paramInt2 + paramInt1)
    {
      localStringBuffer.append(a(arrayOfStackTraceElement, i)).append(" ");
      i += 1;
    }
    return localStringBuffer.toString();
  }
  
  public static String a(Context paramContext)
  {
    return a(paramContext, Binder.getCallingPid());
  }
  
  public static String a(Context paramContext, int paramInt)
  {
    paramContext = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
    if (paramContext != null)
    {
      paramContext = paramContext.iterator();
      while (paramContext.hasNext())
      {
        ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)paramContext.next();
        if (pid == paramInt) {
          return processName;
        }
      }
    }
    return null;
  }
  
  private static String a(StackTraceElement[] paramArrayOfStackTraceElement, int paramInt)
  {
    if (paramInt + 4 >= paramArrayOfStackTraceElement.length) {
      return "<bottom of call stack>";
    }
    paramArrayOfStackTraceElement = paramArrayOfStackTraceElement[(paramInt + 4)];
    return paramArrayOfStackTraceElement.getClassName() + "." + paramArrayOfStackTraceElement.getMethodName() + ":" + paramArrayOfStackTraceElement.getLineNumber();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */