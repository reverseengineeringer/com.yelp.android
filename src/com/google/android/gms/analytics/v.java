package com.google.android.gms.analytics;

import android.content.Context;
import android.os.Handler;

class v
  extends aj
{
  private static final Object yT = new Object();
  private static v zf;
  private Context mContext;
  private Handler mHandler;
  private d yU;
  private volatile f yV;
  private int yW = 1800;
  private boolean yX = true;
  private boolean yY;
  private String yZ;
  private boolean yt = false;
  private boolean za = true;
  private boolean zb = true;
  private e zc = new v.1(this);
  private u zd;
  private boolean ze = false;
  
  public static v eu()
  {
    if (zf == null) {
      zf = new v();
    }
    return zf;
  }
  
  private void ev()
  {
    zd = new u(this);
    zd.z(mContext);
  }
  
  private void ew()
  {
    mHandler = new Handler(mContext.getMainLooper(), new v.2(this));
    if (yW > 0) {
      mHandler.sendMessageDelayed(mHandler.obtainMessage(1, yT), yW * 1000);
    }
  }
  
  void C(boolean paramBoolean)
  {
    try
    {
      a(ze, paramBoolean);
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  void a(Context paramContext, f paramf)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 85	com/google/android/gms/analytics/v:mContext	Landroid/content/Context;
    //   6: astore_3
    //   7: aload_3
    //   8: ifnull +6 -> 14
    //   11: aload_0
    //   12: monitorexit
    //   13: return
    //   14: aload_0
    //   15: aload_1
    //   16: invokevirtual 124	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   19: putfield 85	com/google/android/gms/analytics/v:mContext	Landroid/content/Context;
    //   22: aload_0
    //   23: getfield 126	com/google/android/gms/analytics/v:yV	Lcom/google/android/gms/analytics/f;
    //   26: ifnonnull -15 -> 11
    //   29: aload_0
    //   30: aload_2
    //   31: putfield 126	com/google/android/gms/analytics/v:yV	Lcom/google/android/gms/analytics/f;
    //   34: aload_0
    //   35: getfield 46	com/google/android/gms/analytics/v:yX	Z
    //   38: ifeq +12 -> 50
    //   41: aload_0
    //   42: invokevirtual 129	com/google/android/gms/analytics/v:dispatchLocalHits	()V
    //   45: aload_0
    //   46: iconst_0
    //   47: putfield 46	com/google/android/gms/analytics/v:yX	Z
    //   50: aload_0
    //   51: getfield 131	com/google/android/gms/analytics/v:yY	Z
    //   54: ifeq -43 -> 11
    //   57: aload_0
    //   58: invokevirtual 134	com/google/android/gms/analytics/v:dW	()V
    //   61: aload_0
    //   62: iconst_0
    //   63: putfield 131	com/google/android/gms/analytics/v:yY	Z
    //   66: goto -55 -> 11
    //   69: astore_1
    //   70: aload_0
    //   71: monitorexit
    //   72: aload_1
    //   73: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	v
    //   0	74	1	paramContext	Context
    //   0	74	2	paramf	f
    //   6	2	3	localContext	Context
    // Exception table:
    //   from	to	target	type
    //   2	7	69	finally
    //   14	50	69	finally
    //   50	66	69	finally
  }
  
  void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    for (;;)
    {
      StringBuilder localStringBuilder;
      String str1;
      try
      {
        if (ze == paramBoolean1)
        {
          boolean bool = za;
          if (bool == paramBoolean2) {
            return;
          }
        }
        if (((paramBoolean1) || (!paramBoolean2)) && (yW > 0)) {
          mHandler.removeMessages(1, yT);
        }
        if ((!paramBoolean1) && (paramBoolean2) && (yW > 0)) {
          mHandler.sendMessageDelayed(mHandler.obtainMessage(1, yT), yW * 1000);
        }
        localStringBuilder = new StringBuilder().append("PowerSaveMode ");
        if (paramBoolean1) {
          break label157;
        }
        if (paramBoolean2) {
          break label150;
        }
      }
      finally {}
      ae.V(str1);
      ze = paramBoolean1;
      za = paramBoolean2;
      continue;
      label150:
      String str2 = "terminated.";
      continue;
      label157:
      str2 = "initiated.";
    }
  }
  
  void dW()
  {
    if (yV == null)
    {
      ae.V("setForceLocalDispatch() queued. It will be called once initialization is complete.");
      yY = true;
      return;
    }
    y.eK().a(y.a.Bb);
    yV.dW();
  }
  
  /* Error */
  void dispatchLocalHits()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 126	com/google/android/gms/analytics/v:yV	Lcom/google/android/gms/analytics/f;
    //   6: ifnonnull +16 -> 22
    //   9: ldc -73
    //   11: invokestatic 157	com/google/android/gms/analytics/ae:V	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: iconst_1
    //   16: putfield 46	com/google/android/gms/analytics/v:yX	Z
    //   19: aload_0
    //   20: monitorexit
    //   21: return
    //   22: invokestatic 169	com/google/android/gms/analytics/y:eK	()Lcom/google/android/gms/analytics/y;
    //   25: getstatic 186	com/google/android/gms/analytics/y$a:AO	Lcom/google/android/gms/analytics/y$a;
    //   28: invokevirtual 178	com/google/android/gms/analytics/y:a	(Lcom/google/android/gms/analytics/y$a;)V
    //   31: aload_0
    //   32: getfield 126	com/google/android/gms/analytics/v:yV	Lcom/google/android/gms/analytics/f;
    //   35: invokeinterface 189 1 0
    //   40: goto -21 -> 19
    //   43: astore_1
    //   44: aload_0
    //   45: monitorexit
    //   46: aload_1
    //   47: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	48	0	this	v
    //   43	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	19	43	finally
    //   22	40	43	finally
  }
  
  d ex()
  {
    try
    {
      if (yU != null) {
        break label100;
      }
      if (mContext == null) {
        throw new IllegalStateException("Cant get a store unless we have a context");
      }
    }
    finally {}
    yU = new ag(zc, mContext, new j());
    yU.setDryRun(yt);
    if (yZ != null)
    {
      yU.dV().ad(yZ);
      yZ = null;
    }
    label100:
    if (mHandler == null) {
      ew();
    }
    if ((zd == null) && (zb)) {
      ev();
    }
    d locald = yU;
    return locald;
  }
  
  void ey()
  {
    try
    {
      if ((!ze) && (za) && (yW > 0))
      {
        mHandler.removeMessages(1, yT);
        mHandler.sendMessage(mHandler.obtainMessage(1, yT));
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  void setLocalDispatchPeriod(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 70	com/google/android/gms/analytics/v:mHandler	Landroid/os/Handler;
    //   6: ifnonnull +16 -> 22
    //   9: ldc -20
    //   11: invokestatic 157	com/google/android/gms/analytics/ae:V	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: iload_1
    //   16: putfield 44	com/google/android/gms/analytics/v:yW	I
    //   19: aload_0
    //   20: monitorexit
    //   21: return
    //   22: invokestatic 169	com/google/android/gms/analytics/y:eK	()Lcom/google/android/gms/analytics/y;
    //   25: getstatic 239	com/google/android/gms/analytics/y$a:AP	Lcom/google/android/gms/analytics/y$a;
    //   28: invokevirtual 178	com/google/android/gms/analytics/y:a	(Lcom/google/android/gms/analytics/y$a;)V
    //   31: aload_0
    //   32: getfield 59	com/google/android/gms/analytics/v:ze	Z
    //   35: ifne +28 -> 63
    //   38: aload_0
    //   39: getfield 48	com/google/android/gms/analytics/v:za	Z
    //   42: ifeq +21 -> 63
    //   45: aload_0
    //   46: getfield 44	com/google/android/gms/analytics/v:yW	I
    //   49: ifle +14 -> 63
    //   52: aload_0
    //   53: getfield 70	com/google/android/gms/analytics/v:mHandler	Landroid/os/Handler;
    //   56: iconst_1
    //   57: getstatic 40	com/google/android/gms/analytics/v:yT	Ljava/lang/Object;
    //   60: invokevirtual 138	android/os/Handler:removeMessages	(ILjava/lang/Object;)V
    //   63: aload_0
    //   64: iload_1
    //   65: putfield 44	com/google/android/gms/analytics/v:yW	I
    //   68: iload_1
    //   69: ifle -50 -> 19
    //   72: aload_0
    //   73: getfield 59	com/google/android/gms/analytics/v:ze	Z
    //   76: ifne -57 -> 19
    //   79: aload_0
    //   80: getfield 48	com/google/android/gms/analytics/v:za	Z
    //   83: ifeq -64 -> 19
    //   86: aload_0
    //   87: getfield 70	com/google/android/gms/analytics/v:mHandler	Landroid/os/Handler;
    //   90: aload_0
    //   91: getfield 70	com/google/android/gms/analytics/v:mHandler	Landroid/os/Handler;
    //   94: iconst_1
    //   95: getstatic 40	com/google/android/gms/analytics/v:yT	Ljava/lang/Object;
    //   98: invokevirtual 108	android/os/Handler:obtainMessage	(ILjava/lang/Object;)Landroid/os/Message;
    //   101: iload_1
    //   102: sipush 1000
    //   105: imul
    //   106: i2l
    //   107: invokevirtual 112	android/os/Handler:sendMessageDelayed	(Landroid/os/Message;J)Z
    //   110: pop
    //   111: goto -92 -> 19
    //   114: astore_2
    //   115: aload_0
    //   116: monitorexit
    //   117: aload_2
    //   118: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	119	0	this	v
    //   0	119	1	paramInt	int
    //   114	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	19	114	finally
    //   22	63	114	finally
    //   63	68	114	finally
    //   72	111	114	finally
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */