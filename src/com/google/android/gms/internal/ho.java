package com.google.android.gms.internal;

import android.app.Activity;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import com.google.android.gms.ads.internal.s;

@fv
public final class ho
{
  private Activity a;
  private boolean b;
  private boolean c;
  private boolean d;
  private ViewTreeObserver.OnGlobalLayoutListener e;
  private ViewTreeObserver.OnScrollChangedListener f;
  
  public ho(Activity paramActivity, ViewTreeObserver.OnGlobalLayoutListener paramOnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener paramOnScrollChangedListener)
  {
    a = paramActivity;
    e = paramOnGlobalLayoutListener;
    f = paramOnScrollChangedListener;
  }
  
  private void e()
  {
    if (a == null) {}
    while (b) {
      return;
    }
    if (e != null) {
      s.e().a(a, e);
    }
    if (f != null) {
      s.e().a(a, f);
    }
    b = true;
  }
  
  private void f()
  {
    if (a == null) {}
    while (!b) {
      return;
    }
    if (e != null) {
      s.g().a(a, e);
    }
    if (f != null) {
      s.e().b(a, f);
    }
    b = false;
  }
  
  public void a()
  {
    d = true;
    if (c) {
      e();
    }
  }
  
  public void a(Activity paramActivity)
  {
    a = paramActivity;
  }
  
  public void b()
  {
    d = false;
    f();
  }
  
  public void c()
  {
    c = true;
    if (d) {
      e();
    }
  }
  
  public void d()
  {
    c = false;
    f();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ho
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */