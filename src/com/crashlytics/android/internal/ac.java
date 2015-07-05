package com.crashlytics.android.internal;

import java.util.concurrent.Callable;

public abstract class ac<V>
  implements Callable<V>
{
  protected abstract void a();
  
  protected abstract V b();
  
  /* Error */
  public V call()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: aload_0
    //   3: invokevirtual 22	com/crashlytics/android/internal/ac:b	()Ljava/lang/Object;
    //   6: astore_2
    //   7: aload_0
    //   8: invokevirtual 24	com/crashlytics/android/internal/ac:a	()V
    //   11: aload_2
    //   12: areturn
    //   13: astore_2
    //   14: new 18	com/crashlytics/android/internal/aD
    //   17: dup
    //   18: aload_2
    //   19: invokespecial 27	com/crashlytics/android/internal/aD:<init>	(Ljava/io/IOException;)V
    //   22: athrow
    //   23: astore_2
    //   24: aload_2
    //   25: athrow
    //   26: astore_2
    //   27: aload_0
    //   28: invokevirtual 24	com/crashlytics/android/internal/ac:a	()V
    //   31: aload_2
    //   32: athrow
    //   33: astore_2
    //   34: new 18	com/crashlytics/android/internal/aD
    //   37: dup
    //   38: aload_2
    //   39: invokespecial 27	com/crashlytics/android/internal/aD:<init>	(Ljava/io/IOException;)V
    //   42: athrow
    //   43: astore_3
    //   44: iload_1
    //   45: ifne -14 -> 31
    //   48: new 18	com/crashlytics/android/internal/aD
    //   51: dup
    //   52: aload_3
    //   53: invokespecial 27	com/crashlytics/android/internal/aD:<init>	(Ljava/io/IOException;)V
    //   56: athrow
    //   57: astore_2
    //   58: iconst_0
    //   59: istore_1
    //   60: goto -33 -> 27
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	63	0	this	ac
    //   1	59	1	i	int
    //   6	6	2	localObject1	Object
    //   13	6	2	localIOException1	java.io.IOException
    //   23	2	2	localaD	aD
    //   26	6	2	localObject2	Object
    //   33	6	2	localIOException2	java.io.IOException
    //   57	1	2	localObject3	Object
    //   43	10	3	localIOException3	java.io.IOException
    // Exception table:
    //   from	to	target	type
    //   7	11	13	java/io/IOException
    //   2	7	23	com/crashlytics/android/internal/aD
    //   24	26	26	finally
    //   34	43	26	finally
    //   2	7	33	java/io/IOException
    //   27	31	43	java/io/IOException
    //   2	7	57	finally
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */