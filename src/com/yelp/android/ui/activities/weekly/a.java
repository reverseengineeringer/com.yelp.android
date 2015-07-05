package com.yelp.android.ui.activities.weekly;

import android.graphics.Rect;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ImageView;

class a
  implements AbsListView.OnScrollListener
{
  a(ActivityWeeklyIssue paramActivityWeeklyIssue) {}
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    ActivityWeeklyIssue.b(a).getLocalVisibleRect(ActivityWeeklyIssue.a(a));
    if (ActivityWeeklyIssue.c(a) != aa).top)
    {
      ActivityWeeklyIssue.a(a, aa).top);
      ActivityWeeklyIssue.b(a).setY(aa).top / 2.0F);
    }
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.weekly.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */