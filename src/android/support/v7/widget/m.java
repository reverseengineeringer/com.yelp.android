package android.support.v7.widget;

import android.support.v7.internal.view.menu.i;
import android.support.v7.internal.view.menu.j;
import android.view.MenuItem;

class m
  implements j
{
  private m(ActionMenuView paramActionMenuView) {}
  
  public void a(i parami)
  {
    if (ActionMenuView.b(a) != null) {
      ActionMenuView.b(a).a(parami);
    }
  }
  
  public boolean a(i parami, MenuItem paramMenuItem)
  {
    return (ActionMenuView.a(a) != null) && (ActionMenuView.a(a).a(paramMenuItem));
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */