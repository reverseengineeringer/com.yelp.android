package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;

public class eh
{
  static final eq a = new ej();
  private WeakReference<View> b;
  private Runnable c = null;
  private Runnable d = null;
  private int e = -1;
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 19)
    {
      a = new ep();
      return;
    }
    if (i >= 18)
    {
      a = new en();
      return;
    }
    if (i >= 16)
    {
      a = new eo();
      return;
    }
    if (i >= 14)
    {
      a = new el();
      return;
    }
  }
  
  eh(View paramView)
  {
    b = new WeakReference(paramView);
  }
  
  public eh a(float paramFloat)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.a(this, localView, paramFloat);
    }
    return this;
  }
  
  public eh a(long paramLong)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.a(this, localView, paramLong);
    }
    return this;
  }
  
  public eh a(ex paramex)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.a(this, localView, paramex);
    }
    return this;
  }
  
  public eh a(ez paramez)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.a(this, localView, paramez);
    }
    return this;
  }
  
  public eh a(Interpolator paramInterpolator)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.a(this, localView, paramInterpolator);
    }
    return this;
  }
  
  public void a()
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.a(this, localView);
    }
  }
  
  public eh b(float paramFloat)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.b(this, localView, paramFloat);
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
  
  public eh c(float paramFloat)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.c(this, localView, paramFloat);
    }
    return this;
  }
  
  public eh d(float paramFloat)
  {
    View localView = (View)b.get();
    if (localView != null) {
      a.d(this, localView, paramFloat);
    }
    return this;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.eh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */