package android.support.v4.view;

import android.view.View;
import android.view.View.OnApplyWindowInsetsListener;
import android.view.WindowInsets;

final class cw
  implements View.OnApplyWindowInsetsListener
{
  cw(bn parambn) {}
  
  public WindowInsets onApplyWindowInsets(View paramView, WindowInsets paramWindowInsets)
  {
    paramWindowInsets = new fb(paramWindowInsets);
    return ((fb)a.a(paramView, paramWindowInsets)).e();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.cw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */