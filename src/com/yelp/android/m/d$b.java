package com.yelp.android.m;

import android.support.v7.internal.view.menu.f.a;
import android.view.MenuItem;
import android.view.Window.Callback;

final class d$b
  implements f.a
{
  private d$b(d paramd) {}
  
  public void a(android.support.v7.internal.view.menu.f paramf)
  {
    if (d.a(a) != null)
    {
      if (!d.c(a).i()) {
        break label41;
      }
      d.a(a).onPanelClosed(108, paramf);
    }
    label41:
    while (!d.a(a).onPreparePanel(0, null, paramf)) {
      return;
    }
    d.a(a).onMenuOpened(108, paramf);
  }
  
  public boolean a(android.support.v7.internal.view.menu.f paramf, MenuItem paramMenuItem)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.m.d.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */