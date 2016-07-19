package android.support.v7.app;

import android.support.v7.internal.view.menu.f;
import android.support.v7.internal.view.menu.l.a;
import android.view.Window.Callback;

final class k$a
  implements l.a
{
  private k$a(k paramk) {}
  
  public void a(f paramf, boolean paramBoolean)
  {
    k.a(a, paramf);
  }
  
  public boolean a(f paramf)
  {
    Window.Callback localCallback = a.n();
    if (localCallback != null) {
      localCallback.onMenuOpened(108, paramf);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.k.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */