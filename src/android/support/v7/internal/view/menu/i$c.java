package android.support.v7.internal.view.menu;

import android.support.v4.view.q.e;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;

class i$c
  extends d<MenuItem.OnActionExpandListener>
  implements q.e
{
  i$c(i parami, MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    super(paramOnActionExpandListener);
  }
  
  public boolean a(MenuItem paramMenuItem)
  {
    return ((MenuItem.OnActionExpandListener)b).onMenuItemActionExpand(a.a(paramMenuItem));
  }
  
  public boolean b(MenuItem paramMenuItem)
  {
    return ((MenuItem.OnActionExpandListener)b).onMenuItemActionCollapse(a.a(paramMenuItem));
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.i.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */