package com.yelp.android.ui.util;

import android.view.View;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

final class ct
  implements ViewTreeObserver.OnPreDrawListener
{
  ct(View paramView, cu paramcu) {}
  
  public boolean onPreDraw()
  {
    try
    {
      int i = a.getWidth();
      int j = a.getHeight();
      b.a(a, i, j);
      return true;
    }
    finally
    {
      a.getViewTreeObserver().removeOnPreDrawListener(this);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ct
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */