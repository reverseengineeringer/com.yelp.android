package com.yelp.android.ui.util;

class bk
  implements Runnable
{
  bk(ScrollToLoadListView paramScrollToLoadListView, boolean paramBoolean) {}
  
  public void run()
  {
    if (a)
    {
      b.smoothScrollToPosition(b.getCount() - 1);
      return;
    }
    b.setSelection(b.getCount() - 1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.bk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */