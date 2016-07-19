package com.yelp.android.cw;

import com.yelp.android.cx.n;
import com.yelp.android.db.f;
import com.yelp.android.db.h;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicInteger;
import jp.line.android.sdk.api.ApiType;
import jp.line.android.sdk.api.FutureStatus;

public final class a
  implements jp.line.android.sdk.api.a
{
  final b a = new n();
  private e b = null;
  private final Map<String, d<?>> c = new HashMap();
  private final Executor d = Executors.newCachedThreadPool();
  
  private <RO> jp.line.android.sdk.api.b<RO> a(c paramc, jp.line.android.sdk.api.c<RO> paramc1)
  {
    if (paramc == null) {
      throw new IllegalArgumentException("request is null.");
    }
    String str = a.a(paramc);
    try
    {
      d locald = (d)c.get(str);
      if (locald == null)
      {
        locald = new d();
        if ((b != null) && (b.a())) {
          locald.a(new c(paramc, b));
        }
        c.put(str, locald);
        i = 1;
        if (i != 0) {
          d.execute(new b(str, paramc, locald));
        }
        if (paramc1 != null) {
          locald.a(paramc1);
        }
        return locald;
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        Object localObject = null;
        continue;
        int i = 0;
      }
    }
    finally {}
  }
  
  public final e a()
  {
    return b;
  }
  
  public final jp.line.android.sdk.api.b<com.yelp.android.db.a> a(String paramString1, String paramString2, jp.line.android.sdk.api.c<com.yelp.android.db.a> paramc)
  {
    c localc = new c(ApiType.GET_ACCESS_TOKEN);
    localc.a(paramString1);
    localc.b(paramString2);
    return a(localc, paramc);
  }
  
  public final jp.line.android.sdk.api.b<String> a(String paramString, jp.line.android.sdk.api.c<String> paramc)
  {
    c localc = new c(ApiType.LOGOUT);
    localc.c(paramString);
    return a(localc, paramc);
  }
  
  public final jp.line.android.sdk.api.b<f> a(jp.line.android.sdk.api.c<f> paramc)
  {
    return a(new c(ApiType.GET_OTP), paramc);
  }
  
  final void a(String paramString)
  {
    try
    {
      c.remove(paramString);
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public final jp.line.android.sdk.api.b<h> b(jp.line.android.sdk.api.c<h> paramc)
  {
    return a(new c(ApiType.GET_MY_PROFILE), paramc);
  }
  
  public static final class a
  {
    private static final AtomicInteger a = new AtomicInteger(0);
    
    public static final String a(c paramc)
    {
      if (paramc == null) {
        return null;
      }
      ApiType localApiType = a;
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(localApiType.ordinal());
      switch (a.1.a[localApiType.ordinal()])
      {
      default: 
        localStringBuilder.append("_").append(a.getAndIncrement());
      }
      for (;;)
      {
        return localStringBuilder.toString();
        localStringBuilder.append("_").append(paramc.c()).append("_").append(paramc.d());
        continue;
        localStringBuilder.append("_").append(paramc.g());
      }
    }
  }
  
  private final class b<RO>
    implements Runnable
  {
    private final String b;
    private final c c;
    private final d<RO> d;
    
    b(c paramc, d<RO> paramd)
    {
      b = paramc;
      c = paramd;
      d locald;
      d = locald;
    }
    
    /* Error */
    public final void run()
    {
      // Byte code:
      //   0: aload_0
      //   1: getfield 22	com/yelp/android/cw/a$b:a	Lcom/yelp/android/cw/a;
      //   4: invokevirtual 40	com/yelp/android/cw/a:a	()Lcom/yelp/android/cw/e;
      //   7: astore_1
      //   8: aload_1
      //   9: ifnull +73 -> 82
      //   12: aload_0
      //   13: getfield 29	com/yelp/android/cw/a$b:c	Lcom/yelp/android/cw/c;
      //   16: astore_2
      //   17: aload_1
      //   18: invokeinterface 45 1 0
      //   23: ifeq +59 -> 82
      //   26: aload_0
      //   27: getfield 29	com/yelp/android/cw/a$b:c	Lcom/yelp/android/cw/c;
      //   30: astore_2
      //   31: aload_1
      //   32: invokeinterface 48 1 0
      //   37: astore_1
      //   38: aload_1
      //   39: ifnull +48 -> 87
      //   42: aload_1
      //   43: getfield 53	com/yelp/android/cw/f:a	Ljava/lang/Object;
      //   46: ifnull +41 -> 87
      //   49: aload_0
      //   50: getfield 27	com/yelp/android/cw/a$b:b	Ljava/lang/String;
      //   53: astore_2
      //   54: aload_0
      //   55: getfield 29	com/yelp/android/cw/a$b:c	Lcom/yelp/android/cw/c;
      //   58: astore_2
      //   59: aload_0
      //   60: getfield 31	com/yelp/android/cw/a$b:d	Lcom/yelp/android/cw/d;
      //   63: aload_1
      //   64: getfield 53	com/yelp/android/cw/f:a	Ljava/lang/Object;
      //   67: invokevirtual 58	com/yelp/android/cw/d:a	(Ljava/lang/Object;)V
      //   70: aload_0
      //   71: getfield 22	com/yelp/android/cw/a$b:a	Lcom/yelp/android/cw/a;
      //   74: aload_0
      //   75: getfield 27	com/yelp/android/cw/a$b:b	Ljava/lang/String;
      //   78: invokevirtual 61	com/yelp/android/cw/a:a	(Ljava/lang/String;)V
      //   81: return
      //   82: aconst_null
      //   83: astore_1
      //   84: goto -46 -> 38
      //   87: aload_0
      //   88: getfield 27	com/yelp/android/cw/a$b:b	Ljava/lang/String;
      //   91: astore_1
      //   92: aload_0
      //   93: getfield 29	com/yelp/android/cw/a$b:c	Lcom/yelp/android/cw/c;
      //   96: astore_1
      //   97: aload_0
      //   98: getfield 29	com/yelp/android/cw/a$b:c	Lcom/yelp/android/cw/c;
      //   101: astore_1
      //   102: aload_0
      //   103: getfield 22	com/yelp/android/cw/a$b:a	Lcom/yelp/android/cw/a;
      //   106: getfield 64	com/yelp/android/cw/a:a	Lcom/yelp/android/cw/b;
      //   109: aload_0
      //   110: getfield 29	com/yelp/android/cw/a$b:c	Lcom/yelp/android/cw/c;
      //   113: aload_0
      //   114: getfield 31	com/yelp/android/cw/a$b:d	Lcom/yelp/android/cw/d;
      //   117: invokeinterface 69 3 0
      //   122: aload_0
      //   123: getfield 22	com/yelp/android/cw/a$b:a	Lcom/yelp/android/cw/a;
      //   126: aload_0
      //   127: getfield 27	com/yelp/android/cw/a$b:b	Ljava/lang/String;
      //   130: invokevirtual 61	com/yelp/android/cw/a:a	(Ljava/lang/String;)V
      //   133: return
      //   134: astore_1
      //   135: aload_0
      //   136: getfield 31	com/yelp/android/cw/a$b:d	Lcom/yelp/android/cw/d;
      //   139: aload_1
      //   140: invokevirtual 72	com/yelp/android/cw/d:a	(Ljava/lang/Throwable;)V
      //   143: goto -21 -> 122
      //   146: astore_1
      //   147: aload_0
      //   148: getfield 22	com/yelp/android/cw/a$b:a	Lcom/yelp/android/cw/a;
      //   151: aload_0
      //   152: getfield 27	com/yelp/android/cw/a$b:b	Ljava/lang/String;
      //   155: invokevirtual 61	com/yelp/android/cw/a:a	(Ljava/lang/String;)V
      //   158: aload_1
      //   159: athrow
      //   160: astore_1
      //   161: goto -64 -> 97
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	164	0	this	b
      //   7	95	1	localObject1	Object
      //   134	6	1	localThrowable1	Throwable
      //   146	13	1	localObject2	Object
      //   160	1	1	localThrowable2	Throwable
      //   16	43	2	localObject3	Object
      // Exception table:
      //   from	to	target	type
      //   97	122	134	java/lang/Throwable
      //   0	8	146	finally
      //   12	38	146	finally
      //   42	70	146	finally
      //   87	97	146	finally
      //   97	122	146	finally
      //   135	143	146	finally
      //   0	8	160	java/lang/Throwable
      //   12	38	160	java/lang/Throwable
      //   42	70	160	java/lang/Throwable
      //   87	97	160	java/lang/Throwable
    }
  }
  
  private static final class c<RO>
    implements jp.line.android.sdk.api.c<RO>
  {
    private final c a;
    private final e b;
    
    c(c paramc, e parame)
    {
      a = paramc;
      b = parame;
    }
    
    public final void a(jp.line.android.sdk.api.b<RO> paramb)
    {
      if ((paramb.b() == FutureStatus.SUCCESS) && (paramb.c() != null))
      {
        paramb = b;
        paramb = a;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cw.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */