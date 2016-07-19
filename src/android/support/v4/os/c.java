package android.support.v4.os;

import android.os.Build.VERSION;

public final class c
{
  private boolean a;
  private a b;
  private Object c;
  private boolean d;
  
  public boolean a()
  {
    try
    {
      boolean bool = a;
      return bool;
    }
    finally {}
  }
  
  public void b()
  {
    if (a()) {
      throw new OperationCanceledException();
    }
  }
  
  /* Error */
  public void c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 21	android/support/v4/os/c:a	Z
    //   6: ifeq +6 -> 12
    //   9: aload_0
    //   10: monitorexit
    //   11: return
    //   12: aload_0
    //   13: iconst_1
    //   14: putfield 21	android/support/v4/os/c:a	Z
    //   17: aload_0
    //   18: iconst_1
    //   19: putfield 28	android/support/v4/os/c:d	Z
    //   22: aload_0
    //   23: getfield 30	android/support/v4/os/c:b	Landroid/support/v4/os/c$a;
    //   26: astore_1
    //   27: aload_0
    //   28: getfield 32	android/support/v4/os/c:c	Ljava/lang/Object;
    //   31: astore_2
    //   32: aload_0
    //   33: monitorexit
    //   34: aload_1
    //   35: ifnull +9 -> 44
    //   38: aload_1
    //   39: invokeinterface 34 1 0
    //   44: aload_2
    //   45: ifnull +7 -> 52
    //   48: aload_2
    //   49: invokestatic 39	android/support/v4/os/d:a	(Ljava/lang/Object;)V
    //   52: aload_0
    //   53: monitorenter
    //   54: aload_0
    //   55: iconst_0
    //   56: putfield 28	android/support/v4/os/c:d	Z
    //   59: aload_0
    //   60: invokevirtual 42	java/lang/Object:notifyAll	()V
    //   63: aload_0
    //   64: monitorexit
    //   65: return
    //   66: astore_1
    //   67: aload_0
    //   68: monitorexit
    //   69: aload_1
    //   70: athrow
    //   71: astore_1
    //   72: aload_0
    //   73: monitorexit
    //   74: aload_1
    //   75: athrow
    //   76: astore_1
    //   77: aload_0
    //   78: monitorenter
    //   79: aload_0
    //   80: iconst_0
    //   81: putfield 28	android/support/v4/os/c:d	Z
    //   84: aload_0
    //   85: invokevirtual 42	java/lang/Object:notifyAll	()V
    //   88: aload_0
    //   89: monitorexit
    //   90: aload_1
    //   91: athrow
    //   92: astore_1
    //   93: aload_0
    //   94: monitorexit
    //   95: aload_1
    //   96: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	97	0	this	c
    //   26	13	1	locala	a
    //   66	4	1	localObject1	Object
    //   71	4	1	localObject2	Object
    //   76	15	1	localObject3	Object
    //   92	4	1	localObject4	Object
    //   31	18	2	localObject5	Object
    // Exception table:
    //   from	to	target	type
    //   54	65	66	finally
    //   67	69	66	finally
    //   2	11	71	finally
    //   12	34	71	finally
    //   72	74	71	finally
    //   38	44	76	finally
    //   48	52	76	finally
    //   79	90	92	finally
    //   93	95	92	finally
  }
  
  public Object d()
  {
    if (Build.VERSION.SDK_INT < 16) {
      return null;
    }
    try
    {
      if (c == null)
      {
        c = d.a();
        if (a) {
          d.a(c);
        }
      }
      Object localObject1 = c;
      return localObject1;
    }
    finally {}
  }
  
  public static abstract interface a
  {
    public abstract void a();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.os.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */