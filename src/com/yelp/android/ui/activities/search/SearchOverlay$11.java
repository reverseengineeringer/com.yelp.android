package com.yelp.android.ui.activities.search;

import android.text.TextUtils;
import android.widget.EditText;
import com.yelp.android.serializable.RichSearchSuggestion;
import com.yelp.android.ui.util.SuggestionFilter.b;
import java.util.List;

class SearchOverlay$11
  implements SuggestionFilter.b<RichSearchSuggestion>
{
  SearchOverlay$11(SearchOverlay paramSearchOverlay) {}
  
  public void a()
  {
    SearchOverlay.f(a).notifyDataSetInvalidated();
    SearchOverlay.g(a);
  }
  
  public void a(List<RichSearchSuggestion> paramList)
  {
    if (!TextUtils.isEmpty(SearchOverlay.a(a).getText().toString())) {
      SearchOverlay.d(a).clear();
    }
    for (;;)
    {
      SearchOverlay.f(a).a(paramList);
      SearchOverlay.d(a).notifyDataSetChanged();
      SearchOverlay.g(a);
      return;
      SearchOverlay.d(a).a(SearchOverlay.e(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchOverlay.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */