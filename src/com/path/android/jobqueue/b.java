package com.path.android.jobqueue;

public class b
{
  protected Long a;
  protected int b;
  protected String c;
  protected int d;
  protected long e;
  protected long f;
  protected long g;
  protected boolean h;
  transient BaseJob i;
  
  public b(int paramInt, BaseJob paramBaseJob, long paramLong1, long paramLong2)
  {
    this(null, paramInt, paramBaseJob.getRunGroupId(), 0, paramBaseJob, System.nanoTime(), paramLong1, paramLong2);
  }
  
  public b(Long paramLong, int paramInt1, String paramString, int paramInt2, BaseJob paramBaseJob, long paramLong1, long paramLong2, long paramLong3)
  {
    a = paramLong;
    b = paramInt1;
    c = paramString;
    d = paramInt2;
    f = paramLong1;
    e = paramLong2;
    i = paramBaseJob;
    g = paramLong3;
    h = paramBaseJob.requiresNetwork();
  }
  
  public Long a()
  {
    return a;
  }
  
  public void a(long paramLong)
  {
    g = paramLong;
  }
  
  public void a(Long paramLong)
  {
    a = paramLong;
  }
  
  public final boolean a(int paramInt)
  {
    return i.safeRun(paramInt);
  }
  
  public void b(int paramInt)
  {
    d = paramInt;
  }
  
  public boolean b()
  {
    return h;
  }
  
  public int c()
  {
    return b;
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
    if (!(paramObject instanceof b)) {}
    do
    {
      return false;
      paramObject = (b)paramObject;
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
  
  public BaseJob h()
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
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */