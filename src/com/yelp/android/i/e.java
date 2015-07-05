package com.yelp.android.i;

import android.support.v7.internal.view.menu.i;
import android.support.v7.internal.view.menu.j;
import android.support.v7.internal.widget.ah;
import android.view.MenuItem;

final class e
  implements j
{
  private e(a parama) {}
  
  public void a(i parami)
  {
    if (a.a(a) != null)
    {
      if (!a.c(a).j()) {
        break label41;
      }
      a.a(a).b(8, parami);
    }
    label41:
    while (!a.a(a).a(0, null, parami)) {
      return;
    }
    a.a(a).c(8, parami);
  }
  
  public boolean a(i parami, MenuItem paramMenuItem)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.i.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */