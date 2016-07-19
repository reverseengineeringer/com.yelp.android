package com.yelp.android.ui.activities.search;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.TextView;
import com.yelp.android.ui.util.SuggestionFilter;
import com.yelp.android.util.StringUtils;
import java.util.List;

class SearchOverlay$5
  implements AdapterView.OnItemClickListener
{
  SearchOverlay$5(SearchOverlay paramSearchOverlay) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = SearchOverlay.b(a).getText().toString();
    paramView = ((TextView)paramView.findViewById(2131690786)).getText().toString();
    if (a.l().contains(paramView))
    {
      SearchOverlay.b(a).setHint(paramView);
      StringUtils.a(a.d, SearchOverlay.b(a), "");
    }
    for (;;)
    {
      SearchOverlay.g(a);
      SearchOverlay.a(a).requestFocus();
      SuggestionFilter.a(a, SearchOverlay.q(a), null, paramView, paramAdapterView, paramInt);
      return;
      StringUtils.a(a.d, SearchOverlay.b(a), paramView);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchOverlay.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */