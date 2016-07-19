package android.support.v7.widget;

import android.support.v7.internal.view.menu.f;
import android.view.View;

class ActionMenuPresenter$c
  implements Runnable
{
  private ActionMenuPresenter.e b;
  
  public ActionMenuPresenter$c(ActionMenuPresenter paramActionMenuPresenter, ActionMenuPresenter.e parame)
  {
    b = parame;
  }
  
  public void run()
  {
    ActionMenuPresenter.f(a).f();
    View localView = (View)ActionMenuPresenter.g(a);
    if ((localView != null) && (localView.getWindowToken() != null) && (b.f())) {
      ActionMenuPresenter.a(a, b);
    }
    ActionMenuPresenter.a(a, null);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ActionMenuPresenter.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */