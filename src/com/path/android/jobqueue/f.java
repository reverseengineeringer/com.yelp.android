package com.path.android.jobqueue;

public class f
{
  public static final f a = new a(true);
  public static final f b = new a(false);
  private boolean c;
  private Long d;
  private Integer e;
  private boolean f = false;
  
  public f(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public void a(Long paramLong)
  {
    d = paramLong;
  }
  
  public boolean a()
  {
    return c;
  }
  
  public Long b()
  {
    return d;
  }
  
  public Integer c()
  {
    return e;
  }
  
  public boolean d()
  {
    return f;
  }
  
  private static class a
    extends f
  {
    public a(boolean paramBoolean)
    {
      super();
    }
    
    public void a(Long paramLong)
    {
      throw new IllegalStateException("This object is immutable. Create a new one using the constructor.");
    }
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */