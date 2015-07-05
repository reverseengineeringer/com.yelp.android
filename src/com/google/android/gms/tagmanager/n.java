package com.google.android.gms.tagmanager;

import android.os.Looper;
import com.google.android.gms.common.api.Status;

class n
  implements ContainerHolder
{
  private Status Eb;
  private final Looper JF;
  private boolean Pf;
  private Container aqu;
  private Container aqv;
  private n.b aqw;
  private n.a aqx;
  private TagManager aqy;
  
  public n(Status paramStatus)
  {
    Eb = paramStatus;
    JF = null;
  }
  
  public n(TagManager paramTagManager, Looper paramLooper, Container paramContainer, n.a parama)
  {
    aqy = paramTagManager;
    if (paramLooper != null) {}
    for (;;)
    {
      JF = paramLooper;
      aqu = paramContainer;
      aqx = parama;
      Eb = Status.Kw;
      paramTagManager.a(this);
      return;
      paramLooper = Looper.getMainLooper();
    }
  }
  
  private void pm()
  {
    if (aqw != null) {
      aqw.cu(aqv.pj());
    }
  }
  
  public void a(Container paramContainer)
  {
    for (;;)
    {
      try
      {
        boolean bool = Pf;
        if (bool) {
          return;
        }
        if (paramContainer == null)
        {
          bh.T("Unexpected null container.");
          continue;
        }
        aqv = paramContainer;
      }
      finally {}
      pm();
    }
  }
  
  /* Error */
  public void cr(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 75	com/google/android/gms/tagmanager/n:Pf	Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: getfield 36	com/google/android/gms/tagmanager/n:aqu	Lcom/google/android/gms/tagmanager/Container;
    //   18: aload_1
    //   19: invokevirtual 87	com/google/android/gms/tagmanager/Container:cr	(Ljava/lang/String;)V
    //   22: goto -11 -> 11
    //   25: astore_1
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_1
    //   29: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	30	0	this	n
    //   0	30	1	paramString	String
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	25	finally
    //   14	22	25	finally
  }
  
  void ct(String paramString)
  {
    if (Pf)
    {
      bh.T("setCtfeUrlPathAndQuery called on a released ContainerHolder.");
      return;
    }
    aqx.ct(paramString);
  }
  
  /* Error */
  public Container getContainer()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 75	com/google/android/gms/tagmanager/n:Pf	Z
    //   8: ifeq +12 -> 20
    //   11: ldc 98
    //   13: invokestatic 82	com/google/android/gms/tagmanager/bh:T	(Ljava/lang/String;)V
    //   16: aload_0
    //   17: monitorexit
    //   18: aload_1
    //   19: areturn
    //   20: aload_0
    //   21: getfield 60	com/google/android/gms/tagmanager/n:aqv	Lcom/google/android/gms/tagmanager/Container;
    //   24: ifnull +16 -> 40
    //   27: aload_0
    //   28: aload_0
    //   29: getfield 60	com/google/android/gms/tagmanager/n:aqv	Lcom/google/android/gms/tagmanager/Container;
    //   32: putfield 36	com/google/android/gms/tagmanager/n:aqu	Lcom/google/android/gms/tagmanager/Container;
    //   35: aload_0
    //   36: aconst_null
    //   37: putfield 60	com/google/android/gms/tagmanager/n:aqv	Lcom/google/android/gms/tagmanager/Container;
    //   40: aload_0
    //   41: getfield 36	com/google/android/gms/tagmanager/n:aqu	Lcom/google/android/gms/tagmanager/Container;
    //   44: astore_1
    //   45: goto -29 -> 16
    //   48: astore_1
    //   49: aload_0
    //   50: monitorexit
    //   51: aload_1
    //   52: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	53	0	this	n
    //   1	44	1	localContainer	Container
    //   48	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   4	16	48	finally
    //   20	40	48	finally
    //   40	45	48	finally
  }
  
  String getContainerId()
  {
    if (Pf)
    {
      bh.T("getContainerId called on a released ContainerHolder.");
      return "";
    }
    return aqu.getContainerId();
  }
  
  public Status getStatus()
  {
    return Eb;
  }
  
  String pl()
  {
    if (Pf)
    {
      bh.T("setCtfeUrlPathAndQuery called on a released ContainerHolder.");
      return "";
    }
    return aqx.pl();
  }
  
  /* Error */
  public void refresh()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 75	com/google/android/gms/tagmanager/n:Pf	Z
    //   6: ifeq +11 -> 17
    //   9: ldc 113
    //   11: invokestatic 82	com/google/android/gms/tagmanager/bh:T	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: aload_0
    //   18: getfield 38	com/google/android/gms/tagmanager/n:aqx	Lcom/google/android/gms/tagmanager/n$a;
    //   21: invokeinterface 116 1 0
    //   26: goto -12 -> 14
    //   29: astore_1
    //   30: aload_0
    //   31: monitorexit
    //   32: aload_1
    //   33: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	34	0	this	n
    //   29	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	14	29	finally
    //   17	26	29	finally
  }
  
  /* Error */
  public void release()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 75	com/google/android/gms/tagmanager/n:Pf	Z
    //   6: ifeq +11 -> 17
    //   9: ldc 119
    //   11: invokestatic 82	com/google/android/gms/tagmanager/bh:T	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: aload_0
    //   18: iconst_1
    //   19: putfield 75	com/google/android/gms/tagmanager/n:Pf	Z
    //   22: aload_0
    //   23: getfield 34	com/google/android/gms/tagmanager/n:aqy	Lcom/google/android/gms/tagmanager/TagManager;
    //   26: aload_0
    //   27: invokevirtual 123	com/google/android/gms/tagmanager/TagManager:b	(Lcom/google/android/gms/tagmanager/n;)Z
    //   30: pop
    //   31: aload_0
    //   32: getfield 36	com/google/android/gms/tagmanager/n:aqu	Lcom/google/android/gms/tagmanager/Container;
    //   35: invokevirtual 125	com/google/android/gms/tagmanager/Container:release	()V
    //   38: aload_0
    //   39: aconst_null
    //   40: putfield 36	com/google/android/gms/tagmanager/n:aqu	Lcom/google/android/gms/tagmanager/Container;
    //   43: aload_0
    //   44: aconst_null
    //   45: putfield 60	com/google/android/gms/tagmanager/n:aqv	Lcom/google/android/gms/tagmanager/Container;
    //   48: aload_0
    //   49: aconst_null
    //   50: putfield 38	com/google/android/gms/tagmanager/n:aqx	Lcom/google/android/gms/tagmanager/n$a;
    //   53: aload_0
    //   54: aconst_null
    //   55: putfield 58	com/google/android/gms/tagmanager/n:aqw	Lcom/google/android/gms/tagmanager/n$b;
    //   58: goto -44 -> 14
    //   61: astore_1
    //   62: aload_0
    //   63: monitorexit
    //   64: aload_1
    //   65: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	66	0	this	n
    //   61	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	14	61	finally
    //   17	58	61	finally
  }
  
  public void setContainerAvailableListener(ContainerHolder.ContainerAvailableListener paramContainerAvailableListener)
  {
    for (;;)
    {
      try
      {
        if (Pf)
        {
          bh.T("ContainerHolder is released.");
          return;
        }
        if (paramContainerAvailableListener == null)
        {
          aqw = null;
          continue;
        }
        aqw = new n.b(this, paramContainerAvailableListener, JF);
      }
      finally {}
      if (aqv != null) {
        pm();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */