package android.support.v4.view;

import android.view.View;
import android.view.animation.Interpolator;
import java.util.WeakHashMap;

class az$b
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

/* Location:
 * Qualified Name:     android.support.v4.view.az.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */