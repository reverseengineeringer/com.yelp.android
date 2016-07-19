package android.support.v7.widget;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.PopupWindow.OnDismissListener;

class AppCompatSpinner$b$3
  implements PopupWindow.OnDismissListener
{
  AppCompatSpinner$b$3(AppCompatSpinner.b paramb, ViewTreeObserver.OnGlobalLayoutListener paramOnGlobalLayoutListener) {}
  
  public void onDismiss()
  {
    ViewTreeObserver localViewTreeObserver = b.a.getViewTreeObserver();
    if (localViewTreeObserver != null) {
      localViewTreeObserver.removeGlobalOnLayoutListener(a);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.AppCompatSpinner.b.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */