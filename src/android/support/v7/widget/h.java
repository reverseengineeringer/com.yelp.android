package android.support.v7.widget;

import android.support.v7.internal.view.menu.ad;
import android.support.v7.internal.view.menu.i;
import android.support.v7.internal.view.menu.y;
import android.view.MenuItem;

class h
  implements y
{
  private h(ActionMenuPresenter paramActionMenuPresenter) {}
  
  public void a(i parami, boolean paramBoolean)
  {
    if ((parami instanceof ad)) {
      ((ad)parami).p().a(false);
    }
    y localy = a.a();
    if (localy != null) {
      localy.a(parami, paramBoolean);
    }
  }
  
  public boolean a(i parami)
  {
    if (parami == null) {
      return false;
    }
    a.h = ((ad)parami).getItem().getItemId();
    y localy = a.a();
    if (localy != null) {}
    for (boolean bool = localy.a(parami);; bool = false) {
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */