package com.yelp.android.ui.util;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

class bm
  implements AbsListView.OnScrollListener
{
  private bm(ScrollToLoadListView paramScrollToLoadListView) {}
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    ScrollToLoadListView.a(a, true);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */