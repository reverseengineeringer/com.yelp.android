package com.yelp.android.ui.activities.categorypicker;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;

class g
  implements AbsListView.OnScrollListener
{
  g(CategorySuggestionsFragment paramCategorySuggestionsFragment) {}
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    CategorySuggestionsFragment.a(a).a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.categorypicker.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */