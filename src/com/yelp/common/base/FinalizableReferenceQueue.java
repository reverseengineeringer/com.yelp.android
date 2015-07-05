package com.yelp.common.base;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.reflect.Method;
import java.util.logging.Level;
import java.util.logging.Logger;

public class FinalizableReferenceQueue
{
  private static final String FINALIZER_CLASS_NAME = "com.yelp.common.base.internal.Finalizer";
  private static final Logger logger = Logger.getLogger(FinalizableReferenceQueue.class.getName());
  private static final Method startFinalizer = getStartFinalizer(loadFinalizer(new c[] { new d(), new b() }));
  final ReferenceQueue<Object> queue;
  final boolean threadStarted;
  
  public FinalizableReferenceQueue()
  {
    try
    {
      localReferenceQueue1 = (ReferenceQueue)startFinalizer.invoke(null, new Object[] { a.class, this });
      bool = true;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      ReferenceQueue localReferenceQueue1;
      throw new AssertionError(localIllegalAccessException);
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        logger.log(Level.INFO, "Failed to start reference finalizer thread. Reference cleanup will only occur when new references are created.", localThrowable);
        ReferenceQueue localReferenceQueue2 = new ReferenceQueue();
        boolean bool = false;
      }
    }
    queue = localReferenceQueue1;
    threadStarted = bool;
  }
  
  static Method getStartFinalizer(Class<?> paramClass)
  {
    try
    {
      paramClass = paramClass.getMethod("startFinalizer", new Class[] { Class.class, Object.class });
      return paramClass;
    }
    catch (NoSuchMethodException paramClass)
    {
      throw new AssertionError(paramClass);
    }
  }
  
  private static Class<?> loadFinalizer(c... paramVarArgs)
  {
    int j = paramVarArgs.length;
    int i = 0;
    while (i < j)
    {
      Class localClass = paramVarArgs[i].loadFinalizer();
      if (localClass != null) {
        return localClass;
      }
      i += 1;
    }
    throw new AssertionError();
  }
  
  void cleanUp()
  {
    if (threadStarted) {
      return;
    }
    for (;;)
    {
      Reference localReference = queue.poll();
      if (localReference == null) {
        break;
      }
      localReference.clear();
      try
      {
        ((a)localReference).finalizeReferent();
      }
      catch (Throwable localThrowable)
      {
        logger.log(Level.SEVERE, "Error cleaning up after reference.", localThrowable);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.base.FinalizableReferenceQueue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */