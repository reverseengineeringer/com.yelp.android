package com.google.android.gms.internal;

@ey
public abstract class gf
{
  private final Runnable mv = new gf.1(this);
  private volatile Thread wu;
  
  public final void cancel()
  {
    onStop();
    if (wu != null) {
      wu.interrupt();
    }
  }
  
  public abstract void cx();
  
  public abstract void onStop();
  
  public final void start()
  {
    gh.a(mv);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */