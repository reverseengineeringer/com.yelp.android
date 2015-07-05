package com.yelp.android.ui.activities.drawer;

import android.view.View;
import com.yelp.android.DinoListView;
import java.util.Timer;

class d
  implements Runnable
{
  d(c paramc) {}
  
  public void run()
  {
    if (a.a(a.a).getVisibility() == 0)
    {
      a.b(a.a).cancel();
      return;
    }
    a.d(a.a).smoothScrollBy(a.c(a.a), 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.drawer.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */