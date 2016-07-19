package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.google.android.gms.internal.jt;

public class e
  extends aj
{
  private Handler a;
  private long b;
  private final Runnable c = new Runnable()
  {
    public void run()
    {
      r().a(new Runnable()
      {
        public void run()
        {
          v();
        }
      });
    }
  };
  private final p d = new p(n)
  {
    public void a()
    {
      e.a(e.this);
    }
  };
  private final p e = new p(n)
  {
    public void a()
    {
      e.b(e.this);
    }
  };
  
  e(ag paramag)
  {
    super(paramag);
  }
  
  private void a(long paramLong)
  {
    f();
    w();
    d.c();
    e.c();
    s().z().a("Activity resumed, time", Long.valueOf(paramLong));
    b = paramLong;
    if (l().a() - ti.a() > tk.a())
    {
      tj.a(true);
      tl.a(0L);
    }
    if (tj.a())
    {
      d.a(Math.max(0L, th.a() - tl.a()));
      return;
    }
    e.a(Math.max(0L, 3600000L - tl.a()));
  }
  
  private void b(long paramLong)
  {
    f();
    w();
    d.c();
    e.c();
    s().z().a("Activity paused, time", Long.valueOf(paramLong));
    if (b != 0L) {
      tl.a(tl.a() + (paramLong - b));
    }
    tk.a(l().a());
    try
    {
      if (!tj.a()) {
        a.postDelayed(c, 1000L);
      }
      return;
    }
    finally {}
  }
  
  private void w()
  {
    try
    {
      if (a == null) {
        a = new Handler(Looper.getMainLooper());
      }
      return;
    }
    finally {}
  }
  
  private void x()
  {
    f();
    long l = l().b();
    s().z().a("Session started, time", Long.valueOf(l));
    tj.a(false);
    h().a("auto", "_s", new Bundle());
  }
  
  private void y()
  {
    f();
    long l1 = l().b();
    if (b == 0L) {
      b = (l1 - 3600000L);
    }
    long l2 = tl.a() + (l1 - b);
    tl.a(l2);
    s().z().a("Recording user engagement, ms", Long.valueOf(l2));
    Bundle localBundle = new Bundle();
    localBundle.putLong("_et", l2);
    h().a("auto", "_e", localBundle);
    tl.a(0L);
    b = l1;
    e.a(Math.max(0L, 3600000L - tl.a()));
  }
  
  protected void a() {}
  
  protected void b()
  {
    try
    {
      w();
      a.removeCallbacks(c);
      final long l = l().b();
      r().a(new Runnable()
      {
        public void run()
        {
          e.a(e.this, l);
        }
      });
      return;
    }
    finally {}
  }
  
  protected void c()
  {
    final long l = l().b();
    r().a(new Runnable()
    {
      public void run()
      {
        e.b(e.this, l);
      }
    });
  }
  
  public void v()
  {
    f();
    s().y().a("Application backgrounded. Logging engagement");
    long l = tl.a();
    if (l > 0L)
    {
      Bundle localBundle = new Bundle();
      localBundle.putLong("_et", l);
      h().a("auto", "_e", localBundle);
      tl.a(0L);
      return;
    }
    s().c().a("Not logging non-positive engagement time", Long.valueOf(l));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */