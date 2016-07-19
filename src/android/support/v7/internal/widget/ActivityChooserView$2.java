package android.support.v7.internal.widget;

import android.support.v4.view.d;
import android.support.v7.widget.ListPopupWindow;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;

class ActivityChooserView$2
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  ActivityChooserView$2(ActivityChooserView paramActivityChooserView) {}
  
  public void onGlobalLayout()
  {
    if (a.c())
    {
      if (a.isShown()) {
        break label31;
      }
      ActivityChooserView.b(a).i();
    }
    label31:
    do
    {
      return;
      ActivityChooserView.b(a).c();
    } while (a.a == null);
    a.a.a(true);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.ActivityChooserView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */