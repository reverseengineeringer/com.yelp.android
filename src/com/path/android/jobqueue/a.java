package com.path.android.jobqueue;

import java.util.Collections;
import java.util.Set;

public class a
{
  protected Long a;
  protected int b;
  protected String c;
  protected int d;
  protected long e;
  protected long f;
  protected long g;
  protected boolean h;
  transient Job i;
  protected final Set<String> j;
  private boolean k;
  private boolean l;
  
  public a(int paramInt, Job paramJob, long paramLong1, long paramLong2)
  {
    this(null, paramInt, paramJob.getRunGroupId(), 0, paramJob, System.nanoTime(), paramLong1, paramLong2);
  }
  
  public a(Long paramLong, int paramInt1, String paramString, int paramInt2, Job paramJob, long paramLong1, long paramLong2, long paramLong3)
  {
    a = paramLong;
    b = paramInt1;
    c = paramString;
    d = paramInt2;
    f = paramLong1;
    e = paramLong2;
    i = paramJob;
    priority = paramInt1;
    g = paramLong3;
    h = paramJob.requiresNetwork();
    if (paramJob.getTags() == null) {}
    for (paramLong = null;; paramLong = Collections.unmodifiableSet(paramJob.getTags()))
    {
      j = paramLong;
      return;
    }
  }
  
  public final int a(int paramInt)
  {
    return i.safeRun(this, paramInt);
  }
  
  public Long a()
  {
    return a;
  }
  
  void a(long paramLong)
  {
    e = paramLong;
  }
  
  public void a(Long paramLong)
  {
    a = paramLong;
  }
  
  public void b(int paramInt)
  {
    b = paramInt;
    i.priority = b;
  }
  
  public void b(long paramLong)
  {
    g = paramLong;
  }
  
  public boolean b()
  {
    return h;
  }
  
  public int c()
  {
    return b;
  }
  
  public void c(int paramInt)
  {
    d = paramInt;
  }
  
  public int d()
  {
    return d;
  }
  
  public long e()
  {
    return f;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof a)) {}
    do
    {
      return false;
      paramObject = (a)paramObject;
    } while ((a == null) || (a == null));
    return a.equals(a);
  }
  
  public long f()
  {
    return g;
  }
  
  public long g()
  {
    return e;
  }
  
  public Job h()
  {
    return i;
  }
  
  public int hashCode()
  {
    if (a == null) {
      return super.hashCode();
    }
    return a.intValue();
  }
  
  public String i()
  {
    return c;
  }
  
  public Set<String> j()
  {
    return j;
  }
  
  public boolean k()
  {
    return k;
  }
  
  public boolean l()
  {
    return (j != null) && (j.size() > 0);
  }
  
  public void m()
  {
    try
    {
      l = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */