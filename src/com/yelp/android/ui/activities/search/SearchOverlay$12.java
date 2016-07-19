package com.yelp.android.ui.activities.search;

import com.yelp.android.ui.util.SuggestionFilter.b;
import java.util.List;

class SearchOverlay$12
  implements SuggestionFilter.b<CharSequence>
{
  SearchOverlay$12(SearchOverlay paramSearchOverlay) {}
  
  public void a()
  {
    SearchOverlay.h(a).notifyDataSetInvalidated();
    SearchOverlay.g(a);
  }
  
  public void a(List<CharSequence> paramList)
  {
    SearchOverlay.h(a).a(paramList);
    SearchOverlay.g(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchOverlay.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */