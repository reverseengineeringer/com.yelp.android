package com.yelp.android.ui.util;

class ScrollToLoadListView$2
  implements Runnable
{
  ScrollToLoadListView$2(ScrollToLoadListView paramScrollToLoadListView, boolean paramBoolean) {}
  
  public void run()
  {
    if (a)
    {
      b.smoothScrollToPosition(0);
      return;
    }
    b.setSelection(0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ScrollToLoadListView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */