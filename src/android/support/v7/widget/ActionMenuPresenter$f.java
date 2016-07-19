package android.support.v7.widget;

import android.support.v7.internal.view.menu.f;
import android.support.v7.internal.view.menu.l.a;
import android.support.v7.internal.view.menu.p;
import android.view.MenuItem;

class ActionMenuPresenter$f
  implements l.a
{
  private ActionMenuPresenter$f(ActionMenuPresenter paramActionMenuPresenter) {}
  
  public void a(f paramf, boolean paramBoolean)
  {
    if ((paramf instanceof p)) {
      ((p)paramf).p().a(false);
    }
    l.a locala = a.d();
    if (locala != null) {
      locala.a(paramf, paramBoolean);
    }
  }
  
  public boolean a(f paramf)
  {
    if (paramf == null) {
      return false;
    }
    a.h = ((p)paramf).getItem().getItemId();
    l.a locala = a.d();
    if (locala != null) {}
    for (boolean bool = locala.a(paramf);; bool = false) {
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ActionMenuPresenter.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */