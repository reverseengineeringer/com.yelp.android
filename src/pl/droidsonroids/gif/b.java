package pl.droidsonroids.gif;

class b
{
  private volatile boolean a;
  
  void a()
  {
    try
    {
      boolean bool = a;
      a = true;
      if (!bool) {
        notify();
      }
      return;
    }
    finally {}
  }
  
  void a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        a();
        return;
      }
      finally {}
      b();
    }
  }
  
  void b()
  {
    try
    {
      a = false;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  void c()
    throws java.lang.InterruptedException
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 13	pl/droidsonroids/gif/b:a	Z
    //   6: ifne +15 -> 21
    //   9: aload_0
    //   10: invokevirtual 28	java/lang/Object:wait	()V
    //   13: goto -11 -> 2
    //   16: astore_1
    //   17: aload_0
    //   18: monitorexit
    //   19: aload_1
    //   20: athrow
    //   21: aload_0
    //   22: monitorexit
    //   23: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	24	0	this	b
    //   16	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	13	16	finally
  }
}

/* Location:
 * Qualified Name:     pl.droidsonroids.gif.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */