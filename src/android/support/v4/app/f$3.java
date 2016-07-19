package android.support.v4.app;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

class f$3
  implements ViewTreeObserver.OnPreDrawListener
{
  f$3(f paramf, View paramView, f.b paramb, int paramInt, Object paramObject) {}
  
  public boolean onPreDraw()
  {
    a.getViewTreeObserver().removeOnPreDrawListener(this);
    f.a(e, b, c, d);
    return true;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.f.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */