package android.support.v7.widget;

import android.support.v7.internal.view.menu.i;
import android.view.View;

class d
  implements Runnable
{
  private g b;
  
  public d(ActionMenuPresenter paramActionMenuPresenter, g paramg)
  {
    b = paramg;
  }
  
  public void run()
  {
    ActionMenuPresenter.f(a).f();
    View localView = (View)ActionMenuPresenter.g(a);
    if ((localView != null) && (localView.getWindowToken() != null) && (b.d())) {
      ActionMenuPresenter.a(a, b);
    }
    ActionMenuPresenter.a(a, null);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */