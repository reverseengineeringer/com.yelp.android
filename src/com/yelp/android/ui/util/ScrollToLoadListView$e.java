package com.yelp.android.ui.util;

import android.view.View;
import android.widget.AbsListView;
import com.yelp.android.ui.panels.PanelLoading;

final class ScrollToLoadListView$e
  extends ScrollToLoadListView.a
{
  private boolean c = true;
  private ScrollToLoadListView d;
  
  public ScrollToLoadListView$e(ScrollToLoadListView paramScrollToLoadListView1, ScrollToLoadListView paramScrollToLoadListView2)
  {
    super(paramScrollToLoadListView1, null);
    d = paramScrollToLoadListView2;
  }
  
  private void a(AbsListView paramAbsListView, int paramInt)
  {
    paramAbsListView = paramAbsListView.getItemAtPosition(paramInt);
    PanelLoading localPanelLoading = d.getLoadingPanel();
    if (localPanelLoading != null)
    {
      localPanelLoading.setVisibility(0);
      localPanelLoading.b();
    }
    if ((paramAbsListView instanceof ScrollToLoadListView.c)) {
      ((ScrollToLoadListView.c)paramAbsListView).a();
    }
  }
  
  public boolean a()
  {
    return c;
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    super.onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
    if (d.d())
    {
      paramInt1 = paramAbsListView.getFirstVisiblePosition();
      if ((paramInt3 > 1) && (d.getLastVisiblePosition() + 1 == paramInt3)) {
        d.setBottomReached(true);
      }
      if ((d.c()) && (paramInt1 == 0)) {
        a(paramAbsListView, paramInt1);
      }
      return;
    }
    if ((paramInt1 == 0) && (paramAbsListView.getChildAt(0) != null) && (paramAbsListView.getChildAt(0).getTop() == 0)) {}
    for (c = true;; c = false)
    {
      paramInt1 = paramAbsListView.getLastVisiblePosition();
      if (paramInt1 >= paramAbsListView.getCount()) {
        break;
      }
      a(paramAbsListView, paramInt1);
      return;
    }
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    super.onScrollStateChanged(paramAbsListView, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ScrollToLoadListView.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */