package android.support.v7.internal.view.menu;

import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import com.yelp.android.e.b;
import com.yelp.android.g.a;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

abstract class c<T>
  extends d<T>
{
  final Context a;
  private Map<b, MenuItem> c;
  private Map<com.yelp.android.e.c, SubMenu> d;
  
  c(Context paramContext, T paramT)
  {
    super(paramT);
    a = paramContext;
  }
  
  final MenuItem a(MenuItem paramMenuItem)
  {
    if ((paramMenuItem instanceof b))
    {
      b localb = (b)paramMenuItem;
      if (c == null) {
        c = new a();
      }
      MenuItem localMenuItem = (MenuItem)c.get(paramMenuItem);
      paramMenuItem = localMenuItem;
      if (localMenuItem == null)
      {
        paramMenuItem = n.a(a, localb);
        c.put(localb, paramMenuItem);
      }
      return paramMenuItem;
    }
    return paramMenuItem;
  }
  
  final SubMenu a(SubMenu paramSubMenu)
  {
    if ((paramSubMenu instanceof com.yelp.android.e.c))
    {
      com.yelp.android.e.c localc = (com.yelp.android.e.c)paramSubMenu;
      if (d == null) {
        d = new a();
      }
      SubMenu localSubMenu = (SubMenu)d.get(localc);
      paramSubMenu = localSubMenu;
      if (localSubMenu == null)
      {
        paramSubMenu = n.a(a, localc);
        d.put(localc, paramSubMenu);
      }
      return paramSubMenu;
    }
    return paramSubMenu;
  }
  
  final void a()
  {
    if (c != null) {
      c.clear();
    }
    if (d != null) {
      d.clear();
    }
  }
  
  final void a(int paramInt)
  {
    if (c == null) {}
    for (;;)
    {
      return;
      Iterator localIterator = c.keySet().iterator();
      while (localIterator.hasNext()) {
        if (paramInt == ((MenuItem)localIterator.next()).getGroupId()) {
          localIterator.remove();
        }
      }
    }
  }
  
  final void b(int paramInt)
  {
    if (c == null) {}
    Iterator localIterator;
    do
    {
      return;
      while (!localIterator.hasNext()) {
        localIterator = c.keySet().iterator();
      }
    } while (paramInt != ((MenuItem)localIterator.next()).getItemId());
    localIterator.remove();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */