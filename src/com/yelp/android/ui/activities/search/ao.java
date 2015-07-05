package com.yelp.android.ui.activities.search;

import android.text.TextUtils;
import android.widget.EditText;
import com.yelp.android.serializable.RichSearchSuggestion;
import com.yelp.android.ui.util.cc;
import java.util.List;

class ao
  implements cc<RichSearchSuggestion>
{
  ao(SearchOverlay paramSearchOverlay) {}
  
  public void a()
  {
    SearchOverlay.h(a).notifyDataSetInvalidated();
    SearchOverlay.i(a);
  }
  
  public void a(List<RichSearchSuggestion> paramList)
  {
    if (!TextUtils.isEmpty(SearchOverlay.a(a).getText().toString()))
    {
      SearchOverlay.e(a).clear();
      SearchOverlay.f(a).clear();
    }
    for (;;)
    {
      SearchOverlay.h(a).a(paramList);
      SearchOverlay.f(a).notifyDataSetChanged();
      SearchOverlay.e(a).notifyDataSetChanged();
      SearchOverlay.i(a);
      return;
      SearchOverlay.f(a).a(SearchOverlay.g(a));
      SearchOverlay.e(a).a(SearchOverlay.d(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */