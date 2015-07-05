package com.yelp.android.ui.widgets;

import android.widget.TextView;
import com.yelp.android.ui.util.bi;
import com.yelp.android.ui.util.cp;

class n
  implements bi
{
  n(k paramk) {}
  
  public void a(float paramFloat)
  {
    float f = Math.min(paramFloat / 100.0F / 0.003921569F, 255.0F);
    cp.b(k.e(a), (int)Math.max(k.f(a), f));
    cp.b(k.g(a), (int)Math.max(0.0F, k.h(a) - f));
    if (paramFloat > 100.0F)
    {
      k.c(a, true);
      if ((!k.i(a)) && (!k.j(a))) {
        k.c(a).startAnimation(k.d(a));
      }
    }
    do
    {
      return;
      k.c(a, false);
    } while ((k.i(a)) || (!k.j(a)));
    k.c(a).startAnimation(k.b(a));
  }
  
  public boolean b(float paramFloat)
  {
    if (paramFloat > 100.0F)
    {
      if (k.k(a) != null) {
        k.k(a).c();
      }
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */