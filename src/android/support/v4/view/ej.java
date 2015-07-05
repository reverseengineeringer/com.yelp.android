package android.support.v4.view;

import android.view.View;
import android.view.animation.Interpolator;
import java.util.WeakHashMap;

class ej
  implements eq
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
  
  private void c(eh parameh, View paramView)
  {
    Object localObject = paramView.getTag(2113929216);
    if ((localObject instanceof ex)) {}
    for (localObject = (ex)localObject;; localObject = null)
    {
      Runnable localRunnable = eh.a(parameh);
      parameh = eh.b(parameh);
      if (localRunnable != null) {
        localRunnable.run();
      }
      if (localObject != null)
      {
        ((ex)localObject).a(paramView);
        ((ex)localObject).b(paramView);
      }
      if (parameh != null) {
        parameh.run();
      }
      if (a != null) {
        a.remove(paramView);
      }
      return;
    }
  }
  
  private void d(eh parameh, View paramView)
  {
    if (a != null) {}
    for (Runnable localRunnable = (Runnable)a.get(paramView);; localRunnable = null)
    {
      Object localObject = localRunnable;
      if (localRunnable == null)
      {
        localObject = new ek(this, parameh, paramView, null);
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
  
  public void a(eh parameh, View paramView)
  {
    d(parameh, paramView);
  }
  
  public void a(eh parameh, View paramView, float paramFloat)
  {
    d(parameh, paramView);
  }
  
  public void a(eh parameh, View paramView, long paramLong) {}
  
  public void a(eh parameh, View paramView, ex paramex)
  {
    paramView.setTag(2113929216, paramex);
  }
  
  public void a(eh parameh, View paramView, ez paramez) {}
  
  public void a(eh parameh, View paramView, Interpolator paramInterpolator) {}
  
  public void b(eh parameh, View paramView)
  {
    a(paramView);
    c(parameh, paramView);
  }
  
  public void b(eh parameh, View paramView, float paramFloat)
  {
    d(parameh, paramView);
  }
  
  public void c(eh parameh, View paramView, float paramFloat)
  {
    d(parameh, paramView);
  }
  
  public void d(eh parameh, View paramView, float paramFloat)
  {
    d(parameh, paramView);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ej
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */