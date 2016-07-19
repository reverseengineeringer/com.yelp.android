package android.support.v4.view;

import android.content.Context;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

public abstract class d
{
  private final Context a;
  private a b;
  private b c;
  
  public d(Context paramContext)
  {
    a = paramContext;
  }
  
  public abstract View a();
  
  public View a(MenuItem paramMenuItem)
  {
    return a();
  }
  
  public void a(a parama)
  {
    b = parama;
  }
  
  public void a(b paramb)
  {
    if ((c != null) && (paramb != null)) {
      Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
    }
    c = paramb;
  }
  
  public void a(SubMenu paramSubMenu) {}
  
  public void a(boolean paramBoolean)
  {
    if (b != null) {
      b.b(paramBoolean);
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
  
  public void f()
  {
    c = null;
    b = null;
  }
  
  public static abstract interface a
  {
    public abstract void b(boolean paramBoolean);
  }
  
  public static abstract interface b
  {
    public abstract void a(boolean paramBoolean);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */