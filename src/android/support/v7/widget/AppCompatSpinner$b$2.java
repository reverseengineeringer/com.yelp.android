package android.support.v7.widget;

import android.view.ViewTreeObserver.OnGlobalLayoutListener;

class AppCompatSpinner$b$2
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  AppCompatSpinner$b$2(AppCompatSpinner.b paramb) {}
  
  public void onGlobalLayout()
  {
    if (!AppCompatSpinner.b.a(a, a.a))
    {
      a.i();
      return;
    }
    a.b();
    AppCompatSpinner.b.b(a);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.AppCompatSpinner.b.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */