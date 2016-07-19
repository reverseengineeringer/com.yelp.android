package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

public class az
{
  static final g a = new a();
  private WeakReference<View> b;
  private Runnable c = null;
  private Runnable d = null;
  private int e = -1;
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
    {
      a = new f();
      return;
    }
    if (i >= 19)
    {
      a = new e();
      return;
    }
    if (i >= 18)
    {
      a = new c();
      return;
    }
    if (i >= 16)
    {
      a = new d();
      return;
    }
    if (i >= 14)
    {
      a = new b();
      return;
    }
  }
  
  az(View paramView)
  {
    b = new WeakReference(paramView);
  }
  
  public long a()
  {
    View localView = (View)b.get();
    if (localView != null) {
      return a.a(this, localView);
    }
    return 0L;
  }
  
  public az a(float paramFloat)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.a(this, localView, paramFloat);
    }
    return this;
  }
  
  public az a(long paramLong)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.a(this, localView, paramLong);
    }
    return this;
  }
  
  public az a(bd parambd)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.a(this, localView, parambd);
    }
    return this;
  }
  
  public az a(bf parambf)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.a(this, localView, parambf);
    }
    return this;
  }
  
  public az a(Interpolator paramInterpolator)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.a(this, localView, paramInterpolator);
    }
    return this;
  }
  
  public az b(float paramFloat)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.b(this, localView, paramFloat);
    }
    return this;
  }
  
  public az b(long paramLong)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.b(this, localView, paramLong);
    }
    return this;
  }
  
  public void b()
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.b(this, localView);
    }
  }
  
  public az c(float paramFloat)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.c(this, localView, paramFloat);
    }
    return this;
  }
  
  public void c()
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.c(this, localView);
    }
  }
  
  public az d(float paramFloat)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.d(this, localView, paramFloat);
    }
    return this;
  }
  
  public az e(float paramFloat)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.e(this, localView, paramFloat);
    }
    return this;
  }
  
  static class a
    implements az.g
  {
    WeakHashMap<View, Runnable> a = null;
    
    private void a(View paramView)
    {
      if (a != null)
      {
        Runnable localRunnable = (Runnable)a.get(paramView);
        if (localRunnable != null) {
          paramView.removeCallbacks(localRunnable);
        }
      }
    }
    
    private void d(az paramaz, View paramView)
    {
      Object localObject = paramView.getTag(2113929216);
      if ((localObject instanceof bd)) {}
      for (localObject = (bd)localObject;; localObject = null)
      {
        Runnable localRunnable = az.a(paramaz);
        paramaz = az.b(paramaz);
        if (localRunnable != null) {
          localRunnable.run();
        }
        if (localObject != null)
        {
          ((bd)localObject).a(paramView);
          ((bd)localObject).b(paramView);
        }
        if (paramaz != null) {
          paramaz.run();
        }
        if (a != null) {
          a.remove(paramView);
        }
        return;
      }
    }
    
    private void e(az paramaz, View paramView)
    {
      if (a != null) {}
      for (Runnable localRunnable = (Runnable)a.get(paramView);; localRunnable = null)
      {
        Object localObject = localRunnable;
        if (localRunnable == null)
        {
          localObject = new a(paramaz, paramView, null);
          if (a == null) {
            a = new WeakHashMap();
          }
          a.put(paramView, localObject);
        }
        paramView.removeCallbacks((Runnable)localObject);
        paramView.post((Runnable)localObject);
        return;
      }
    }
    
    public long a(az paramaz, View paramView)
    {
      return 0L;
    }
    
    public void a(az paramaz, View paramView, float paramFloat)
    {
      e(paramaz, paramView);
    }
    
    public void a(az paramaz, View paramView, long paramLong) {}
    
    public void a(az paramaz, View paramView, bd parambd)
    {
      paramView.setTag(2113929216, parambd);
    }
    
    public void a(az paramaz, View paramView, bf parambf) {}
    
    public void a(az paramaz, View paramView, Interpolator paramInterpolator) {}
    
    public void b(az paramaz, View paramView)
    {
      e(paramaz, paramView);
    }
    
    public void b(az paramaz, View paramView, float paramFloat)
    {
      e(paramaz, paramView);
    }
    
    public void b(az paramaz, View paramView, long paramLong) {}
    
    public void c(az paramaz, View paramView)
    {
      a(paramView);
      d(paramaz, paramView);
    }
    
    public void c(az paramaz, View paramView, float paramFloat)
    {
      e(paramaz, paramView);
    }
    
    public void d(az paramaz, View paramView, float paramFloat)
    {
      e(paramaz, paramView);
    }
    
    public void e(az paramaz, View paramView, float paramFloat)
    {
      e(paramaz, paramView);
    }
    
    class a
      implements Runnable
    {
      WeakReference<View> a;
      az b;
      
      private a(az paramaz, View paramView)
      {
        a = new WeakReference(paramView);
        b = paramaz;
      }
      
      public void run()
      {
        View localView = (View)a.get();
        if (localView != null) {
          az.a.a(az.a.this, b, localView);
        }
      }
    }
  }
  
  static class b
    extends az.a
  {
    WeakHashMap<View, Integer> b = null;
    
    public long a(az paramaz, View paramView)
    {
      return ba.a(paramView);
    }
    
    public void a(az paramaz, View paramView, float paramFloat)
    {
      ba.a(paramView, paramFloat);
    }
    
    public void a(az paramaz, View paramView, long paramLong)
    {
      ba.a(paramView, paramLong);
    }
    
    public void a(az paramaz, View paramView, bd parambd)
    {
      paramView.setTag(2113929216, parambd);
      ba.a(paramView, new a(paramaz));
    }
    
    public void a(az paramaz, View paramView, Interpolator paramInterpolator)
    {
      ba.a(paramView, paramInterpolator);
    }
    
    public void b(az paramaz, View paramView)
    {
      ba.b(paramView);
    }
    
    public void b(az paramaz, View paramView, float paramFloat)
    {
      ba.b(paramView, paramFloat);
    }
    
    public void b(az paramaz, View paramView, long paramLong)
    {
      ba.b(paramView, paramLong);
    }
    
    public void c(az paramaz, View paramView)
    {
      ba.c(paramView);
    }
    
    public void c(az paramaz, View paramView, float paramFloat)
    {
      ba.c(paramView, paramFloat);
    }
    
    public void d(az paramaz, View paramView, float paramFloat)
    {
      ba.d(paramView, paramFloat);
    }
    
    public void e(az paramaz, View paramView, float paramFloat)
    {
      ba.e(paramView, paramFloat);
    }
    
    static class a
      implements bd
    {
      az a;
      
      a(az paramaz)
      {
        a = paramaz;
      }
      
      public void a(View paramView)
      {
        if (az.c(a) >= 0) {
          ai.a(paramView, 2, null);
        }
        if (az.a(a) != null) {
          az.a(a).run();
        }
        Object localObject = paramView.getTag(2113929216);
        if ((localObject instanceof bd)) {}
        for (localObject = (bd)localObject;; localObject = null)
        {
          if (localObject != null) {
            ((bd)localObject).a(paramView);
          }
          return;
        }
      }
      
      public void b(View paramView)
      {
        if (az.c(a) >= 0)
        {
          ai.a(paramView, az.c(a), null);
          az.a(a, -1);
        }
        if (az.b(a) != null) {
          az.b(a).run();
        }
        Object localObject = paramView.getTag(2113929216);
        if ((localObject instanceof bd)) {}
        for (localObject = (bd)localObject;; localObject = null)
        {
          if (localObject != null) {
            ((bd)localObject).b(paramView);
          }
          return;
        }
      }
      
      public void c(View paramView)
      {
        Object localObject = paramView.getTag(2113929216);
        if ((localObject instanceof bd)) {}
        for (localObject = (bd)localObject;; localObject = null)
        {
          if (localObject != null) {
            ((bd)localObject).c(paramView);
          }
          return;
        }
      }
    }
  }
  
  static class c
    extends az.d
  {}
  
  static class d
    extends az.b
  {
    public void a(az paramaz, View paramView, bd parambd)
    {
      bb.a(paramView, parambd);
    }
  }
  
  static class e
    extends az.c
  {
    public void a(az paramaz, View paramView, bf parambf)
    {
      bc.a(paramView, parambf);
    }
  }
  
  static class f
    extends az.e
  {}
  
  static abstract interface g
  {
    public abstract long a(az paramaz, View paramView);
    
    public abstract void a(az paramaz, View paramView, float paramFloat);
    
    public abstract void a(az paramaz, View paramView, long paramLong);
    
    public abstract void a(az paramaz, View paramView, bd parambd);
    
    public abstract void a(az paramaz, View paramView, bf parambf);
    
    public abstract void a(az paramaz, View paramView, Interpolator paramInterpolator);
    
    public abstract void b(az paramaz, View paramView);
    
    public abstract void b(az paramaz, View paramView, float paramFloat);
    
    public abstract void b(az paramaz, View paramView, long paramLong);
    
    public abstract void c(az paramaz, View paramView);
    
    public abstract void c(az paramaz, View paramView, float paramFloat);
    
    public abstract void d(az paramaz, View paramView, float paramFloat);
    
    public abstract void e(az paramaz, View paramView, float paramFloat);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.az
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */