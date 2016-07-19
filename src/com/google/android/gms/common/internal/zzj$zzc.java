package com.google.android.gms.common.internal;

import java.util.ArrayList;

public abstract class zzj$zzc<TListener>
{
  private TListener mListener;
  private boolean zzalM;
  
  public zzj$zzc(TListener paramTListener)
  {
    Object localObject;
    mListener = localObject;
    zzalM = false;
  }
  
  public void unregister()
  {
    zzqO();
    synchronized (zzj.zzd(zzalL))
    {
      zzj.zzd(zzalL).remove(this);
      return;
    }
  }
  
  protected abstract void zzqM();
  
  /* Error */
  public void zzqN()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 24	com/google/android/gms/common/internal/zzj$zzc:mListener	Ljava/lang/Object;
    //   6: astore_1
    //   7: aload_0
    //   8: getfield 26	com/google/android/gms/common/internal/zzj$zzc:zzalM	Z
    //   11: ifeq +33 -> 44
    //   14: ldc 49
    //   16: new 51	java/lang/StringBuilder
    //   19: dup
    //   20: invokespecial 52	java/lang/StringBuilder:<init>	()V
    //   23: ldc 54
    //   25: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: aload_0
    //   29: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   32: ldc 63
    //   34: invokevirtual 58	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: invokevirtual 67	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   40: invokestatic 73	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   43: pop
    //   44: aload_0
    //   45: monitorexit
    //   46: aload_1
    //   47: ifnull +34 -> 81
    //   50: aload_0
    //   51: aload_1
    //   52: invokevirtual 77	com/google/android/gms/common/internal/zzj$zzc:zzw	(Ljava/lang/Object;)V
    //   55: aload_0
    //   56: monitorenter
    //   57: aload_0
    //   58: iconst_1
    //   59: putfield 26	com/google/android/gms/common/internal/zzj$zzc:zzalM	Z
    //   62: aload_0
    //   63: monitorexit
    //   64: aload_0
    //   65: invokevirtual 79	com/google/android/gms/common/internal/zzj$zzc:unregister	()V
    //   68: return
    //   69: astore_1
    //   70: aload_0
    //   71: monitorexit
    //   72: aload_1
    //   73: athrow
    //   74: astore_1
    //   75: aload_0
    //   76: invokevirtual 81	com/google/android/gms/common/internal/zzj$zzc:zzqM	()V
    //   79: aload_1
    //   80: athrow
    //   81: aload_0
    //   82: invokevirtual 81	com/google/android/gms/common/internal/zzj$zzc:zzqM	()V
    //   85: goto -30 -> 55
    //   88: astore_1
    //   89: aload_0
    //   90: monitorexit
    //   91: aload_1
    //   92: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	93	0	this	zzc
    //   6	46	1	localObject1	Object
    //   69	4	1	localObject2	Object
    //   74	6	1	localRuntimeException	RuntimeException
    //   88	4	1	localObject3	Object
    // Exception table:
    //   from	to	target	type
    //   2	44	69	finally
    //   44	46	69	finally
    //   70	72	69	finally
    //   50	55	74	java/lang/RuntimeException
    //   57	64	88	finally
    //   89	91	88	finally
  }
  
  public void zzqO()
  {
    try
    {
      mListener = null;
      return;
    }
    finally {}
  }
  
  protected abstract void zzw(TListener paramTListener);
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzj.zzc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */