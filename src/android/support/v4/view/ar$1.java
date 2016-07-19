package android.support.v4.view;

import android.view.View;
import android.view.View.OnApplyWindowInsetsListener;
import android.view.WindowInsets;

final class ar$1
  implements View.OnApplyWindowInsetsListener
{
  ar$1(ab paramab) {}
  
  public WindowInsets onApplyWindowInsets(View paramView, WindowInsets paramWindowInsets)
  {
    paramWindowInsets = new bh(paramWindowInsets);
    return ((bh)a.a(paramView, paramWindowInsets)).g();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ar.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */