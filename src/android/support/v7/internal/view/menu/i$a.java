package android.support.v7.internal.view.menu;

import android.content.Context;
import android.support.v4.view.d;
import android.view.ActionProvider;
import android.view.SubMenu;
import android.view.View;

class i$a
  extends d
{
  final ActionProvider a;
  
  public i$a(i parami, Context paramContext, ActionProvider paramActionProvider)
  {
    super(paramContext);
    a = paramActionProvider;
  }
  
  public View a()
  {
    return a.onCreateActionView();
  }
  
  public void a(SubMenu paramSubMenu)
  {
    a.onPrepareSubMenu(b.a(paramSubMenu));
  }
  
  public boolean d()
  {
    return a.onPerformDefaultAction();
  }
  
  public boolean e()
  {
    return a.hasSubMenu();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.i.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */