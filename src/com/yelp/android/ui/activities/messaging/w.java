package com.yelp.android.ui.activities.messaging;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

class w
  implements AbsListView.OnScrollListener
{
  w(FriendsFragment paramFriendsFragment) {}
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    FriendsFragment.a(a).c();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */