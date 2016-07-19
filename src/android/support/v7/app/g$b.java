package android.support.v7.app;

import android.support.v7.internal.view.menu.f;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.Window.Callback;

class g$b
  extends com.yelp.android.p.g
{
  g$b(g paramg, Window.Callback paramCallback)
  {
    super(paramCallback);
  }
  
  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    return (a.a(paramKeyEvent)) || (super.dispatchKeyEvent(paramKeyEvent));
  }
  
  public boolean dispatchKeyShortcutEvent(KeyEvent paramKeyEvent)
  {
    return (super.dispatchKeyShortcutEvent(paramKeyEvent)) || (a.a(paramKeyEvent.getKeyCode(), paramKeyEvent));
  }
  
  public void onContentChanged() {}
  
  public boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
  {
    if ((paramInt == 0) && (!(paramMenu instanceof f))) {
      return false;
    }
    return super.onCreatePanelMenu(paramInt, paramMenu);
  }
  
  public boolean onMenuOpened(int paramInt, Menu paramMenu)
  {
    return (super.onMenuOpened(paramInt, paramMenu)) || (a.b(paramInt, paramMenu));
  }
  
  public void onPanelClosed(int paramInt, Menu paramMenu)
  {
    super.onPanelClosed(paramInt, paramMenu);
    a.a(paramInt, paramMenu);
  }
  
  public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    f localf;
    boolean bool1;
    if ((paramMenu instanceof f))
    {
      localf = (f)paramMenu;
      if ((paramInt != 0) || (localf != null)) {
        break label34;
      }
      bool1 = false;
    }
    label34:
    boolean bool2;
    do
    {
      return bool1;
      localf = null;
      break;
      if (localf != null) {
        localf.c(true);
      }
      bool2 = super.onPreparePanel(paramInt, paramView, paramMenu);
      bool1 = bool2;
    } while (localf == null);
    localf.c(false);
    return bool2;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.g.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */