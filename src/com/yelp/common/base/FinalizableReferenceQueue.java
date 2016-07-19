package com.yelp.common.base;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.reflect.Method;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.logging.Level;
import java.util.logging.Logger;

public class FinalizableReferenceQueue
{
  private static final String FINALIZER_CLASS_NAME = "com.yelp.common.base.internal.Finalizer";
  private static final Logger logger = Logger.getLogger(FinalizableReferenceQueue.class.getName());
  private static final Method startFinalizer = getStartFinalizer(loadFinalizer(new b[] { new c(), new a() }));
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
  
  private static Class<?> loadFinalizer(b... paramVarArgs)
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
  
  static class DecoupledLoader
    implements FinalizableReferenceQueue.b
  {
    private static final String LOADING_ERROR = "Could not load Finalizer in its own class loader. Loading Finalizer in the current class loader instead. As a result, you will not be able to garbage collect this class loader. To support reclaiming this class loader, either resolve the underlying issue, or move Google Collections to your system class path.";
    
    URL getBaseUrl()
      throws IOException
    {
      String str1 = "com.yelp.common.base.internal.Finalizer".replace('.', '/') + ".class";
      URL localURL = getClass().getClassLoader().getResource(str1);
      if (localURL == null) {
        throw new FileNotFoundException(str1);
      }
      String str2 = localURL.toString();
      if (!str2.endsWith(str1)) {
        throw new IOException("Unsupported path style: " + str2);
      }
      return new URL(localURL, str2.substring(0, str2.length() - str1.length()));
    }
    
    public Class<?> loadFinalizer()
    {
      try
      {
        Class localClass = newLoader(getBaseUrl()).loadClass("com.yelp.common.base.internal.Finalizer");
        return localClass;
      }
      catch (Exception localException)
      {
        FinalizableReferenceQueue.logger.log(Level.WARNING, "Could not load Finalizer in its own class loader. Loading Finalizer in the current class loader instead. As a result, you will not be able to garbage collect this class loader. To support reclaiming this class loader, either resolve the underlying issue, or move Google Collections to your system class path.", localException);
      }
      return null;
    }
    
    URLClassLoader newLoader(URL paramURL)
    {
      return new URLClassLoader(new URL[] { paramURL });
    }
  }
  
  static class a
    implements FinalizableReferenceQueue.b
  {
    public Class<?> loadFinalizer()
    {
      try
      {
        Class localClass = Class.forName("com.yelp.common.base.internal.Finalizer");
        return localClass;
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        throw new AssertionError(localClassNotFoundException);
      }
    }
  }
  
  static abstract interface b
  {
    public abstract Class<?> loadFinalizer();
  }
  
  static class c
    implements FinalizableReferenceQueue.b
  {
    /* Error */
    public Class<?> loadFinalizer()
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore_1
      //   2: invokestatic 26	java/lang/ClassLoader:getSystemClassLoader	()Ljava/lang/ClassLoader;
      //   5: astore_2
      //   6: aload_2
      //   7: ifnull +10 -> 17
      //   10: aload_2
      //   11: ldc 28
      //   13: invokevirtual 32	java/lang/ClassLoader:loadClass	(Ljava/lang/String;)Ljava/lang/Class;
      //   16: astore_1
      //   17: aload_1
      //   18: areturn
      //   19: astore_1
      //   20: invokestatic 36	com/yelp/common/base/FinalizableReferenceQueue:access$000	()Ljava/util/logging/Logger;
      //   23: ldc 38
      //   25: invokevirtual 44	java/util/logging/Logger:info	(Ljava/lang/String;)V
      //   28: aconst_null
      //   29: areturn
      //   30: astore_1
      //   31: aconst_null
      //   32: areturn
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	33	0	this	c
      //   1	17	1	localClass	Class
      //   19	1	1	localSecurityException	SecurityException
      //   30	1	1	localClassNotFoundException	ClassNotFoundException
      //   5	6	2	localClassLoader	ClassLoader
      // Exception table:
      //   from	to	target	type
      //   2	6	19	java/lang/SecurityException
      //   10	17	30	java/lang/ClassNotFoundException
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.base.FinalizableReferenceQueue
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */