package android.support.v7.widget;

import android.view.View;

class f
  extends aq
{
  f(e parame, View paramView, ActionMenuPresenter paramActionMenuPresenter)
  {
    super(paramView);
  }
  
  public ListPopupWindow a()
  {
    if (ActionMenuPresenter.a(b.a) == null) {
      return null;
    }
    return ActionMenuPresenter.a(b.a).c();
  }
  
  public boolean b()
  {
    b.a.c();
    return true;
  }
  
  public boolean c()
  {
    if (ActionMenuPresenter.b(b.a) != null) {
      return false;
    }
    b.a.d();
    return true;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */