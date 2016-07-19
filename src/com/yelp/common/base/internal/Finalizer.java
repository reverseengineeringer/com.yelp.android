package com.yelp.common.base.internal;

import java.lang.ref.PhantomReference;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.logging.Level;
import java.util.logging.Logger;

public class Finalizer
  extends Thread
{
  private static final String FINALIZABLE_REFERENCE = "com.yelp.common.base.FinalizableReference";
  private static final Field inheritableThreadLocals = getInheritableThreadLocalsField();
  private static final Logger logger = Logger.getLogger(Finalizer.class.getName());
  private final WeakReference<Class<?>> finalizableReferenceClassReference;
  private final PhantomReference<Object> frqReference;
  private final ReferenceQueue<Object> queue = new ReferenceQueue();
  
  private Finalizer(Class<?> paramClass, Object paramObject)
  {
    super(Finalizer.class.getName());
    finalizableReferenceClassReference = new WeakReference(paramClass);
    frqReference = new PhantomReference(paramObject, queue);
    setDaemon(true);
    try
    {
      if (inheritableThreadLocals != null) {
        inheritableThreadLocals.set(this, null);
      }
      return;
    }
    catch (Throwable paramClass)
    {
      logger.log(Level.INFO, "Failed to clear thread local values inherited by reference finalizer thread.", paramClass);
    }
  }
  
  private void cleanUp(Reference<?> paramReference)
    throws Finalizer.ShutDown
  {
    Method localMethod = getFinalizeReferentMethod();
    for (;;)
    {
      paramReference.clear();
      if (paramReference == frqReference) {
        throw new ShutDown(null);
      }
      try
      {
        localMethod.invoke(paramReference, new Object[0]);
        Reference localReference = queue.poll();
        paramReference = localReference;
        if (localReference != null) {
          continue;
        }
        return;
      }
      catch (Throwable paramReference)
      {
        for (;;)
        {
          logger.log(Level.SEVERE, "Error cleaning up after reference.", paramReference);
        }
      }
    }
  }
  
  private Method getFinalizeReferentMethod()
    throws Finalizer.ShutDown
  {
    Object localObject = (Class)finalizableReferenceClassReference.get();
    if (localObject == null) {
      throw new ShutDown(null);
    }
    try
    {
      localObject = ((Class)localObject).getMethod("finalizeReferent", new Class[0]);
      return (Method)localObject;
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      throw new AssertionError(localNoSuchMethodException);
    }
  }
  
  public static Field getInheritableThreadLocalsField()
  {
    try
    {
      Field localField = Thread.class.getDeclaredField("inheritableThreadLocals");
      localField.setAccessible(true);
      return localField;
    }
    catch (Throwable localThrowable)
    {
      logger.log(Level.INFO, "Couldn't access Thread.inheritableThreadLocals. Reference finalizer threads will inherit thread local values.");
    }
    return null;
  }
  
  public static ReferenceQueue<Object> startFinalizer(Class<?> paramClass, Object paramObject)
  {
    if (!paramClass.getName().equals("com.yelp.common.base.FinalizableReference")) {
      throw new IllegalArgumentException("Expected com.yelp.common.base.FinalizableReference.");
    }
    paramClass = new Finalizer(paramClass, paramObject);
    paramClass.start();
    return queue;
  }
  
  public void run()
  {
    try
    {
      for (;;)
      {
        cleanUp(queue.remove());
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
    catch (ShutDown localShutDown) {}
  }
  
  private static class ShutDown
    extends Exception
  {}
}

/* Location:
 * Qualified Name:     com.yelp.common.base.internal.Finalizer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */