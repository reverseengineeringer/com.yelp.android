package com.bumptech.glide.load.engine;

import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.f;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

class a<A, T, Z>
{
  private static final b a = new b();
  private final e b;
  private final int c;
  private final int d;
  private final com.yelp.android.w.c<A> e;
  private final com.yelp.android.ak.b<A, T> f;
  private final f<T> g;
  private final com.yelp.android.ai.c<T, Z> h;
  private final a i;
  private final DiskCacheStrategy j;
  private final Priority k;
  private final b l;
  private volatile boolean m;
  
  public a(e parame, int paramInt1, int paramInt2, com.yelp.android.w.c<A> paramc, com.yelp.android.ak.b<A, T> paramb, f<T> paramf, com.yelp.android.ai.c<T, Z> paramc1, a parama, DiskCacheStrategy paramDiskCacheStrategy, Priority paramPriority)
  {
    this(parame, paramInt1, paramInt2, paramc, paramb, paramf, paramc1, parama, paramDiskCacheStrategy, paramPriority, a);
  }
  
  a(e parame, int paramInt1, int paramInt2, com.yelp.android.w.c<A> paramc, com.yelp.android.ak.b<A, T> paramb, f<T> paramf, com.yelp.android.ai.c<T, Z> paramc1, a parama, DiskCacheStrategy paramDiskCacheStrategy, Priority paramPriority, b paramb1)
  {
    b = parame;
    c = paramInt1;
    d = paramInt2;
    e = paramc;
    f = paramb;
    g = paramf;
    h = paramc1;
    i = parama;
    j = paramDiskCacheStrategy;
    k = paramPriority;
    l = paramb1;
  }
  
  private i<T> a(com.bumptech.glide.load.b paramb)
    throws IOException
  {
    Object localObject1 = null;
    Object localObject3 = i.a().a(paramb);
    if (localObject3 == null) {}
    for (;;)
    {
      return (i<T>)localObject1;
      try
      {
        localObject3 = f.a().a(localObject3, c, d);
        localObject1 = localObject3;
        if (localObject3 != null) {
          continue;
        }
        i.a().b(paramb);
        return (i<T>)localObject3;
      }
      finally
      {
        if (0 == 0) {
          i.a().b(paramb);
        }
      }
    }
  }
  
  private i<Z> a(i<T> parami)
  {
    long l1 = com.yelp.android.ao.d.a();
    parami = c(parami);
    if (Log.isLoggable("DecodeJob", 2)) {
      a("Transformed resource from source", l1);
    }
    b(parami);
    l1 = com.yelp.android.ao.d.a();
    parami = d(parami);
    if (Log.isLoggable("DecodeJob", 2)) {
      a("Transcoded transformed from source", l1);
    }
    return parami;
  }
  
  private i<T> a(A paramA)
    throws IOException
  {
    if (j.cacheSource()) {
      paramA = b(paramA);
    }
    long l1;
    i locali;
    do
    {
      return paramA;
      l1 = com.yelp.android.ao.d.a();
      locali = f.b().a(paramA, c, d);
      paramA = locali;
    } while (!Log.isLoggable("DecodeJob", 2));
    a("Decoded from source", l1);
    return locali;
  }
  
  private void a(String paramString, long paramLong)
  {
    Log.v("DecodeJob", paramString + " in " + com.yelp.android.ao.d.a(paramLong) + ", key: " + b);
  }
  
  private i<T> b(A paramA)
    throws IOException
  {
    long l1 = com.yelp.android.ao.d.a();
    paramA = new c(f.c(), paramA);
    i.a().a(b.a(), paramA);
    if (Log.isLoggable("DecodeJob", 2)) {
      a("Wrote source to cache", l1);
    }
    l1 = com.yelp.android.ao.d.a();
    paramA = a(b.a());
    if ((Log.isLoggable("DecodeJob", 2)) && (paramA != null)) {
      a("Decoded source from cache", l1);
    }
    return paramA;
  }
  
  private void b(i<T> parami)
  {
    if ((parami == null) || (!j.cacheResult())) {}
    long l1;
    do
    {
      return;
      l1 = com.yelp.android.ao.d.a();
      parami = new c(f.d(), parami);
      i.a().a(b, parami);
    } while (!Log.isLoggable("DecodeJob", 2));
    a("Wrote transformed from source to cache", l1);
  }
  
  private i<T> c(i<T> parami)
  {
    Object localObject;
    if (parami == null) {
      localObject = null;
    }
    i locali;
    do
    {
      return (i<T>)localObject;
      locali = g.a(parami, c, d);
      localObject = locali;
    } while (parami.equals(locali));
    parami.d();
    return locali;
  }
  
  private i<Z> d(i<T> parami)
  {
    if (parami == null) {
      return null;
    }
    return h.a(parami);
  }
  
  private i<T> e()
    throws Exception
  {
    try
    {
      long l1 = com.yelp.android.ao.d.a();
      Object localObject1 = e.a(k);
      if (Log.isLoggable("DecodeJob", 2)) {
        a("Fetched data", l1);
      }
      boolean bool = m;
      if (bool) {
        return null;
      }
      localObject1 = a(localObject1);
      return (i<T>)localObject1;
    }
    finally
    {
      e.a();
    }
  }
  
  public i<Z> a()
    throws Exception
  {
    Object localObject;
    if (!j.cacheResult()) {
      localObject = null;
    }
    long l1;
    i locali;
    do
    {
      return (i<Z>)localObject;
      l1 = com.yelp.android.ao.d.a();
      localObject = a(b);
      if (Log.isLoggable("DecodeJob", 2)) {
        a("Decoded transformed from cache", l1);
      }
      l1 = com.yelp.android.ao.d.a();
      locali = d((i)localObject);
      localObject = locali;
    } while (!Log.isLoggable("DecodeJob", 2));
    a("Transcoded transformed from cache", l1);
    return locali;
  }
  
  public i<Z> b()
    throws Exception
  {
    if (!j.cacheSource()) {
      return null;
    }
    long l1 = com.yelp.android.ao.d.a();
    i locali = a(b.a());
    if (Log.isLoggable("DecodeJob", 2)) {
      a("Decoded source from cache", l1);
    }
    return a(locali);
  }
  
  public i<Z> c()
    throws Exception
  {
    return a(e());
  }
  
  public void d()
  {
    m = true;
    e.c();
  }
  
  static abstract interface a
  {
    public abstract com.yelp.android.y.a a();
  }
  
  static class b
  {
    public OutputStream a(File paramFile)
      throws FileNotFoundException
    {
      return new BufferedOutputStream(new FileOutputStream(paramFile));
    }
  }
  
  class c<DataType>
    implements com.yelp.android.y.a.b
  {
    private final com.bumptech.glide.load.a<DataType> b;
    private final DataType c;
    
    public c(DataType paramDataType)
    {
      b = paramDataType;
      Object localObject;
      c = localObject;
    }
    
    /* Error */
    public boolean a(File paramFile)
    {
      // Byte code:
      //   0: iconst_0
      //   1: istore_3
      //   2: aconst_null
      //   3: astore 5
      //   5: aconst_null
      //   6: astore 4
      //   8: aload_0
      //   9: getfield 21	com/bumptech/glide/load/engine/a$c:a	Lcom/bumptech/glide/load/engine/a;
      //   12: invokestatic 39	com/bumptech/glide/load/engine/a:a	(Lcom/bumptech/glide/load/engine/a;)Lcom/bumptech/glide/load/engine/a$b;
      //   15: aload_1
      //   16: invokevirtual 44	com/bumptech/glide/load/engine/a$b:a	(Ljava/io/File;)Ljava/io/OutputStream;
      //   19: astore_1
      //   20: aload_1
      //   21: astore 4
      //   23: aload_1
      //   24: astore 5
      //   26: aload_0
      //   27: getfield 26	com/bumptech/glide/load/engine/a$c:b	Lcom/bumptech/glide/load/a;
      //   30: aload_0
      //   31: getfield 28	com/bumptech/glide/load/engine/a$c:c	Ljava/lang/Object;
      //   34: aload_1
      //   35: invokeinterface 49 3 0
      //   40: istore_2
      //   41: iload_2
      //   42: istore_3
      //   43: aload_1
      //   44: ifnull +9 -> 53
      //   47: aload_1
      //   48: invokevirtual 54	java/io/OutputStream:close	()V
      //   51: iload_2
      //   52: istore_3
      //   53: iload_3
      //   54: ireturn
      //   55: astore_1
      //   56: aload 4
      //   58: astore 5
      //   60: ldc 56
      //   62: iconst_3
      //   63: invokestatic 62	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
      //   66: ifeq +16 -> 82
      //   69: aload 4
      //   71: astore 5
      //   73: ldc 56
      //   75: ldc 64
      //   77: aload_1
      //   78: invokestatic 68	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
      //   81: pop
      //   82: aload 4
      //   84: ifnull -31 -> 53
      //   87: aload 4
      //   89: invokevirtual 54	java/io/OutputStream:close	()V
      //   92: iconst_0
      //   93: ireturn
      //   94: astore_1
      //   95: iconst_0
      //   96: ireturn
      //   97: astore_1
      //   98: aload 5
      //   100: ifnull +8 -> 108
      //   103: aload 5
      //   105: invokevirtual 54	java/io/OutputStream:close	()V
      //   108: aload_1
      //   109: athrow
      //   110: astore_1
      //   111: iload_2
      //   112: ireturn
      //   113: astore 4
      //   115: goto -7 -> 108
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	118	0	this	c
      //   0	118	1	paramFile	File
      //   40	72	2	bool1	boolean
      //   1	53	3	bool2	boolean
      //   6	82	4	localFile	File
      //   113	1	4	localIOException	IOException
      //   3	101	5	localObject	Object
      // Exception table:
      //   from	to	target	type
      //   8	20	55	java/io/FileNotFoundException
      //   26	41	55	java/io/FileNotFoundException
      //   87	92	94	java/io/IOException
      //   8	20	97	finally
      //   26	41	97	finally
      //   60	69	97	finally
      //   73	82	97	finally
      //   47	51	110	java/io/IOException
      //   103	108	113	java/io/IOException
    }
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */