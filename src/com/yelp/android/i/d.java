package com.yelp.android.i;

import android.support.v7.internal.view.menu.i;
import android.support.v7.internal.view.menu.y;
import android.support.v7.internal.widget.ah;

final class d
  implements y
{
  private boolean b;
  
  private d(a parama) {}
  
  public void a(i parami, boolean paramBoolean)
  {
    if (b) {
      return;
    }
    b = true;
    a.c(a).o();
    if (a.a(a) != null) {
      a.a(a).b(8, parami);
    }
    b = false;
  }
  
  public boolean a(i parami)
  {
    if (a.a(a) != null)
    {
      a.a(a).c(8, parami);
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.i.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */