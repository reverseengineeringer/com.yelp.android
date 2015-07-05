package com.yelp.android.ui.map;

import android.os.Handler;

class h
  implements Runnable
{
  h(g paramg) {}
  
  public void run()
  {
    if (g.a(a) != null)
    {
      g.b(a);
      g.c(a).a();
      return;
    }
    g.d(a).post(this);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */