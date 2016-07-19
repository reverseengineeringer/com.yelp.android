package android.support.v7.internal.view.menu;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;

class i$d
  extends d<MenuItem.OnMenuItemClickListener>
  implements MenuItem.OnMenuItemClickListener
{
  i$d(i parami, MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    super(paramOnMenuItemClickListener);
  }
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    return ((MenuItem.OnMenuItemClickListener)b).onMenuItemClick(a.a(paramMenuItem));
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.i.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */