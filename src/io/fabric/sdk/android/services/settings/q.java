package io.fabric.sdk.android.services.settings;

import io.fabric.sdk.android.c;
import io.fabric.sdk.android.k;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

public class q
{
  private final AtomicReference<s> a = new AtomicReference();
  private final CountDownLatch b = new CountDownLatch(1);
  private r c;
  private boolean d = false;
  
  public static q a()
  {
    return a.a();
  }
  
  private void a(s params)
  {
    a.set(params);
    b.countDown();
  }
  
  /* Error */
  public q a(io.fabric.sdk.android.h paramh, io.fabric.sdk.android.services.common.IdManager paramIdManager, io.fabric.sdk.android.services.network.c paramc, String paramString1, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 37	io/fabric/sdk/android/services/settings/q:d	Z
    //   6: istore 7
    //   8: iload 7
    //   10: ifeq +7 -> 17
    //   13: aload_0
    //   14: monitorexit
    //   15: aload_0
    //   16: areturn
    //   17: aload_0
    //   18: getfield 54	io/fabric/sdk/android/services/settings/q:c	Lio/fabric/sdk/android/services/settings/r;
    //   21: ifnonnull +164 -> 185
    //   24: aload_1
    //   25: invokevirtual 60	io/fabric/sdk/android/h:B	()Landroid/content/Context;
    //   28: astore 8
    //   30: aload_2
    //   31: invokevirtual 65	io/fabric/sdk/android/services/common/IdManager:c	()Ljava/lang/String;
    //   34: astore 9
    //   36: new 67	io/fabric/sdk/android/services/common/g
    //   39: dup
    //   40: invokespecial 68	io/fabric/sdk/android/services/common/g:<init>	()V
    //   43: aload 8
    //   45: invokevirtual 71	io/fabric/sdk/android/services/common/g:a	(Landroid/content/Context;)Ljava/lang/String;
    //   48: astore 10
    //   50: aload_2
    //   51: invokevirtual 74	io/fabric/sdk/android/services/common/IdManager:h	()Ljava/lang/String;
    //   54: astore 11
    //   56: new 76	io/fabric/sdk/android/services/common/p
    //   59: dup
    //   60: invokespecial 77	io/fabric/sdk/android/services/common/p:<init>	()V
    //   63: astore 12
    //   65: new 79	io/fabric/sdk/android/services/settings/k
    //   68: dup
    //   69: invokespecial 80	io/fabric/sdk/android/services/settings/k:<init>	()V
    //   72: astore 13
    //   74: new 82	io/fabric/sdk/android/services/settings/i
    //   77: dup
    //   78: aload_1
    //   79: invokespecial 85	io/fabric/sdk/android/services/settings/i:<init>	(Lio/fabric/sdk/android/h;)V
    //   82: astore 14
    //   84: aload 8
    //   86: invokestatic 90	io/fabric/sdk/android/services/common/CommonUtils:k	(Landroid/content/Context;)Ljava/lang/String;
    //   89: astore 15
    //   91: new 92	io/fabric/sdk/android/services/settings/l
    //   94: dup
    //   95: aload_1
    //   96: aload 6
    //   98: getstatic 98	java/util/Locale:US	Ljava/util/Locale;
    //   101: ldc 100
    //   103: iconst_1
    //   104: anewarray 4	java/lang/Object
    //   107: dup
    //   108: iconst_0
    //   109: aload 9
    //   111: aastore
    //   112: invokestatic 106	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   115: aload_3
    //   116: invokespecial 109	io/fabric/sdk/android/services/settings/l:<init>	(Lio/fabric/sdk/android/h;Ljava/lang/String;Ljava/lang/String;Lio/fabric/sdk/android/services/network/c;)V
    //   119: astore_3
    //   120: aload_0
    //   121: new 111	io/fabric/sdk/android/services/settings/j
    //   124: dup
    //   125: aload_1
    //   126: new 113	io/fabric/sdk/android/services/settings/v
    //   129: dup
    //   130: aload 10
    //   132: aload_2
    //   133: aload 10
    //   135: aload 9
    //   137: invokevirtual 116	io/fabric/sdk/android/services/common/IdManager:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   140: iconst_1
    //   141: anewarray 102	java/lang/String
    //   144: dup
    //   145: iconst_0
    //   146: aload 8
    //   148: invokestatic 119	io/fabric/sdk/android/services/common/CommonUtils:m	(Landroid/content/Context;)Ljava/lang/String;
    //   151: aastore
    //   152: invokestatic 122	io/fabric/sdk/android/services/common/CommonUtils:a	([Ljava/lang/String;)Ljava/lang/String;
    //   155: aload 5
    //   157: aload 4
    //   159: aload 11
    //   161: invokestatic 128	io/fabric/sdk/android/services/common/DeliveryMechanism:determineFrom	(Ljava/lang/String;)Lio/fabric/sdk/android/services/common/DeliveryMechanism;
    //   164: invokevirtual 132	io/fabric/sdk/android/services/common/DeliveryMechanism:getId	()I
    //   167: aload 15
    //   169: invokespecial 135	io/fabric/sdk/android/services/settings/v:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    //   172: aload 12
    //   174: aload 13
    //   176: aload 14
    //   178: aload_3
    //   179: invokespecial 138	io/fabric/sdk/android/services/settings/j:<init>	(Lio/fabric/sdk/android/h;Lio/fabric/sdk/android/services/settings/v;Lio/fabric/sdk/android/services/common/j;Lio/fabric/sdk/android/services/settings/u;Lio/fabric/sdk/android/services/settings/g;Lio/fabric/sdk/android/services/settings/w;)V
    //   182: putfield 54	io/fabric/sdk/android/services/settings/q:c	Lio/fabric/sdk/android/services/settings/r;
    //   185: aload_0
    //   186: iconst_1
    //   187: putfield 37	io/fabric/sdk/android/services/settings/q:d	Z
    //   190: goto -177 -> 13
    //   193: astore_1
    //   194: aload_0
    //   195: monitorexit
    //   196: aload_1
    //   197: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	198	0	this	q
    //   0	198	1	paramh	io.fabric.sdk.android.h
    //   0	198	2	paramIdManager	io.fabric.sdk.android.services.common.IdManager
    //   0	198	3	paramc	io.fabric.sdk.android.services.network.c
    //   0	198	4	paramString1	String
    //   0	198	5	paramString2	String
    //   0	198	6	paramString3	String
    //   6	3	7	bool	boolean
    //   28	119	8	localContext	android.content.Context
    //   34	102	9	str1	String
    //   48	86	10	str2	String
    //   54	106	11	str3	String
    //   63	110	12	localp	io.fabric.sdk.android.services.common.p
    //   72	103	13	localk	k
    //   82	95	14	locali	i
    //   89	79	15	str4	String
    // Exception table:
    //   from	to	target	type
    //   2	8	193	finally
    //   17	185	193	finally
    //   185	190	193	finally
  }
  
  public <T> T a(b<T> paramb, T paramT)
  {
    s locals = (s)a.get();
    if (locals == null) {
      return paramT;
    }
    return (T)paramb.b(locals);
  }
  
  public s b()
  {
    try
    {
      b.await();
      s locals = (s)a.get();
      return locals;
    }
    catch (InterruptedException localInterruptedException)
    {
      c.h().e("Fabric", "Interrupted while waiting for settings data.");
    }
    return null;
  }
  
  /* Error */
  public boolean c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 54	io/fabric/sdk/android/services/settings/q:c	Lio/fabric/sdk/android/services/settings/r;
    //   6: invokeinterface 176 1 0
    //   11: astore_2
    //   12: aload_0
    //   13: aload_2
    //   14: invokespecial 178	io/fabric/sdk/android/services/settings/q:a	(Lio/fabric/sdk/android/services/settings/s;)V
    //   17: aload_2
    //   18: ifnull +9 -> 27
    //   21: iconst_1
    //   22: istore_1
    //   23: aload_0
    //   24: monitorexit
    //   25: iload_1
    //   26: ireturn
    //   27: iconst_0
    //   28: istore_1
    //   29: goto -6 -> 23
    //   32: astore_2
    //   33: aload_0
    //   34: monitorexit
    //   35: aload_2
    //   36: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	37	0	this	q
    //   22	7	1	bool	boolean
    //   11	7	2	locals	s
    //   32	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	17	32	finally
  }
  
  /* Error */
  public boolean d()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 54	io/fabric/sdk/android/services/settings/q:c	Lio/fabric/sdk/android/services/settings/r;
    //   6: getstatic 184	io/fabric/sdk/android/services/settings/SettingsCacheBehavior:SKIP_CACHE_LOOKUP	Lio/fabric/sdk/android/services/settings/SettingsCacheBehavior;
    //   9: invokeinterface 187 2 0
    //   14: astore_2
    //   15: aload_0
    //   16: aload_2
    //   17: invokespecial 178	io/fabric/sdk/android/services/settings/q:a	(Lio/fabric/sdk/android/services/settings/s;)V
    //   20: aload_2
    //   21: ifnonnull +16 -> 37
    //   24: invokestatic 161	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   27: ldc -93
    //   29: ldc -67
    //   31: aconst_null
    //   32: invokeinterface 192 4 0
    //   37: aload_2
    //   38: ifnull +9 -> 47
    //   41: iconst_1
    //   42: istore_1
    //   43: aload_0
    //   44: monitorexit
    //   45: iload_1
    //   46: ireturn
    //   47: iconst_0
    //   48: istore_1
    //   49: goto -6 -> 43
    //   52: astore_2
    //   53: aload_0
    //   54: monitorexit
    //   55: aload_2
    //   56: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	57	0	this	q
    //   42	7	1	bool	boolean
    //   14	24	2	locals	s
    //   52	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	20	52	finally
    //   24	37	52	finally
  }
  
  static class a
  {
    private static final q a = new q(null);
  }
  
  public static abstract interface b<T>
  {
    public abstract T b(s params);
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.settings.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */