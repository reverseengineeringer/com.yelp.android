package android.support.v4.view;

import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

class az$a
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

/* Location:
 * Qualified Name:     android.support.v4.view.az.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */