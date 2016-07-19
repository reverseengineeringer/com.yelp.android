package com.google.android.gms.tagmanager;

import android.os.Handler;
import android.os.Message;
import com.google.android.gms.common.api.Status;

class ak
  implements b
{
  private a a;
  private a b;
  private Status c;
  private b d;
  private a e;
  private boolean f;
  private d g;
  
  /* Error */
  public void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 26	com/google/android/gms/tagmanager/ak:f	Z
    //   6: ifeq +11 -> 17
    //   9: ldc 28
    //   11: invokestatic 33	com/google/android/gms/tagmanager/m:a	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: aload_0
    //   18: getfield 35	com/google/android/gms/tagmanager/ak:e	Lcom/google/android/gms/tagmanager/ak$a;
    //   21: invokeinterface 37 1 0
    //   26: goto -12 -> 14
    //   29: astore_1
    //   30: aload_0
    //   31: monitorexit
    //   32: aload_1
    //   33: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	34	0	this	ak
    //   29	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	14	29	finally
    //   17	26	29	finally
  }
  
  /* Error */
  public void a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 26	com/google/android/gms/tagmanager/ak:f	Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: getfield 40	com/google/android/gms/tagmanager/ak:a	Lcom/google/android/gms/tagmanager/a;
    //   18: aload_1
    //   19: invokevirtual 43	com/google/android/gms/tagmanager/a:a	(Ljava/lang/String;)V
    //   22: goto -11 -> 11
    //   25: astore_1
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_1
    //   29: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	30	0	this	ak
    //   0	30	1	paramString	String
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	25	finally
    //   14	22	25	finally
  }
  
  String b()
  {
    if (f)
    {
      m.a("getContainerId called on a released ContainerHolder.");
      return "";
    }
    return a.a();
  }
  
  void b(String paramString)
  {
    if (f)
    {
      m.a("setCtfeUrlPathAndQuery called on a released ContainerHolder.");
      return;
    }
    e.a(paramString);
  }
  
  String c()
  {
    if (f)
    {
      m.a("setCtfeUrlPathAndQuery called on a released ContainerHolder.");
      return "";
    }
    return e.b();
  }
  
  public Status getStatus()
  {
    return c;
  }
  
  /* Error */
  public void release()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 26	com/google/android/gms/tagmanager/ak:f	Z
    //   6: ifeq +11 -> 17
    //   9: ldc 62
    //   11: invokestatic 33	com/google/android/gms/tagmanager/m:a	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: monitorexit
    //   16: return
    //   17: aload_0
    //   18: iconst_1
    //   19: putfield 26	com/google/android/gms/tagmanager/ak:f	Z
    //   22: aload_0
    //   23: getfield 64	com/google/android/gms/tagmanager/ak:g	Lcom/google/android/gms/tagmanager/d;
    //   26: aload_0
    //   27: invokevirtual 69	com/google/android/gms/tagmanager/d:a	(Lcom/google/android/gms/tagmanager/ak;)Z
    //   30: pop
    //   31: aload_0
    //   32: getfield 40	com/google/android/gms/tagmanager/ak:a	Lcom/google/android/gms/tagmanager/a;
    //   35: invokevirtual 71	com/google/android/gms/tagmanager/a:b	()V
    //   38: aload_0
    //   39: aconst_null
    //   40: putfield 40	com/google/android/gms/tagmanager/ak:a	Lcom/google/android/gms/tagmanager/a;
    //   43: aload_0
    //   44: aconst_null
    //   45: putfield 73	com/google/android/gms/tagmanager/ak:b	Lcom/google/android/gms/tagmanager/a;
    //   48: aload_0
    //   49: aconst_null
    //   50: putfield 35	com/google/android/gms/tagmanager/ak:e	Lcom/google/android/gms/tagmanager/ak$a;
    //   53: aload_0
    //   54: aconst_null
    //   55: putfield 75	com/google/android/gms/tagmanager/ak:d	Lcom/google/android/gms/tagmanager/ak$b;
    //   58: goto -44 -> 14
    //   61: astore_1
    //   62: aload_0
    //   63: monitorexit
    //   64: aload_1
    //   65: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	66	0	this	ak
    //   61	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	14	61	finally
    //   17	58	61	finally
  }
  
  public static abstract interface a
  {
    public abstract void a();
    
    public abstract void a(String paramString);
    
    public abstract String b();
  }
  
  private class b
    extends Handler
  {
    private final b.a b;
    
    protected void a(String paramString)
    {
      b.a(a, paramString);
    }
    
    public void handleMessage(Message paramMessage)
    {
      switch (what)
      {
      default: 
        m.a("Don't know how to handle this message.");
        return;
      }
      a((String)obj);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */