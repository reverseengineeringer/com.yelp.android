package android.support.v4.view;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

public abstract class n
{
  private final Context a;
  private o b;
  private p c;
  
  public n(Context paramContext)
  {
    a = paramContext;
  }
  
  public abstract View a();
  
  public View a(MenuItem paramMenuItem)
  {
    return a();
  }
  
  public void a(o paramo)
  {
    b = paramo;
  }
  
  public void a(p paramp)
  {
    if ((c != null) && (paramp != null)) {
      Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
    }
    c = paramp;
  }
  
  public void a(SubMenu paramSubMenu) {}
  
  public void a(boolean paramBoolean)
  {
    if (b != null) {
      b.a(paramBoolean);
    }
  }
  
  public boolean b()
  {
    return false;
  }
  
  public boolean c()
  {
    return true;
  }
  
  public boolean d()
  {
    return false;
  }
  
  public boolean e()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */