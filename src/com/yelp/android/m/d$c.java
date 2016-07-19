package com.yelp.android.m;

import android.support.v7.internal.view.menu.f;
import android.support.v7.internal.view.menu.l.a;
import android.view.Window.Callback;

final class d$c
  implements l.a
{
  private d$c(d paramd) {}
  
  public void a(f paramf, boolean paramBoolean)
  {
    if (d.a(a) != null) {
      d.a(a).onPanelClosed(0, paramf);
    }
  }
  
  public boolean a(f paramf)
  {
    if ((paramf == null) && (d.a(a) != null)) {
      d.a(a).onMenuOpened(0, paramf);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.m.d.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */