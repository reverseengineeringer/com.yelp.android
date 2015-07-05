package com.yelp.android.ui.activities.search;

import android.view.inputmethod.InputMethodManager;

class am
  implements Runnable
{
  am(SearchOverlay paramSearchOverlay) {}
  
  public void run()
  {
    ((InputMethodManager)a.getSystemService("input_method")).showSoftInput(SearchOverlay.a(a), 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */