package android.support.v7.internal.view.menu;

import android.content.Context;
import android.support.v4.view.n;
import android.view.ActionProvider;
import android.view.SubMenu;
import android.view.View;

class p
  extends n
{
  final ActionProvider a;
  
  public p(o paramo, Context paramContext, ActionProvider paramActionProvider)
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
 * Qualified Name:     android.support.v7.internal.view.menu.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */