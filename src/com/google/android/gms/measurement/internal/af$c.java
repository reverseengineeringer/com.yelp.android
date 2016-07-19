package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.zzx;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.FutureTask;

final class af$c
  extends Thread
{
  private final Object b;
  private final BlockingQueue<FutureTask<?>> c;
  
  public af$c(String paramString, BlockingQueue<FutureTask<?>> paramBlockingQueue)
  {
    zzx.zzz(paramBlockingQueue);
    b = new Object();
    BlockingQueue localBlockingQueue;
    c = localBlockingQueue;
    setName(paramBlockingQueue);
  }
  
  private void a(InterruptedException paramInterruptedException)
  {
    a.s().c().a(getName() + " was interrupted", paramInterruptedException);
  }
  
  public void a()
  {
    synchronized (b)
    {
      b.notifyAll();
      return;
    }
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: iload_1
    //   3: ifne +27 -> 30
    //   6: aload_0
    //   7: getfield 17	com/google/android/gms/measurement/internal/af$c:a	Lcom/google/android/gms/measurement/internal/af;
    //   10: invokestatic 80	com/google/android/gms/measurement/internal/af:a	(Lcom/google/android/gms/measurement/internal/af;)Ljava/util/concurrent/Semaphore;
    //   13: invokevirtual 85	java/util/concurrent/Semaphore:acquire	()V
    //   16: iconst_1
    //   17: istore_1
    //   18: goto -16 -> 2
    //   21: astore_3
    //   22: aload_0
    //   23: aload_3
    //   24: invokespecial 87	com/google/android/gms/measurement/internal/af$c:a	(Ljava/lang/InterruptedException;)V
    //   27: goto -25 -> 2
    //   30: aload_0
    //   31: getfield 33	com/google/android/gms/measurement/internal/af$c:c	Ljava/util/concurrent/BlockingQueue;
    //   34: invokeinterface 93 1 0
    //   39: checkcast 95	java/util/concurrent/FutureTask
    //   42: astore_3
    //   43: aload_3
    //   44: ifnull +67 -> 111
    //   47: aload_3
    //   48: invokevirtual 97	java/util/concurrent/FutureTask:run	()V
    //   51: goto -21 -> 30
    //   54: astore 4
    //   56: aload_0
    //   57: getfield 17	com/google/android/gms/measurement/internal/af$c:a	Lcom/google/android/gms/measurement/internal/af;
    //   60: invokestatic 100	com/google/android/gms/measurement/internal/af:c	(Lcom/google/android/gms/measurement/internal/af;)Ljava/lang/Object;
    //   63: astore_3
    //   64: aload_3
    //   65: monitorenter
    //   66: aload_0
    //   67: getfield 17	com/google/android/gms/measurement/internal/af$c:a	Lcom/google/android/gms/measurement/internal/af;
    //   70: invokestatic 80	com/google/android/gms/measurement/internal/af:a	(Lcom/google/android/gms/measurement/internal/af;)Ljava/util/concurrent/Semaphore;
    //   73: invokevirtual 103	java/util/concurrent/Semaphore:release	()V
    //   76: aload_0
    //   77: getfield 17	com/google/android/gms/measurement/internal/af$c:a	Lcom/google/android/gms/measurement/internal/af;
    //   80: invokestatic 100	com/google/android/gms/measurement/internal/af:c	(Lcom/google/android/gms/measurement/internal/af;)Ljava/lang/Object;
    //   83: invokevirtual 74	java/lang/Object:notifyAll	()V
    //   86: aload_0
    //   87: aload_0
    //   88: getfield 17	com/google/android/gms/measurement/internal/af$c:a	Lcom/google/android/gms/measurement/internal/af;
    //   91: invokestatic 107	com/google/android/gms/measurement/internal/af:d	(Lcom/google/android/gms/measurement/internal/af;)Lcom/google/android/gms/measurement/internal/af$c;
    //   94: if_acmpne +215 -> 309
    //   97: aload_0
    //   98: getfield 17	com/google/android/gms/measurement/internal/af$c:a	Lcom/google/android/gms/measurement/internal/af;
    //   101: aconst_null
    //   102: invokestatic 110	com/google/android/gms/measurement/internal/af:a	(Lcom/google/android/gms/measurement/internal/af;Lcom/google/android/gms/measurement/internal/af$c;)Lcom/google/android/gms/measurement/internal/af$c;
    //   105: pop
    //   106: aload_3
    //   107: monitorexit
    //   108: aload 4
    //   110: athrow
    //   111: aload_0
    //   112: getfield 31	com/google/android/gms/measurement/internal/af$c:b	Ljava/lang/Object;
    //   115: astore_3
    //   116: aload_3
    //   117: monitorenter
    //   118: aload_0
    //   119: getfield 33	com/google/android/gms/measurement/internal/af$c:c	Ljava/util/concurrent/BlockingQueue;
    //   122: invokeinterface 113 1 0
    //   127: ifnonnull +25 -> 152
    //   130: aload_0
    //   131: getfield 17	com/google/android/gms/measurement/internal/af$c:a	Lcom/google/android/gms/measurement/internal/af;
    //   134: invokestatic 116	com/google/android/gms/measurement/internal/af:b	(Lcom/google/android/gms/measurement/internal/af;)Z
    //   137: istore_2
    //   138: iload_2
    //   139: ifne +13 -> 152
    //   142: aload_0
    //   143: getfield 31	com/google/android/gms/measurement/internal/af$c:b	Ljava/lang/Object;
    //   146: ldc2_w 117
    //   149: invokevirtual 122	java/lang/Object:wait	(J)V
    //   152: aload_3
    //   153: monitorexit
    //   154: aload_0
    //   155: getfield 17	com/google/android/gms/measurement/internal/af$c:a	Lcom/google/android/gms/measurement/internal/af;
    //   158: invokestatic 100	com/google/android/gms/measurement/internal/af:c	(Lcom/google/android/gms/measurement/internal/af;)Ljava/lang/Object;
    //   161: astore_3
    //   162: aload_3
    //   163: monitorenter
    //   164: aload_0
    //   165: getfield 33	com/google/android/gms/measurement/internal/af$c:c	Ljava/util/concurrent/BlockingQueue;
    //   168: invokeinterface 113 1 0
    //   173: ifnonnull +124 -> 297
    //   176: aload_3
    //   177: monitorexit
    //   178: aload_0
    //   179: getfield 17	com/google/android/gms/measurement/internal/af$c:a	Lcom/google/android/gms/measurement/internal/af;
    //   182: invokestatic 100	com/google/android/gms/measurement/internal/af:c	(Lcom/google/android/gms/measurement/internal/af;)Ljava/lang/Object;
    //   185: astore_3
    //   186: aload_3
    //   187: monitorenter
    //   188: aload_0
    //   189: getfield 17	com/google/android/gms/measurement/internal/af$c:a	Lcom/google/android/gms/measurement/internal/af;
    //   192: invokestatic 80	com/google/android/gms/measurement/internal/af:a	(Lcom/google/android/gms/measurement/internal/af;)Ljava/util/concurrent/Semaphore;
    //   195: invokevirtual 103	java/util/concurrent/Semaphore:release	()V
    //   198: aload_0
    //   199: getfield 17	com/google/android/gms/measurement/internal/af$c:a	Lcom/google/android/gms/measurement/internal/af;
    //   202: invokestatic 100	com/google/android/gms/measurement/internal/af:c	(Lcom/google/android/gms/measurement/internal/af;)Ljava/lang/Object;
    //   205: invokevirtual 74	java/lang/Object:notifyAll	()V
    //   208: aload_0
    //   209: aload_0
    //   210: getfield 17	com/google/android/gms/measurement/internal/af$c:a	Lcom/google/android/gms/measurement/internal/af;
    //   213: invokestatic 107	com/google/android/gms/measurement/internal/af:d	(Lcom/google/android/gms/measurement/internal/af;)Lcom/google/android/gms/measurement/internal/af$c;
    //   216: if_acmpne +33 -> 249
    //   219: aload_0
    //   220: getfield 17	com/google/android/gms/measurement/internal/af$c:a	Lcom/google/android/gms/measurement/internal/af;
    //   223: aconst_null
    //   224: invokestatic 110	com/google/android/gms/measurement/internal/af:a	(Lcom/google/android/gms/measurement/internal/af;Lcom/google/android/gms/measurement/internal/af$c;)Lcom/google/android/gms/measurement/internal/af$c;
    //   227: pop
    //   228: aload_3
    //   229: monitorexit
    //   230: return
    //   231: astore 4
    //   233: aload_0
    //   234: aload 4
    //   236: invokespecial 87	com/google/android/gms/measurement/internal/af$c:a	(Ljava/lang/InterruptedException;)V
    //   239: goto -87 -> 152
    //   242: astore 4
    //   244: aload_3
    //   245: monitorexit
    //   246: aload 4
    //   248: athrow
    //   249: aload_0
    //   250: aload_0
    //   251: getfield 17	com/google/android/gms/measurement/internal/af$c:a	Lcom/google/android/gms/measurement/internal/af;
    //   254: invokestatic 125	com/google/android/gms/measurement/internal/af:e	(Lcom/google/android/gms/measurement/internal/af;)Lcom/google/android/gms/measurement/internal/af$c;
    //   257: if_acmpne +22 -> 279
    //   260: aload_0
    //   261: getfield 17	com/google/android/gms/measurement/internal/af$c:a	Lcom/google/android/gms/measurement/internal/af;
    //   264: aconst_null
    //   265: invokestatic 127	com/google/android/gms/measurement/internal/af:b	(Lcom/google/android/gms/measurement/internal/af;Lcom/google/android/gms/measurement/internal/af$c;)Lcom/google/android/gms/measurement/internal/af$c;
    //   268: pop
    //   269: goto -41 -> 228
    //   272: astore 4
    //   274: aload_3
    //   275: monitorexit
    //   276: aload 4
    //   278: athrow
    //   279: aload_0
    //   280: getfield 17	com/google/android/gms/measurement/internal/af$c:a	Lcom/google/android/gms/measurement/internal/af;
    //   283: invokevirtual 45	com/google/android/gms/measurement/internal/af:s	()Lcom/google/android/gms/measurement/internal/z;
    //   286: invokevirtual 129	com/google/android/gms/measurement/internal/z:b	()Lcom/google/android/gms/measurement/internal/z$a;
    //   289: ldc -125
    //   291: invokevirtual 133	com/google/android/gms/measurement/internal/z$a:a	(Ljava/lang/String;)V
    //   294: goto -66 -> 228
    //   297: aload_3
    //   298: monitorexit
    //   299: goto -269 -> 30
    //   302: astore 4
    //   304: aload_3
    //   305: monitorexit
    //   306: aload 4
    //   308: athrow
    //   309: aload_0
    //   310: aload_0
    //   311: getfield 17	com/google/android/gms/measurement/internal/af$c:a	Lcom/google/android/gms/measurement/internal/af;
    //   314: invokestatic 125	com/google/android/gms/measurement/internal/af:e	(Lcom/google/android/gms/measurement/internal/af;)Lcom/google/android/gms/measurement/internal/af$c;
    //   317: if_acmpne +22 -> 339
    //   320: aload_0
    //   321: getfield 17	com/google/android/gms/measurement/internal/af$c:a	Lcom/google/android/gms/measurement/internal/af;
    //   324: aconst_null
    //   325: invokestatic 127	com/google/android/gms/measurement/internal/af:b	(Lcom/google/android/gms/measurement/internal/af;Lcom/google/android/gms/measurement/internal/af$c;)Lcom/google/android/gms/measurement/internal/af$c;
    //   328: pop
    //   329: goto -223 -> 106
    //   332: astore 4
    //   334: aload_3
    //   335: monitorexit
    //   336: aload 4
    //   338: athrow
    //   339: aload_0
    //   340: getfield 17	com/google/android/gms/measurement/internal/af$c:a	Lcom/google/android/gms/measurement/internal/af;
    //   343: invokevirtual 45	com/google/android/gms/measurement/internal/af:s	()Lcom/google/android/gms/measurement/internal/z;
    //   346: invokevirtual 129	com/google/android/gms/measurement/internal/z:b	()Lcom/google/android/gms/measurement/internal/z$a;
    //   349: ldc -125
    //   351: invokevirtual 133	com/google/android/gms/measurement/internal/z$a:a	(Ljava/lang/String;)V
    //   354: goto -248 -> 106
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	357	0	this	c
    //   1	17	1	i	int
    //   137	2	2	bool	boolean
    //   21	3	3	localInterruptedException1	InterruptedException
    //   54	55	4	localObject2	Object
    //   231	4	4	localInterruptedException2	InterruptedException
    //   242	5	4	localObject3	Object
    //   272	5	4	localObject4	Object
    //   302	5	4	localObject5	Object
    //   332	5	4	localObject6	Object
    // Exception table:
    //   from	to	target	type
    //   6	16	21	java/lang/InterruptedException
    //   30	43	54	finally
    //   47	51	54	finally
    //   111	118	54	finally
    //   154	164	54	finally
    //   246	249	54	finally
    //   306	309	54	finally
    //   142	152	231	java/lang/InterruptedException
    //   118	138	242	finally
    //   142	152	242	finally
    //   152	154	242	finally
    //   233	239	242	finally
    //   244	246	242	finally
    //   188	228	272	finally
    //   228	230	272	finally
    //   249	269	272	finally
    //   274	276	272	finally
    //   279	294	272	finally
    //   164	178	302	finally
    //   297	299	302	finally
    //   304	306	302	finally
    //   66	106	332	finally
    //   106	108	332	finally
    //   309	329	332	finally
    //   334	336	332	finally
    //   339	354	332	finally
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.af.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */