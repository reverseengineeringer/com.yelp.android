package com.yelp.android.ui.activities;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import com.yelp.android.appdata.webrequests.MediaRequest;

final class cz
  implements AbsListView.OnScrollListener
{
  private cz(ActivityMediaBrowser paramActivityMediaBrowser) {}
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramAbsListView.getLastVisiblePosition() > paramInt3 / 2) && (ActivityMediaBrowser.c(a) != null) && (!ActivityMediaBrowser.c(a).isFetching()))
    {
      ActivityMediaBrowser.c(a).setCallback(ActivityMediaBrowser.e(a));
      if (ActivityMediaBrowser.c(a).isCompleted()) {
        ActivityMediaBrowser.a(a, ActivityMediaBrowser.c(a).next(paramInt2 * 2));
      }
    }
    else
    {
      return;
    }
    if (ActivityMediaBrowser.c(a).isCancelled())
    {
      ActivityMediaBrowser.a(a, ActivityMediaBrowser.c(a).retry());
      return;
    }
    ActivityMediaBrowser.c(a).execute(new Void[0]);
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.cz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */