package com.google.android.gms.tagmanager;

class ad
  extends ac
{
  private static final Object a = new Object();
  private static ad k;
  private j b;
  private volatile i c;
  private int d = 1800000;
  private boolean e = true;
  private boolean f = false;
  private boolean g = true;
  private boolean h = true;
  private k i = new k() {};
  private boolean j = false;
  
  public static ad b()
  {
    if (k == null) {
      k = new ad();
    }
    return k;
  }
  
  /* Error */
  public void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 44	com/google/android/gms/tagmanager/ad:f	Z
    //   6: ifne +16 -> 22
    //   9: ldc 64
    //   11: invokestatic 69	com/google/android/gms/tagmanager/m:d	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: iconst_1
    //   16: putfield 42	com/google/android/gms/tagmanager/ad:e	Z
    //   19: aload_0
    //   20: monitorexit
    //   21: return
    //   22: aload_0
    //   23: getfield 71	com/google/android/gms/tagmanager/ad:c	Lcom/google/android/gms/tagmanager/i;
    //   26: new 8	com/google/android/gms/tagmanager/ad$2
    //   29: dup
    //   30: aload_0
    //   31: invokespecial 72	com/google/android/gms/tagmanager/ad$2:<init>	(Lcom/google/android/gms/tagmanager/ad;)V
    //   34: invokeinterface 77 2 0
    //   39: goto -20 -> 19
    //   42: astore_1
    //   43: aload_0
    //   44: monitorexit
    //   45: aload_1
    //   46: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	47	0	this	ad
    //   42	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	19	42	finally
    //   22	39	42	finally
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */