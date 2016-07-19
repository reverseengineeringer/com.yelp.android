package android.support.v7.widget;

import android.support.v7.internal.view.menu.f;
import android.support.v7.internal.view.menu.f.a;
import android.view.MenuItem;

class ActionMenuView$c
  implements f.a
{
  private ActionMenuView$c(ActionMenuView paramActionMenuView) {}
  
  public void a(f paramf)
  {
    if (ActionMenuView.b(a) != null) {
      ActionMenuView.b(a).a(paramf);
    }
  }
  
  public boolean a(f paramf, MenuItem paramMenuItem)
  {
    return (ActionMenuView.a(a) != null) && (ActionMenuView.a(a).a(paramMenuItem));
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.ActionMenuView.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */