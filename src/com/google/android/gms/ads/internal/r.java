package com.google.android.gms.ads.internal;

import android.os.Handler;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hd;
import java.lang.ref.WeakReference;

@fv
public class r
{
  private final a a;
  private final Runnable b;
  private AdRequestParcel c;
  private boolean d = false;
  private boolean e = false;
  private long f = 0L;
  
  public r(b paramb)
  {
    this(paramb, new a(hd.a));
  }
  
  r(b paramb, a parama)
  {
    a = parama;
    b = new Runnable()
    {
      public void run()
      {
        r.a(r.this, false);
        b localb = (b)a.get();
        if (localb != null) {
          localb.c(r.a(r.this));
        }
      }
    };
  }
  
  public void a()
  {
    d = false;
    a.a(b);
  }
  
  public void a(AdRequestParcel paramAdRequestParcel)
  {
    a(paramAdRequestParcel, 60000L);
  }
  
  public void a(AdRequestParcel paramAdRequestParcel, long paramLong)
  {
    if (d) {
      gz.d("An ad refresh is already scheduled.");
    }
    do
    {
      return;
      c = paramAdRequestParcel;
      d = true;
      f = paramLong;
    } while (e);
    gz.c("Scheduling ad refresh " + paramLong + " milliseconds from now.");
    a.a(b, paramLong);
  }
  
  public void b()
  {
    e = true;
    if (d) {
      a.a(b);
    }
  }
  
  public void c()
  {
    e = false;
    if (d)
    {
      d = false;
      a(c, f);
    }
  }
  
  public boolean d()
  {
    return d;
  }
  
  public static class a
  {
    private final Handler a;
    
    public a(Handler paramHandler)
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */