package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

@fv
public class dp
  implements dh
{
  private final AdRequestInfoParcel a;
  private final ds b;
  private final Context c;
  private final dj d;
  private final boolean e;
  private final long f;
  private final long g;
  private final int h;
  private final Object i = new Object();
  private boolean j = false;
  private final Map<hs<dn>, dm> k = new HashMap();
  private final boolean l;
  
  public dp(Context paramContext, AdRequestInfoParcel paramAdRequestInfoParcel, ds paramds, dj paramdj, boolean paramBoolean1, boolean paramBoolean2, long paramLong1, long paramLong2, int paramInt)
  {
    c = paramContext;
    a = paramAdRequestInfoParcel;
    b = paramds;
    d = paramdj;
    e = paramBoolean1;
    l = paramBoolean2;
    f = paramLong1;
    g = paramLong2;
    h = paramInt;
  }
  
  private void a(final hs<dn> paramhs)
  {
    hd.a.post(new Runnable()
    {
      public void run()
      {
        Iterator localIterator = dp.e(dp.this).keySet().iterator();
        while (localIterator.hasNext())
        {
          hs localhs = (hs)localIterator.next();
          if (localhs != paramhs) {
            ((dm)dp.e(dp.this).get(localhs)).a();
          }
        }
      }
    });
  }
  
  private dn b(List<hs<dn>> paramList)
  {
    for (;;)
    {
      synchronized (i)
      {
        if (j)
        {
          paramList = new dn(-1);
          return paramList;
        }
        ??? = paramList.iterator();
        if (((Iterator)???).hasNext()) {
          paramList = (hs)((Iterator)???).next();
        }
      }
      try
      {
        dn localdn = (dn)paramList.get();
        if ((localdn == null) || (a != 0)) {
          continue;
        }
        a(paramList);
        return localdn;
      }
      catch (InterruptedException paramList)
      {
        gz.d("Exception while processing an adapter; continuing with other adapters", paramList);
        continue;
        paramList = finally;
        throw paramList;
        a(null);
        return new dn(1);
      }
      catch (ExecutionException paramList)
      {
        for (;;) {}
      }
    }
  }
  
  /* Error */
  private dn c(List<hs<dn>> paramList)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 40	com/google/android/gms/internal/dp:i	Ljava/lang/Object;
    //   4: astore 8
    //   6: aload 8
    //   8: monitorenter
    //   9: aload_0
    //   10: getfield 42	com/google/android/gms/internal/dp:j	Z
    //   13: ifeq +17 -> 30
    //   16: new 91	com/google/android/gms/internal/dn
    //   19: dup
    //   20: iconst_m1
    //   21: invokespecial 94	com/google/android/gms/internal/dn:<init>	(I)V
    //   24: astore_1
    //   25: aload 8
    //   27: monitorexit
    //   28: aload_1
    //   29: areturn
    //   30: aload 8
    //   32: monitorexit
    //   33: iconst_m1
    //   34: istore_2
    //   35: aconst_null
    //   36: astore 8
    //   38: aconst_null
    //   39: astore 9
    //   41: aload_0
    //   42: getfield 55	com/google/android/gms/internal/dp:d	Lcom/google/android/gms/internal/dj;
    //   45: getfield 137	com/google/android/gms/internal/dj:k	J
    //   48: ldc2_w 138
    //   51: lcmp
    //   52: ifeq +159 -> 211
    //   55: aload_0
    //   56: getfield 55	com/google/android/gms/internal/dp:d	Lcom/google/android/gms/internal/dj;
    //   59: getfield 137	com/google/android/gms/internal/dj:k	J
    //   62: lstore 4
    //   64: aload_1
    //   65: invokeinterface 100 1 0
    //   70: astore 11
    //   72: aload 11
    //   74: invokeinterface 106 1 0
    //   79: ifeq +214 -> 293
    //   82: aload 11
    //   84: invokeinterface 110 1 0
    //   89: checkcast 112	com/google/android/gms/internal/hs
    //   92: astore 10
    //   94: invokestatic 144	com/google/android/gms/ads/internal/s:i	()Lcom/google/android/gms/internal/jt;
    //   97: invokeinterface 149 1 0
    //   102: lstore 6
    //   104: lload 4
    //   106: lconst_0
    //   107: lcmp
    //   108: ifne +111 -> 219
    //   111: aload 10
    //   113: invokeinterface 152 1 0
    //   118: ifeq +101 -> 219
    //   121: aload 10
    //   123: invokeinterface 115 1 0
    //   128: checkcast 91	com/google/android/gms/internal/dn
    //   131: astore_1
    //   132: aload_1
    //   133: ifnull +192 -> 325
    //   136: aload_1
    //   137: getfield 117	com/google/android/gms/internal/dn:a	I
    //   140: ifne +185 -> 325
    //   143: aload_1
    //   144: getfield 155	com/google/android/gms/internal/dn:f	Lcom/google/android/gms/internal/dw;
    //   147: astore 12
    //   149: aload 12
    //   151: ifnull +174 -> 325
    //   154: aload 12
    //   156: invokeinterface 160 1 0
    //   161: iload_2
    //   162: if_icmple +163 -> 325
    //   165: aload 12
    //   167: invokeinterface 160 1 0
    //   172: istore_3
    //   173: iload_3
    //   174: istore_2
    //   175: aload 10
    //   177: astore 8
    //   179: lload 4
    //   181: invokestatic 144	com/google/android/gms/ads/internal/s:i	()Lcom/google/android/gms/internal/jt;
    //   184: invokeinterface 149 1 0
    //   189: lload 6
    //   191: lsub
    //   192: lsub
    //   193: lconst_0
    //   194: invokestatic 166	java/lang/Math:max	(JJ)J
    //   197: lstore 4
    //   199: aload_1
    //   200: astore 9
    //   202: goto -130 -> 72
    //   205: astore_1
    //   206: aload 8
    //   208: monitorexit
    //   209: aload_1
    //   210: athrow
    //   211: ldc2_w 167
    //   214: lstore 4
    //   216: goto -152 -> 64
    //   219: aload 10
    //   221: lload 4
    //   223: getstatic 174	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   226: invokeinterface 177 4 0
    //   231: checkcast 91	com/google/android/gms/internal/dn
    //   234: astore_1
    //   235: goto -103 -> 132
    //   238: astore_1
    //   239: ldc 121
    //   241: aload_1
    //   242: invokestatic 126	com/google/android/gms/internal/gz:d	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   245: lload 4
    //   247: invokestatic 144	com/google/android/gms/ads/internal/s:i	()Lcom/google/android/gms/internal/jt;
    //   250: invokeinterface 149 1 0
    //   255: lload 6
    //   257: lsub
    //   258: lsub
    //   259: lconst_0
    //   260: invokestatic 166	java/lang/Math:max	(JJ)J
    //   263: lstore 4
    //   265: aload 9
    //   267: astore_1
    //   268: goto -69 -> 199
    //   271: astore_1
    //   272: lload 4
    //   274: invokestatic 144	com/google/android/gms/ads/internal/s:i	()Lcom/google/android/gms/internal/jt;
    //   277: invokeinterface 149 1 0
    //   282: lload 6
    //   284: lsub
    //   285: lsub
    //   286: lconst_0
    //   287: invokestatic 166	java/lang/Math:max	(JJ)J
    //   290: pop2
    //   291: aload_1
    //   292: athrow
    //   293: aload_0
    //   294: aload 8
    //   296: invokespecial 119	com/google/android/gms/internal/dp:a	(Lcom/google/android/gms/internal/hs;)V
    //   299: aload 9
    //   301: ifnonnull +30 -> 331
    //   304: new 91	com/google/android/gms/internal/dn
    //   307: dup
    //   308: iconst_1
    //   309: invokespecial 94	com/google/android/gms/internal/dn:<init>	(I)V
    //   312: areturn
    //   313: astore_1
    //   314: goto -75 -> 239
    //   317: astore_1
    //   318: goto -79 -> 239
    //   321: astore_1
    //   322: goto -83 -> 239
    //   325: aload 9
    //   327: astore_1
    //   328: goto -149 -> 179
    //   331: aload 9
    //   333: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	334	0	this	dp
    //   0	334	1	paramList	List<hs<dn>>
    //   34	141	2	m	int
    //   172	2	3	n	int
    //   62	211	4	l1	long
    //   102	181	6	l2	long
    //   4	291	8	localObject	Object
    //   39	293	9	localList	List<hs<dn>>
    //   92	128	10	localhs	hs
    //   70	13	11	localIterator	Iterator
    //   147	19	12	localdw	dw
    // Exception table:
    //   from	to	target	type
    //   9	28	205	finally
    //   30	33	205	finally
    //   206	209	205	finally
    //   111	132	238	java/lang/InterruptedException
    //   136	149	238	java/lang/InterruptedException
    //   154	173	238	java/lang/InterruptedException
    //   219	235	238	java/lang/InterruptedException
    //   111	132	271	finally
    //   136	149	271	finally
    //   154	173	271	finally
    //   219	235	271	finally
    //   239	245	271	finally
    //   111	132	313	java/util/concurrent/TimeoutException
    //   136	149	313	java/util/concurrent/TimeoutException
    //   154	173	313	java/util/concurrent/TimeoutException
    //   219	235	313	java/util/concurrent/TimeoutException
    //   111	132	317	java/util/concurrent/ExecutionException
    //   136	149	317	java/util/concurrent/ExecutionException
    //   154	173	317	java/util/concurrent/ExecutionException
    //   219	235	317	java/util/concurrent/ExecutionException
    //   111	132	321	android/os/RemoteException
    //   136	149	321	android/os/RemoteException
    //   154	173	321	android/os/RemoteException
    //   219	235	321	android/os/RemoteException
  }
  
  public dn a(List<di> paramList)
  {
    gz.a("Starting mediation.");
    ExecutorService localExecutorService = Executors.newCachedThreadPool();
    ArrayList localArrayList = new ArrayList();
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      di localdi = (di)paramList.next();
      gz.c("Trying mediation network: " + b);
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext())
      {
        final Object localObject = (String)localIterator.next();
        localObject = new dm(c, (String)localObject, b, d, localdi, a.c, a.d, a.k, e, l, a.z, a.n);
        hs localhs = hc.a(localExecutorService, new Callable()
        {
          public dn a()
            throws Exception
          {
            synchronized (dp.a(dp.this))
            {
              if (dp.b(dp.this)) {
                return null;
              }
              return localObject.a(dp.c(dp.this), dp.d(dp.this));
            }
          }
        });
        k.put(localhs, localObject);
        localArrayList.add(localhs);
      }
    }
    switch (h)
    {
    default: 
      return b(localArrayList);
    }
    return c(localArrayList);
  }
  
  public void a()
  {
    synchronized (i)
    {
      j = true;
      Iterator localIterator = k.values().iterator();
      if (localIterator.hasNext()) {
        ((dm)localIterator.next()).a();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */