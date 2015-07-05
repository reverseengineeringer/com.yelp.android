package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Handler;

class cy
  extends cx
{
  private static cy atJ;
  private static final Object yT = new Object();
  private at atA;
  private volatile ar atB;
  private int atC = 1800000;
  private boolean atD = true;
  private boolean atE = false;
  private boolean atF = true;
  private au atG = new cy.1(this);
  private bo atH;
  private boolean atI = false;
  private Context atz;
  private boolean connected = true;
  private Handler handler;
  
  private void ev()
  {
    atH = new bo(this);
    atH.z(atz);
  }
  
  private void ew()
  {
    handler = new Handler(atz.getMainLooper(), new cy.2(this));
    if (atC > 0) {
      handler.sendMessageDelayed(handler.obtainMessage(1, yT), atC);
    }
  }
  
  public static cy qN()
  {
    if (atJ == null) {
      atJ = new cy();
    }
    return atJ;
  }
  
  void C(boolean paramBoolean)
  {
    try
    {
      a(atI, paramBoolean);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  void a(Context paramContext, ar paramar)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 82	com/google/android/gms/tagmanager/cy:atz	Landroid/content/Context;
    //   6: astore_3
    //   7: aload_3
    //   8: ifnull +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: aload_1
    //   16: invokevirtual 126	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   19: putfield 82	com/google/android/gms/tagmanager/cy:atz	Landroid/content/Context;
    //   22: aload_0
    //   23: getfield 128	com/google/android/gms/tagmanager/cy:atB	Lcom/google/android/gms/tagmanager/ar;
    //   26: ifnonnull -15 -> 11
    //   29: aload_0
    //   30: aload_2
    //   31: putfield 128	com/google/android/gms/tagmanager/cy:atB	Lcom/google/android/gms/tagmanager/ar;
    //   34: goto -23 -> 11
    //   37: astore_1
    //   38: aload_0
    //   39: monitorexit
    //   40: aload_1
    //   41: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	42	0	this	cy
    //   0	42	1	paramContext	Context
    //   0	42	2	paramar	ar
    //   6	2	3	localContext	Context
    // Exception table:
    //   from	to	target	type
    //   2	7	37	finally
    //   14	34	37	finally
  }
  
  void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    for (;;)
    {
      StringBuilder localStringBuilder;
      String str1;
      try
      {
        if (atI == paramBoolean1)
        {
          boolean bool = connected;
          if (bool == paramBoolean2) {
            return;
          }
        }
        if (((paramBoolean1) || (!paramBoolean2)) && (atC > 0)) {
          handler.removeMessages(1, yT);
        }
        if ((!paramBoolean1) && (paramBoolean2) && (atC > 0)) {
          handler.sendMessageDelayed(handler.obtainMessage(1, yT), atC);
        }
        localStringBuilder = new StringBuilder().append("PowerSaveMode ");
        if (paramBoolean1) {
          break label153;
        }
        if (paramBoolean2) {
          break label146;
        }
      }
      finally {}
      bh.V(str1);
      atI = paramBoolean1;
      connected = paramBoolean2;
      continue;
      label146:
      String str2 = "terminated.";
      continue;
      label153:
      str2 = "initiated.";
    }
  }
  
  /* Error */
  public void dispatch()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 46	com/google/android/gms/tagmanager/cy:atE	Z
    //   6: ifne +16 -> 22
    //   9: ldc -98
    //   11: invokestatic 151	com/google/android/gms/tagmanager/bh:V	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: iconst_1
    //   16: putfield 44	com/google/android/gms/tagmanager/cy:atD	Z
    //   19: aload_0
    //   20: monitorexit
    //   21: return
    //   22: aload_0
    //   23: getfield 128	com/google/android/gms/tagmanager/cy:atB	Lcom/google/android/gms/tagmanager/ar;
    //   26: new 160	com/google/android/gms/tagmanager/cy$3
    //   29: dup
    //   30: aload_0
    //   31: invokespecial 161	com/google/android/gms/tagmanager/cy$3:<init>	(Lcom/google/android/gms/tagmanager/cy;)V
    //   34: invokeinterface 166 2 0
    //   39: goto -20 -> 19
    //   42: astore_1
    //   43: aload_0
    //   44: monitorexit
    //   45: aload_1
    //   46: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	47	0	this	cy
    //   42	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	19	42	finally
    //   22	39	42	finally
  }
  
  void ey()
  {
    try
    {
      if ((!atI) && (connected) && (atC > 0))
      {
        handler.removeMessages(1, yT);
        handler.sendMessage(handler.obtainMessage(1, yT));
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  at qO()
  {
    try
    {
      if (atA != null) {
        break label50;
      }
      if (atz == null) {
        throw new IllegalStateException("Cant get a store unless we have a context");
      }
    }
    finally {}
    atA = new cb(atG, atz);
    label50:
    if (handler == null) {
      ew();
    }
    atE = true;
    if (atD)
    {
      dispatch();
      atD = false;
    }
    if ((atH == null) && (atF)) {
      ev();
    }
    at localat = atA;
    return localat;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */