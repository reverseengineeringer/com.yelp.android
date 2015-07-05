package com.path.android.jobqueue.nonPersistentQueue;

import java.util.Collection;
import java.util.Comparator;

public class f
  implements com.path.android.jobqueue.g
{
  public final Comparator<com.path.android.jobqueue.b> a = new g(this);
  private long b = -2147483648L;
  private d c;
  private final String d;
  private final long e;
  
  public f(long paramLong, String paramString)
  {
    d = paramString;
    e = paramLong;
    c = new d(5, a);
  }
  
  private static int b(int paramInt1, int paramInt2)
  {
    if (paramInt1 > paramInt2) {
      return -1;
    }
    if (paramInt2 > paramInt1) {
      return 1;
    }
    return 0;
  }
  
  private static int b(long paramLong1, long paramLong2)
  {
    if (paramLong1 > paramLong2) {
      return -1;
    }
    if (paramLong2 > paramLong1) {
      return 1;
    }
    return 0;
  }
  
  public int a()
  {
    return c.a();
  }
  
  public int a(boolean paramBoolean, Collection<String> paramCollection)
  {
    return c.b(paramBoolean, paramCollection).a();
  }
  
  public long a(com.path.android.jobqueue.b paramb)
  {
    try
    {
      b += 1L;
      paramb.a(Long.valueOf(b));
      c.a(paramb);
      long l = paramb.a().longValue();
      return l;
    }
    finally
    {
      paramb = finally;
      throw paramb;
    }
  }
  
  public Long a(boolean paramBoolean)
  {
    com.path.android.jobqueue.b localb = c.a(paramBoolean, null);
    if (localb == null) {
      return null;
    }
    return Long.valueOf(localb.g());
  }
  
  public long b(com.path.android.jobqueue.b paramb)
  {
    c(paramb);
    paramb.a(Long.MIN_VALUE);
    c.a(paramb);
    return paramb.a().longValue();
  }
  
  public com.path.android.jobqueue.b b(boolean paramBoolean, Collection<String> paramCollection)
  {
    com.path.android.jobqueue.b localb = c.a(paramBoolean, paramCollection);
    paramCollection = localb;
    if (localb != null)
    {
      if (localb.g() > System.nanoTime()) {
        paramCollection = null;
      }
    }
    else {
      return paramCollection;
    }
    localb.a(e);
    localb.b(localb.d() + 1);
    c.b(localb);
    return localb;
  }
  
  public void c(com.path.android.jobqueue.b paramb)
  {
    c.b(paramb);
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.nonPersistentQueue.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */