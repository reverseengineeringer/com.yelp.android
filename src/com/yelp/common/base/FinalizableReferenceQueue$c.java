package com.yelp.common.base;

class FinalizableReferenceQueue$c
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

/* Location:
 * Qualified Name:     com.yelp.common.base.FinalizableReferenceQueue.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */