package android.support.v7.widget;

import android.view.View;
import android.view.View.OnFocusChangeListener;

class SearchView$7
  implements View.OnFocusChangeListener
{
  SearchView$7(SearchView paramSearchView) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (SearchView.c(a) != null) {
      SearchView.c(a).onFocusChange(a, paramBoolean);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.SearchView.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */