package com.yelp.android.ui.util;

import android.os.Handler;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.widget.ListView;
import java.util.HashMap;

final class av$6
  implements ViewTreeObserver.OnPreDrawListener
{
  av$6(ViewTreeObserver paramViewTreeObserver, ListView paramListView, View paramView, w paramw, HashMap paramHashMap, Runnable paramRunnable) {}
  
  public boolean onPreDraw()
  {
    a.removeOnPreDrawListener(this);
    int k = b.getFirstVisiblePosition();
    c.setVisibility(0);
    int i = 0;
    while (i < b.getChildCount())
    {
      View localView = b.getChildAt(i);
      long l = d.getItemId(k + i);
      Integer localInteger = (Integer)e.get(Long.valueOf(l));
      int m = localView.getTop();
      if (localInteger != null)
      {
        if (localInteger.intValue() != m)
        {
          localView.setTranslationY(localInteger.intValue() - m);
          localView.animate().setDuration(av.d).translationY(0.0F);
        }
        i += 1;
      }
      else
      {
        int j = localView.getHeight() + b.getDividerHeight();
        if (i > 0) {}
        for (;;)
        {
          localView.setTranslationY(Integer.valueOf(j + m).intValue() - m);
          localView.animate().setDuration(av.d).translationY(0.0F);
          break;
          j = -j;
        }
      }
    }
    if (f != null) {
      new Handler().postDelayed(f, av.d);
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.av.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */