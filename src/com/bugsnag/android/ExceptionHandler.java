package com.bugsnag.android;

import java.io.PrintStream;
import java.util.Iterator;
import java.util.Set;
import java.util.WeakHashMap;

class ExceptionHandler
  implements Thread.UncaughtExceptionHandler
{
  final WeakHashMap<Client, Boolean> clientMap = new WeakHashMap();
  private final Thread.UncaughtExceptionHandler originalHandler;
  
  public ExceptionHandler(Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler)
  {
    originalHandler = paramUncaughtExceptionHandler;
  }
  
  static void disable(Client paramClient)
  {
    Object localObject = Thread.getDefaultUncaughtExceptionHandler();
    if ((localObject instanceof ExceptionHandler))
    {
      localObject = (ExceptionHandler)localObject;
      clientMap.remove(paramClient);
      if (clientMap.size() == 0) {
        Thread.setDefaultUncaughtExceptionHandler(originalHandler);
      }
    }
  }
  
  static void enable(Client paramClient)
  {
    Object localObject = Thread.getDefaultUncaughtExceptionHandler();
    if ((localObject instanceof ExceptionHandler)) {
      localObject = (ExceptionHandler)localObject;
    }
    for (;;)
    {
      clientMap.put(paramClient, Boolean.valueOf(true));
      return;
      localObject = new ExceptionHandler((Thread.UncaughtExceptionHandler)localObject);
      Thread.setDefaultUncaughtExceptionHandler((Thread.UncaughtExceptionHandler)localObject);
    }
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    Iterator localIterator = clientMap.keySet().iterator();
    while (localIterator.hasNext()) {
      ((Client)localIterator.next()).notify(paramThrowable, Severity.ERROR);
    }
    if (originalHandler != null)
    {
      originalHandler.uncaughtException(paramThread, paramThrowable);
      return;
    }
    System.err.printf("Exception in thread \"%s\" ", new Object[] { paramThread.getName() });
    paramThrowable.printStackTrace(System.err);
  }
}

/* Location:
 * Qualified Name:     com.bugsnag.android.ExceptionHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */