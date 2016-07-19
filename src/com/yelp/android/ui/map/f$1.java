package com.yelp.android.ui.map;

import android.os.Handler;

class f$1
  implements Runnable
{
  f$1(f paramf) {}
  
  public void run()
  {
    if (f.a(a) != null)
    {
      f.b(a);
      f.c(a).a();
      return;
    }
    f.d(a).post(this);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.f.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */