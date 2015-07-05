package android.support.v7.app;

import android.support.v7.internal.view.menu.i;
import android.support.v7.internal.view.menu.y;
import com.yelp.android.i.h;

final class n
  implements y
{
  private n(ActionBarActivityDelegateBase paramActionBarActivityDelegateBase) {}
  
  public void a(i parami, boolean paramBoolean)
  {
    i locali = parami.p();
    if (locali != parami) {}
    for (int i = 1;; i = 0)
    {
      ActionBarActivityDelegateBase localActionBarActivityDelegateBase = a;
      if (i != 0) {
        parami = locali;
      }
      parami = ActionBarActivityDelegateBase.a(localActionBarActivityDelegateBase, parami);
      if (parami != null)
      {
        if (i == 0) {
          break;
        }
        ActionBarActivityDelegateBase.a(a, a, parami, locali);
        ActionBarActivityDelegateBase.a(a, parami, true);
      }
      return;
    }
    a.a.closeOptionsMenu();
    ActionBarActivityDelegateBase.a(a, parami, paramBoolean);
  }
  
  public boolean a(i parami)
  {
    if ((parami == null) && (a.b))
    {
      h localh = a.n();
      if ((localh != null) && (!a.p())) {
        localh.c(8, parami);
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */