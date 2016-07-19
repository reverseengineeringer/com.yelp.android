package com.yelp.android.ui.util;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

class ScrollToLoadListView$a
  implements AbsListView.OnScrollListener
{
  private ScrollToLoadListView$a(ScrollToLoadListView paramScrollToLoadListView) {}
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (ScrollToLoadListView.a(a) != null) {
      ScrollToLoadListView.a(a).onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
    }
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    ScrollToLoadListView.a(a, true);
    if (ScrollToLoadListView.a(a) != null) {
      ScrollToLoadListView.a(a).onScrollStateChanged(paramAbsListView, paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ScrollToLoadListView.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */