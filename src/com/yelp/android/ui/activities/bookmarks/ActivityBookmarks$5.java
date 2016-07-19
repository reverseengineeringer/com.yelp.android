package com.yelp.android.ui.activities.bookmarks;

import com.yelp.android.serializable.RichSearchSuggestion;
import com.yelp.android.ui.activities.search.a;
import com.yelp.android.ui.util.SuggestionFilter.b;
import java.util.List;

class ActivityBookmarks$5
  implements SuggestionFilter.b<RichSearchSuggestion>
{
  ActivityBookmarks$5(ActivityBookmarks paramActivityBookmarks) {}
  
  public void a()
  {
    ActivityBookmarks.k(a).notifyDataSetInvalidated();
  }
  
  public void a(List<RichSearchSuggestion> paramList)
  {
    ActivityBookmarks.k(a).a(paramList);
    ActivityBookmarks.k(a).notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bookmarks.ActivityBookmarks.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */