package com.yelp.android.i;

import android.support.v4.view.ce;
import android.support.v4.view.ey;
import android.support.v7.internal.widget.ActionBarContainer;
import android.view.View;

class j
  extends ey
{
  j(i parami) {}
  
  public void b(View paramView)
  {
    if ((i.a(a)) && (i.b(a) != null))
    {
      ce.b(i.b(a), 0.0F);
      ce.b(i.c(a), 0.0F);
    }
    if ((i.d(a) != null) && (i.e(a) == 1)) {
      i.d(a).setVisibility(8);
    }
    i.c(a).setVisibility(8);
    i.c(a).setTransitioning(false);
    i.a(a, null);
    a.i();
    if (i.f(a) != null) {
      ce.t(i.f(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.i.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */