package android.support.v7.widget;

import android.view.View;

class ActionMenuPresenter$d$1
  extends ListPopupWindow.b
{
  ActionMenuPresenter$d$1(ActionMenuPresenter.d paramd, View paramView, ActionMenuPresenter paramActionMenuPresenter)
  {
    super(paramView);
  }
  
  public ListPopupWindow a()
  {
    if (ActionMenuPresenter.a(b.a) == null) {
      return null;
    }
    return ActionMenuPresenter.a(b.a).e();
  }
  
  public boolean b()
  {
    b.a.f();
    return true;
  }
  
  public boolean c()
  {
    if (ActionMenuPresenter.b(b.a) != null) {
      return false;
    }
    b.a.g();
    return true;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ActionMenuPresenter.d.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */