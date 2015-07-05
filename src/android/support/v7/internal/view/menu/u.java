package android.support.v7.internal.view.menu;

import android.content.Context;
import android.view.ActionProvider;
import android.view.ActionProvider.VisibilityListener;
import android.view.MenuItem;
import android.view.View;

class u
  extends p
  implements ActionProvider.VisibilityListener
{
  android.support.v4.view.p c;
  
  public u(t paramt, Context paramContext, ActionProvider paramActionProvider)
  {
    super(paramt, paramContext, paramActionProvider);
  }
  
  public View a(MenuItem paramMenuItem)
  {
    return a.onCreateActionView(paramMenuItem);
  }
  
  public void a(android.support.v4.view.p paramp)
  {
    c = paramp;
    ActionProvider localActionProvider = a;
    if (paramp != null) {}
    for (paramp = this;; paramp = null)
    {
      localActionProvider.setVisibilityListener(paramp);
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
 * Qualified Name:     android.support.v7.internal.view.menu.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */