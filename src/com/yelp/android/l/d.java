package com.yelp.android.l;

import android.content.Context;
import android.support.v7.internal.view.menu.ab;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.Menu;
import android.view.MenuItem;
import com.yelp.android.e.q;

public class d
  implements com.yelp.android.m.b
{
  final ActionMode.Callback a;
  final Context b;
  final q<com.yelp.android.m.a, c> c;
  final q<Menu, Menu> d;
  
  public d(Context paramContext, ActionMode.Callback paramCallback)
  {
    b = paramContext;
    a = paramCallback;
    c = new q();
    d = new q();
  }
  
  private Menu a(Menu paramMenu)
  {
    Menu localMenu2 = (Menu)d.get(paramMenu);
    Menu localMenu1 = localMenu2;
    if (localMenu2 == null)
    {
      localMenu1 = ab.a(b, (com.yelp.android.b.a)paramMenu);
      d.put(paramMenu, localMenu1);
    }
    return localMenu1;
  }
  
  private ActionMode b(com.yelp.android.m.a parama)
  {
    c localc = (c)c.get(parama);
    if (localc != null) {
      return localc;
    }
    localc = new c(b, parama);
    c.put(parama, localc);
    return localc;
  }
  
  public void a(com.yelp.android.m.a parama)
  {
    a.onDestroyActionMode(b(parama));
  }
  
  public boolean a(com.yelp.android.m.a parama, Menu paramMenu)
  {
    return a.onCreateActionMode(b(parama), a(paramMenu));
  }
  
  public boolean a(com.yelp.android.m.a parama, MenuItem paramMenuItem)
  {
    return a.onActionItemClicked(b(parama), ab.a(b, (com.yelp.android.b.b)paramMenuItem));
  }
  
  public boolean b(com.yelp.android.m.a parama, Menu paramMenu)
  {
    return a.onPrepareActionMode(b(parama), a(paramMenu));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.l.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */