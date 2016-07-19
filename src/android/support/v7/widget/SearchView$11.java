package android.support.v7.widget;

import android.support.v4.view.g;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;

class SearchView$11
  implements View.OnKeyListener
{
  SearchView$11(SearchView paramSearchView) {}
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (SearchView.o(a) == null) {}
    do
    {
      return false;
      if ((SearchView.m(a).isPopupShowing()) && (SearchView.m(a).getListSelection() != -1)) {
        return SearchView.a(a, paramView, paramInt, paramKeyEvent);
      }
    } while ((SearchView.SearchAutoComplete.a(SearchView.m(a))) || (!g.a(paramKeyEvent)) || (paramKeyEvent.getAction() != 1) || (paramInt != 66));
    paramView.cancelLongPress();
    SearchView.a(a, 0, null, SearchView.m(a).getText().toString());
    return true;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.SearchView.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */