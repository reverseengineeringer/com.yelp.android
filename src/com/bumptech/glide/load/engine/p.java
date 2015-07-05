package com.bumptech.glide.load.engine;

import android.os.Looper;
import com.bumptech.glide.load.b;

class p<Z>
  implements t<Z>
{
  private final t<Z> a;
  private final boolean b;
  private q c;
  private b d;
  private int e;
  private boolean f;
  
  p(t<Z> paramt, boolean paramBoolean)
  {
    if (paramt == null) {
      throw new NullPointerException("Wrapped resource must not be null");
    }
    a = paramt;
    b = paramBoolean;
  }
  
  void a(b paramb, q paramq)
  {
    d = paramb;
    c = paramq;
  }
  
  boolean a()
  {
    return b;
  }
  
  public Z b()
  {
    return (Z)a.b();
  }
  
  public int c()
  {
    return a.c();
  }
  
  public void d()
  {
    if (e > 0) {
      throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
    }
    if (f) {
      throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
    }
    f = true;
    a.d();
  }
  
  void e()
  {
    if (f) {
      throw new IllegalStateException("Cannot acquire a recycled resource");
    }
    if (!Looper.getMainLooper().equals(Looper.myLooper())) {
      throw new IllegalThreadStateException("Must call acquire on the main thread");
    }
    e += 1;
  }
  
  void f()
  {
    if (e <= 0) {
      throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
    }
    if (!Looper.getMainLooper().equals(Looper.myLooper())) {
      throw new IllegalThreadStateException("Must call release on the main thread");
    }
    int i = e - 1;
    e = i;
    if (i == 0) {
      c.b(d, this);
    }
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */