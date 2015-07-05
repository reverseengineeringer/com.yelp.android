package com.yelp.android.ui.activities.reviewpage;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.TextView;

class al
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  al(ak paramak, am paramam) {}
  
  public void onGlobalLayout()
  {
    ak.a(a);
    a.n.getViewTreeObserver().removeGlobalOnLayoutListener(this);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */