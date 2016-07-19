package com.yelp.android.p;

import android.content.Context;
import android.support.v7.internal.view.menu.n;
import android.view.ActionMode;
import android.view.ActionMode.Callback;
import android.view.Menu;
import android.view.MenuItem;
import com.yelp.android.e.b;
import com.yelp.android.g.i;
import com.yelp.android.r.a.a;
import java.util.ArrayList;

public class d$a
  implements a.a
{
  final ActionMode.Callback a;
  final Context b;
  final ArrayList<d> c;
  final i<Menu, Menu> d;
  
  public d$a(Context paramContext, ActionMode.Callback paramCallback)
  {
    b = paramContext;
    a = paramCallback;
    c = new ArrayList();
    d = new i();
  }
  
  private Menu a(Menu paramMenu)
  {
    Menu localMenu2 = (Menu)d.get(paramMenu);
    Menu localMenu1 = localMenu2;
    if (localMenu2 == null)
    {
      localMenu1 = n.a(b, (com.yelp.android.e.a)paramMenu);
      d.put(paramMenu, localMenu1);
    }
    return localMenu1;
  }
  
  public void a(com.yelp.android.r.a parama)
  {
    a.onDestroyActionMode(b(parama));
  }
  
  public boolean a(com.yelp.android.r.a parama, Menu paramMenu)
  {
    return a.onCreateActionMode(b(parama), a(paramMenu));
  }
  
  public boolean a(com.yelp.android.r.a parama, MenuItem paramMenuItem)
  {
    return a.onActionItemClicked(b(parama), n.a(b, (b)paramMenuItem));
  }
  
  public ActionMode b(com.yelp.android.r.a parama)
  {
    int j = c.size();
    int i = 0;
    while (i < j)
    {
      d locald = (d)c.get(i);
      if ((locald != null) && (b == parama)) {
        return locald;
      }
      i += 1;
    }
    parama = new d(b, parama);
    c.add(parama);
    return parama;
  }
  
  public boolean b(com.yelp.android.r.a parama, Menu paramMenu)
  {
    return a.onPrepareActionMode(b(parama), a(paramMenu));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.p.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */