package com.yelp.android.ui.activities.reviewpage;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.TextView;

class c$1
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  c$1(c paramc, c.a parama) {}
  
  public void onGlobalLayout()
  {
    c.a(a);
    a.p.getViewTreeObserver().removeGlobalOnLayoutListener(this);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.c.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */