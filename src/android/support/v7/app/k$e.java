package android.support.v7.app;

import android.support.v7.internal.view.menu.f;
import android.support.v7.internal.view.menu.l.a;
import android.view.Window.Callback;

final class k$e
  implements l.a
{
  private k$e(k paramk) {}
  
  public void a(f paramf, boolean paramBoolean)
  {
    f localf = paramf.p();
    if (localf != paramf) {}
    for (int i = 1;; i = 0)
    {
      k localk = a;
      if (i != 0) {
        paramf = localf;
      }
      paramf = k.a(localk, paramf);
      if (paramf != null)
      {
        if (i == 0) {
          break;
        }
        k.a(a, a, paramf, localf);
        k.a(a, paramf, true);
      }
      return;
    }
    k.a(a, paramf, paramBoolean);
  }
  
  public boolean a(f paramf)
  {
    if ((paramf == null) && (a.h))
    {
      Window.Callback localCallback = a.n();
      if ((localCallback != null) && (!a.m())) {
        localCallback.onMenuOpened(108, paramf);
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.k.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */