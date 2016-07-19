package com.google.android.gms.analytics.internal;

public abstract class r
  extends q
{
  private boolean a;
  private boolean b;
  
  protected r(t paramt)
  {
    super(paramt);
  }
  
  public boolean C()
  {
    return (a) && (!b);
  }
  
  protected void D()
  {
    if (!C()) {
      throw new IllegalStateException("Not initialized");
    }
  }
  
  public void E()
  {
    a();
    a = true;
  }
  
  protected abstract void a();
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */