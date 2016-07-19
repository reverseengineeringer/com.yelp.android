package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.net.TrafficStats;
import android.os.Build.VERSION;
import java.util.concurrent.BlockingQueue;

public class ev
  extends Thread
{
  private final BlockingQueue<zzk<?>> a;
  private final dv b;
  private final u c;
  private final ka d;
  private volatile boolean e = false;
  
  public ev(BlockingQueue<zzk<?>> paramBlockingQueue, dv paramdv, u paramu, ka paramka)
  {
    a = paramBlockingQueue;
    b = paramdv;
    c = paramu;
    d = paramka;
  }
  
  @TargetApi(14)
  private void a(zzk<?> paramzzk)
  {
    if (Build.VERSION.SDK_INT >= 14) {
      TrafficStats.setThreadStatsTag(paramzzk.c());
    }
  }
  
  private void a(zzk<?> paramzzk, zzr paramzzr)
  {
    paramzzr = paramzzk.a(paramzzr);
    d.a(paramzzk, paramzzr);
  }
  
  public void a()
  {
    e = true;
    interrupt();
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: bipush 10
    //   2: invokestatic 80	android/os/Process:setThreadPriority	(I)V
    //   5: invokestatic 86	android/os/SystemClock:elapsedRealtime	()J
    //   8: lstore_1
    //   9: aload_0
    //   10: getfield 24	com/google/android/gms/internal/ev:a	Ljava/util/concurrent/BlockingQueue;
    //   13: invokeinterface 92 1 0
    //   18: checkcast 45	com/google/android/gms/internal/zzk
    //   21: astore_3
    //   22: aload_3
    //   23: ldc 94
    //   25: invokevirtual 97	com/google/android/gms/internal/zzk:b	(Ljava/lang/String;)V
    //   28: aload_3
    //   29: invokevirtual 101	com/google/android/gms/internal/zzk:g	()Z
    //   32: ifeq +43 -> 75
    //   35: aload_3
    //   36: ldc 103
    //   38: invokevirtual 105	com/google/android/gms/internal/zzk:c	(Ljava/lang/String;)V
    //   41: goto -36 -> 5
    //   44: astore 4
    //   46: aload 4
    //   48: invokestatic 86	android/os/SystemClock:elapsedRealtime	()J
    //   51: lload_1
    //   52: lsub
    //   53: invokevirtual 109	com/google/android/gms/internal/zzr:zza	(J)V
    //   56: aload_0
    //   57: aload_3
    //   58: aload 4
    //   60: invokespecial 110	com/google/android/gms/internal/ev:a	(Lcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzr;)V
    //   63: goto -58 -> 5
    //   66: astore_3
    //   67: aload_0
    //   68: getfield 22	com/google/android/gms/internal/ev:e	Z
    //   71: ifeq -66 -> 5
    //   74: return
    //   75: aload_0
    //   76: aload_3
    //   77: invokespecial 112	com/google/android/gms/internal/ev:a	(Lcom/google/android/gms/internal/zzk;)V
    //   80: aload_0
    //   81: getfield 26	com/google/android/gms/internal/ev:b	Lcom/google/android/gms/internal/dv;
    //   84: aload_3
    //   85: invokeinterface 117 2 0
    //   90: astore 4
    //   92: aload_3
    //   93: ldc 119
    //   95: invokevirtual 97	com/google/android/gms/internal/zzk:b	(Ljava/lang/String;)V
    //   98: aload 4
    //   100: getfield 123	com/google/android/gms/internal/gm:d	Z
    //   103: ifeq +76 -> 179
    //   106: aload_3
    //   107: invokevirtual 126	com/google/android/gms/internal/zzk:u	()Z
    //   110: ifeq +69 -> 179
    //   113: aload_3
    //   114: ldc -128
    //   116: invokevirtual 105	com/google/android/gms/internal/zzk:c	(Ljava/lang/String;)V
    //   119: goto -114 -> 5
    //   122: astore 4
    //   124: aload 4
    //   126: ldc -126
    //   128: iconst_1
    //   129: anewarray 132	java/lang/Object
    //   132: dup
    //   133: iconst_0
    //   134: aload 4
    //   136: invokevirtual 136	java/lang/Exception:toString	()Ljava/lang/String;
    //   139: aastore
    //   140: invokestatic 141	com/google/android/gms/internal/li:a	(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    //   143: new 73	com/google/android/gms/internal/zzr
    //   146: dup
    //   147: aload 4
    //   149: invokespecial 144	com/google/android/gms/internal/zzr:<init>	(Ljava/lang/Throwable;)V
    //   152: astore 4
    //   154: aload 4
    //   156: invokestatic 86	android/os/SystemClock:elapsedRealtime	()J
    //   159: lload_1
    //   160: lsub
    //   161: invokevirtual 109	com/google/android/gms/internal/zzr:zza	(J)V
    //   164: aload_0
    //   165: getfield 30	com/google/android/gms/internal/ev:d	Lcom/google/android/gms/internal/ka;
    //   168: aload_3
    //   169: aload 4
    //   171: invokeinterface 64 3 0
    //   176: goto -171 -> 5
    //   179: aload_3
    //   180: aload 4
    //   182: invokevirtual 147	com/google/android/gms/internal/zzk:a	(Lcom/google/android/gms/internal/gm;)Lcom/google/android/gms/internal/jc;
    //   185: astore 4
    //   187: aload_3
    //   188: ldc -107
    //   190: invokevirtual 97	com/google/android/gms/internal/zzk:b	(Ljava/lang/String;)V
    //   193: aload_3
    //   194: invokevirtual 152	com/google/android/gms/internal/zzk:p	()Z
    //   197: ifeq +35 -> 232
    //   200: aload 4
    //   202: getfield 157	com/google/android/gms/internal/jc:b	Lcom/google/android/gms/internal/u$a;
    //   205: ifnull +27 -> 232
    //   208: aload_0
    //   209: getfield 28	com/google/android/gms/internal/ev:c	Lcom/google/android/gms/internal/u;
    //   212: aload_3
    //   213: invokevirtual 159	com/google/android/gms/internal/zzk:e	()Ljava/lang/String;
    //   216: aload 4
    //   218: getfield 157	com/google/android/gms/internal/jc:b	Lcom/google/android/gms/internal/u$a;
    //   221: invokeinterface 164 3 0
    //   226: aload_3
    //   227: ldc -90
    //   229: invokevirtual 97	com/google/android/gms/internal/zzk:b	(Ljava/lang/String;)V
    //   232: aload_3
    //   233: invokevirtual 169	com/google/android/gms/internal/zzk:t	()V
    //   236: aload_0
    //   237: getfield 30	com/google/android/gms/internal/ev:d	Lcom/google/android/gms/internal/ka;
    //   240: aload_3
    //   241: aload 4
    //   243: invokeinterface 172 3 0
    //   248: goto -243 -> 5
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	251	0	this	ev
    //   8	152	1	l	long
    //   21	37	3	localzzk	zzk
    //   66	175	3	localInterruptedException	InterruptedException
    //   44	15	4	localzzr	zzr
    //   90	9	4	localgm	gm
    //   122	26	4	localException	Exception
    //   152	90	4	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   22	41	44	com/google/android/gms/internal/zzr
    //   75	119	44	com/google/android/gms/internal/zzr
    //   179	232	44	com/google/android/gms/internal/zzr
    //   232	248	44	com/google/android/gms/internal/zzr
    //   9	22	66	java/lang/InterruptedException
    //   22	41	122	java/lang/Exception
    //   75	119	122	java/lang/Exception
    //   179	232	122	java/lang/Exception
    //   232	248	122	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ev
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */