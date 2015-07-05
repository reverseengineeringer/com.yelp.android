package android.support.v7.widget;

import android.view.View;
import android.view.View.OnFocusChangeListener;

class co
  implements View.OnFocusChangeListener
{
  co(SearchView paramSearchView) {}
  
  public void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (SearchView.c(a) != null) {
      SearchView.c(a).onFocusChange(a, paramBoolean);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.co
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */