package com.google.android.gms.ads.internal;

import android.os.Handler;

public class r$a
{
  private final Handler a;
  
  public r$a(Handler paramHandler)
  {
    a = paramHandler;
  }
  
  public void a(Runnable paramRunnable)
  {
    a.removeCallbacks(paramRunnable);
  }
  
  public boolean a(Runnable paramRunnable, long paramLong)
  {
    return a.postDelayed(paramRunnable, paramLong);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.r.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */