package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri.Builder;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.LinkedList;

@ey
public class ex
  implements Thread.UncaughtExceptionHandler
{
  private Context mContext;
  private Thread.UncaughtExceptionHandler tf;
  private Thread.UncaughtExceptionHandler tg;
  private gs th;
  
  public ex(Context paramContext, gs paramgs, Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler1, Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler2)
  {
    tf = paramUncaughtExceptionHandler1;
    tg = paramUncaughtExceptionHandler2;
    mContext = paramContext;
    th = paramgs;
  }
  
  public static ex a(Context paramContext, Thread paramThread, gs paramgs)
  {
    if ((paramContext == null) || (paramThread == null) || (paramgs == null)) {
      return null;
    }
    ga.bN();
    if (!k(paramContext)) {
      return null;
    }
    Thread.UncaughtExceptionHandler localUncaughtExceptionHandler = paramThread.getUncaughtExceptionHandler();
    paramContext = new ex(paramContext, paramgs, localUncaughtExceptionHandler, Thread.getDefaultUncaughtExceptionHandler());
    if ((localUncaughtExceptionHandler == null) || (!(localUncaughtExceptionHandler instanceof ex))) {
      try
      {
        paramThread.setUncaughtExceptionHandler(paramContext);
        return paramContext;
      }
      catch (SecurityException paramContext)
      {
        gr.c("Fail to set UncaughtExceptionHandler.", paramContext);
        return null;
      }
    }
    return (ex)localUncaughtExceptionHandler;
  }
  
  private String cD()
  {
    String str1 = Build.MANUFACTURER;
    String str2 = Build.MODEL;
    if (str2.startsWith(str1)) {
      return str2;
    }
    return str1 + " " + str2;
  }
  
  private Throwable d(Throwable paramThrowable)
  {
    Object localObject = ga.bN();
    if ((localObject != null) && (((Bundle)localObject).getBoolean("gads:sdk_crash_report_full_stacktrace", false))) {
      return paramThrowable;
    }
    localObject = new LinkedList();
    while (paramThrowable != null)
    {
      ((LinkedList)localObject).push(paramThrowable);
      paramThrowable = paramThrowable.getCause();
    }
    paramThrowable = null;
    Throwable localThrowable;
    if (!((LinkedList)localObject).isEmpty())
    {
      localThrowable = (Throwable)((LinkedList)localObject).pop();
      StackTraceElement[] arrayOfStackTraceElement = localThrowable.getStackTrace();
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(new StackTraceElement(localThrowable.getClass().getName(), "<filtered>", "<filtered>", 1));
      int k = arrayOfStackTraceElement.length;
      int i = 0;
      int j = 0;
      if (i < k)
      {
        StackTraceElement localStackTraceElement = arrayOfStackTraceElement[i];
        if (G(localStackTraceElement.getClassName()))
        {
          localArrayList.add(localStackTraceElement);
          j = 1;
        }
        for (;;)
        {
          i += 1;
          break;
          if (H(localStackTraceElement.getClassName())) {
            localArrayList.add(localStackTraceElement);
          } else {
            localArrayList.add(new StackTraceElement("<filtered>", "<filtered>", "<filtered>", 1));
          }
        }
      }
      if (j == 0) {
        break label267;
      }
      if (paramThrowable == null)
      {
        paramThrowable = new Throwable(localThrowable.getMessage());
        label229:
        paramThrowable.setStackTrace((StackTraceElement[])localArrayList.toArray(new StackTraceElement[0]));
      }
    }
    label267:
    for (;;)
    {
      break;
      paramThrowable = new Throwable(localThrowable.getMessage(), paramThrowable);
      break label229;
      return paramThrowable;
    }
  }
  
  private static boolean k(Context paramContext)
  {
    paramContext = ga.bN();
    if (paramContext == null) {}
    while (!paramContext.getBoolean("gads:sdk_crash_report_enabled", false)) {
      return false;
    }
    return true;
  }
  
  protected boolean G(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return false;
    }
    if (paramString.startsWith("com.google.android.gms.ads")) {
      return true;
    }
    if (paramString.startsWith("com.google.ads")) {
      return true;
    }
    try
    {
      boolean bool = Class.forName(paramString).isAnnotationPresent(ey.class);
      return bool;
    }
    catch (Exception localException)
    {
      gr.a("Fail to check class type for class " + paramString, localException);
    }
    return false;
  }
  
  protected boolean H(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    while ((!paramString.startsWith("android.")) && (!paramString.startsWith("java."))) {
      return false;
    }
    return true;
  }
  
  protected boolean a(Throwable paramThrowable)
  {
    boolean bool = true;
    if (paramThrowable == null) {
      return false;
    }
    int j = 0;
    int k = 0;
    while (paramThrowable != null)
    {
      StackTraceElement[] arrayOfStackTraceElement = paramThrowable.getStackTrace();
      int m = arrayOfStackTraceElement.length;
      int i = 0;
      while (i < m)
      {
        StackTraceElement localStackTraceElement = arrayOfStackTraceElement[i];
        if (G(localStackTraceElement.getClassName())) {
          k = 1;
        }
        if (getClass().getName().equals(localStackTraceElement.getClassName())) {
          j = 1;
        }
        i += 1;
      }
      paramThrowable = paramThrowable.getCause();
    }
    if ((k != 0) && (j == 0)) {}
    for (;;)
    {
      return bool;
      bool = false;
    }
  }
  
  public void b(Throwable paramThrowable)
  {
    if (!k(mContext)) {}
    do
    {
      return;
      paramThrowable = d(paramThrowable);
    } while (paramThrowable == null);
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(c(paramThrowable));
    gi.a(mContext, th.wS, localArrayList, ga.dn());
  }
  
  protected String c(Throwable paramThrowable)
  {
    StringWriter localStringWriter = new StringWriter();
    paramThrowable.printStackTrace(new PrintWriter(localStringWriter));
    return new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("id", "gmob-apps-report-exception").appendQueryParameter("os", Build.VERSION.RELEASE).appendQueryParameter("api", String.valueOf(Build.VERSION.SDK_INT)).appendQueryParameter("device", cD()).appendQueryParameter("js", th.wS).appendQueryParameter("appid", mContext.getApplicationContext().getPackageName()).appendQueryParameter("stacktrace", localStringWriter.toString()).toString();
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    if (a(paramThrowable))
    {
      b(paramThrowable);
      if (Looper.getMainLooper().getThread() == paramThread) {}
    }
    do
    {
      return;
      if (tf != null)
      {
        tf.uncaughtException(paramThread, paramThrowable);
        return;
      }
    } while (tg == null);
    tg.uncaughtException(paramThread, paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ex
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */