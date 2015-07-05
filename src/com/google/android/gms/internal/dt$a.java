package com.google.android.gms.internal;

import android.os.Handler;

final class dt$a
{
  private final Runnable mv;
  private volatile boolean st = false;
  
  public dt$a(dt paramdt)
  {
    mv = new dt.a.1(this, paramdt);
  }
  
  public void cancel()
  {
    st = true;
    gq.wR.removeCallbacks(mv);
  }
  
  public void cs()
  {
    gq.wR.postDelayed(mv, 250L);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dt.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */