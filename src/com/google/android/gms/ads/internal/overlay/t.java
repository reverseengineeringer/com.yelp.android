package com.google.android.gms.ads.internal.overlay;

import android.os.Handler;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.hd;

@fv
class t
  implements Runnable
{
  private j a;
  private boolean b = false;
  
  t(j paramj)
  {
    a = paramj;
  }
  
  public void a()
  {
    b = true;
    hd.a.removeCallbacks(this);
  }
  
  public void b()
  {
    hd.a.postDelayed(this, 250L);
  }
  
  public void run()
  {
    if (!b)
    {
      a.n();
      b();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */