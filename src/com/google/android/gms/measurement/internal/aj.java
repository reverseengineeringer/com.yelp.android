package com.google.android.gms.measurement.internal;

abstract class aj
  extends ai
{
  private boolean a;
  private boolean b;
  private boolean c;
  
  aj(ag paramag)
  {
    super(paramag);
    n.a(this);
  }
  
  boolean E()
  {
    return (a) && (!b);
  }
  
  boolean F()
  {
    return c;
  }
  
  protected void G()
  {
    if (!E()) {
      throw new IllegalStateException("Not initialized");
    }
  }
  
  public final void H()
  {
    if (a) {
      throw new IllegalStateException("Can't initialize twice");
    }
    a();
    n.C();
    a = true;
  }
  
  protected abstract void a();
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */