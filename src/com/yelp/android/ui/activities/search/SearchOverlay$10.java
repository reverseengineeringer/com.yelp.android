package com.yelp.android.ui.activities.search;

import android.view.inputmethod.InputMethodManager;

class SearchOverlay$10
  implements Runnable
{
  SearchOverlay$10(SearchOverlay paramSearchOverlay) {}
  
  public void run()
  {
    ((InputMethodManager)a.getSystemService("input_method")).showSoftInput(SearchOverlay.a(a), 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchOverlay.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */