package android.support.v4.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.support.v4.view.ai;
import android.support.v4.view.t;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;

public abstract class a
  implements View.OnTouchListener
{
  private static final int r = ;
  private final a a = new a();
  private final Interpolator b = new AccelerateInterpolator();
  private final View c;
  private Runnable d;
  private float[] e = { 0.0F, 0.0F };
  private float[] f = { Float.MAX_VALUE, Float.MAX_VALUE };
  private int g;
  private int h;
  private float[] i = { 0.0F, 0.0F };
  private float[] j = { 0.0F, 0.0F };
  private float[] k = { Float.MAX_VALUE, Float.MAX_VALUE };
  private boolean l;
  private boolean m;
  private boolean n;
  private boolean o;
  private boolean p;
  private boolean q;
  
  public a(View paramView)
  {
    c = paramView;
    paramView = Resources.getSystem().getDisplayMetrics();
    int i1 = (int)(1575.0F * density + 0.5F);
    int i2 = (int)(density * 315.0F + 0.5F);
    a(i1, i1);
    b(i2, i2);
    a(1);
    e(Float.MAX_VALUE, Float.MAX_VALUE);
    d(0.2F, 0.2F);
    c(1.0F, 1.0F);
    b(r);
    c(500);
    d(500);
  }
  
  private float a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    float f1 = 0.0F;
    paramFloat1 = b(paramFloat1 * paramFloat2, 0.0F, paramFloat3);
    paramFloat3 = f(paramFloat4, paramFloat1);
    paramFloat2 = f(paramFloat2 - paramFloat4, paramFloat1) - paramFloat3;
    if (paramFloat2 < 0.0F) {}
    for (paramFloat1 = -b.getInterpolation(-paramFloat2);; paramFloat1 = b.getInterpolation(paramFloat2))
    {
      paramFloat1 = b(paramFloat1, -1.0F, 1.0F);
      do
      {
        return paramFloat1;
        paramFloat1 = f1;
      } while (paramFloat2 <= 0.0F);
    }
  }
  
  private float a(int paramInt, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    paramFloat1 = a(e[paramInt], paramFloat2, f[paramInt], paramFloat1);
    if (paramFloat1 == 0.0F) {
      return 0.0F;
    }
    float f2 = i[paramInt];
    paramFloat2 = j[paramInt];
    float f1 = k[paramInt];
    paramFloat3 = f2 * paramFloat3;
    if (paramFloat1 > 0.0F) {
      return b(paramFloat1 * paramFloat3, paramFloat2, f1);
    }
    return -b(-paramFloat1 * paramFloat3, paramFloat2, f1);
  }
  
  private boolean a()
  {
    a locala = a;
    int i1 = locala.f();
    int i2 = locala.e();
    return ((i1 != 0) && (f(i1))) || ((i2 != 0) && (e(i2)));
  }
  
  private static float b(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    if (paramFloat1 > paramFloat3) {
      return paramFloat3;
    }
    if (paramFloat1 < paramFloat2) {
      return paramFloat2;
    }
    return paramFloat1;
  }
  
  private static int b(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt1 > paramInt3) {
      return paramInt3;
    }
    if (paramInt1 < paramInt2) {
      return paramInt2;
    }
    return paramInt1;
  }
  
  private void b()
  {
    if (d == null) {
      d = new b(null);
    }
    o = true;
    m = true;
    if ((!l) && (h > 0)) {
      ai.a(c, d, h);
    }
    for (;;)
    {
      l = true;
      return;
      d.run();
    }
  }
  
  private void c()
  {
    if (m)
    {
      o = false;
      return;
    }
    a.b();
  }
  
  private void d()
  {
    long l1 = SystemClock.uptimeMillis();
    MotionEvent localMotionEvent = MotionEvent.obtain(l1, l1, 3, 0.0F, 0.0F, 0);
    c.onTouchEvent(localMotionEvent);
    localMotionEvent.recycle();
  }
  
  private float f(float paramFloat1, float paramFloat2)
  {
    if (paramFloat2 == 0.0F) {}
    do
    {
      do
      {
        do
        {
          return 0.0F;
          switch (g)
          {
          default: 
            return 0.0F;
          }
        } while (paramFloat1 >= paramFloat2);
        if (paramFloat1 >= 0.0F) {
          return 1.0F - paramFloat1 / paramFloat2;
        }
      } while ((!o) || (g != 1));
      return 1.0F;
    } while (paramFloat1 >= 0.0F);
    return paramFloat1 / -paramFloat2;
  }
  
  public a a(float paramFloat1, float paramFloat2)
  {
    k[0] = (paramFloat1 / 1000.0F);
    k[1] = (paramFloat2 / 1000.0F);
    return this;
  }
  
  public a a(int paramInt)
  {
    g = paramInt;
    return this;
  }
  
  public a a(boolean paramBoolean)
  {
    if ((p) && (!paramBoolean)) {
      c();
    }
    p = paramBoolean;
    return this;
  }
  
  public abstract void a(int paramInt1, int paramInt2);
  
  public a b(float paramFloat1, float paramFloat2)
  {
    j[0] = (paramFloat1 / 1000.0F);
    j[1] = (paramFloat2 / 1000.0F);
    return this;
  }
  
  public a b(int paramInt)
  {
    h = paramInt;
    return this;
  }
  
  public a c(float paramFloat1, float paramFloat2)
  {
    i[0] = (paramFloat1 / 1000.0F);
    i[1] = (paramFloat2 / 1000.0F);
    return this;
  }
  
  public a c(int paramInt)
  {
    a.a(paramInt);
    return this;
  }
  
  public a d(float paramFloat1, float paramFloat2)
  {
    e[0] = paramFloat1;
    e[1] = paramFloat2;
    return this;
  }
  
  public a d(int paramInt)
  {
    a.b(paramInt);
    return this;
  }
  
  public a e(float paramFloat1, float paramFloat2)
  {
    f[0] = paramFloat1;
    f[1] = paramFloat2;
    return this;
  }
  
  public abstract boolean e(int paramInt);
  
  public abstract boolean f(int paramInt);
  
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    boolean bool = true;
    if (!p) {
      return false;
    }
    switch (t.a(paramMotionEvent))
    {
    default: 
      if ((!q) || (!o)) {
        break;
      }
    }
    for (;;)
    {
      return bool;
      n = true;
      l = false;
      float f1 = a(0, paramMotionEvent.getX(), paramView.getWidth(), c.getWidth());
      float f2 = a(1, paramMotionEvent.getY(), paramView.getHeight(), c.getHeight());
      a.a(f1, f2);
      if ((o) || (!a())) {
        break;
      }
      b();
      break;
      c();
      break;
      bool = false;
    }
  }
  
  private static class a
  {
    private int a;
    private int b;
    private float c;
    private float d;
    private long e = Long.MIN_VALUE;
    private long f = 0L;
    private int g = 0;
    private int h = 0;
    private long i = -1L;
    private float j;
    private int k;
    
    private float a(float paramFloat)
    {
      return -4.0F * paramFloat * paramFloat + 4.0F * paramFloat;
    }
    
    private float a(long paramLong)
    {
      if (paramLong < e) {
        return 0.0F;
      }
      if ((i < 0L) || (paramLong < i)) {
        return a.a((float)(paramLong - e) / a, 0.0F, 1.0F) * 0.5F;
      }
      long l = i;
      float f1 = j;
      float f2 = j;
      return a.a((float)(paramLong - l) / k, 0.0F, 1.0F) * f2 + (1.0F - f1);
    }
    
    public void a()
    {
      e = AnimationUtils.currentAnimationTimeMillis();
      i = -1L;
      f = e;
      j = 0.5F;
      g = 0;
      h = 0;
    }
    
    public void a(float paramFloat1, float paramFloat2)
    {
      c = paramFloat1;
      d = paramFloat2;
    }
    
    public void a(int paramInt)
    {
      a = paramInt;
    }
    
    public void b()
    {
      long l = AnimationUtils.currentAnimationTimeMillis();
      k = a.a((int)(l - e), 0, b);
      j = a(l);
      i = l;
    }
    
    public void b(int paramInt)
    {
      b = paramInt;
    }
    
    public boolean c()
    {
      return (i > 0L) && (AnimationUtils.currentAnimationTimeMillis() > i + k);
    }
    
    public void d()
    {
      if (f == 0L) {
        throw new RuntimeException("Cannot compute scroll delta before calling start()");
      }
      long l1 = AnimationUtils.currentAnimationTimeMillis();
      float f1 = a(a(l1));
      long l2 = l1 - f;
      f = l1;
      g = ((int)((float)l2 * f1 * c));
      h = ((int)((float)l2 * f1 * d));
    }
    
    public int e()
    {
      return (int)(c / Math.abs(c));
    }
    
    public int f()
    {
      return (int)(d / Math.abs(d));
    }
    
    public int g()
    {
      return g;
    }
    
    public int h()
    {
      return h;
    }
  }
  
  private class b
    implements Runnable
  {
    private b() {}
    
    public void run()
    {
      if (!a.a(a.this)) {
        return;
      }
      if (a.b(a.this))
      {
        a.a(a.this, false);
        a.c(a.this).a();
      }
      a.a locala = a.c(a.this);
      if ((locala.c()) || (!a.d(a.this)))
      {
        a.b(a.this, false);
        return;
      }
      if (a.e(a.this))
      {
        a.c(a.this, false);
        a.f(a.this);
      }
      locala.d();
      int i = locala.g();
      int j = locala.h();
      a(i, j);
      ai.a(a.g(a.this), this);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */