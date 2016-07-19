package com.yelp.android.m;

import android.support.v7.internal.view.menu.l.a;
import android.view.Window.Callback;

final class d$a
  implements l.a
{
  private boolean b;
  
  private d$a(d paramd) {}
  
  public void a(android.support.v7.internal.view.menu.f paramf, boolean paramBoolean)
  {
    if (b) {
      return;
    }
    b = true;
    d.c(a).n();
    if (d.a(a) != null) {
      d.a(a).onPanelClosed(108, paramf);
    }
    b = false;
  }
  
  public boolean a(android.support.v7.internal.view.menu.f paramf)
  {
    if (d.a(a) != null)
    {
      d.a(a).onMenuOpened(108, paramf);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.m.d.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */