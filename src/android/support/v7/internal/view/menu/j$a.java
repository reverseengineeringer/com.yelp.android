package android.support.v7.internal.view.menu;

import android.content.Context;
import android.support.v4.view.d.b;
import android.view.ActionProvider;
import android.view.ActionProvider.VisibilityListener;
import android.view.MenuItem;
import android.view.View;

class j$a
  extends i.a
  implements ActionProvider.VisibilityListener
{
  d.b c;
  
  public j$a(j paramj, Context paramContext, ActionProvider paramActionProvider)
  {
    super(paramj, paramContext, paramActionProvider);
  }
  
  public View a(MenuItem paramMenuItem)
  {
    return a.onCreateActionView(paramMenuItem);
  }
  
  public void a(d.b paramb)
  {
    c = paramb;
    ActionProvider localActionProvider = a;
    if (paramb != null) {}
    for (paramb = this;; paramb = null)
    {
      localActionProvider.setVisibilityListener(paramb);
      return;
    }
  }
  
  public boolean b()
  {
    return a.overridesItemVisibility();
  }
  
  public boolean c()
  {
    return a.isVisible();
  }
  
  public void onActionProviderVisibilityChanged(boolean paramBoolean)
  {
    if (c != null) {
      c.a(paramBoolean);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.menu.j.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */