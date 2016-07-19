package com.yelp.android.ui.activities.bookmarks;

import android.util.Pair;
import com.yelp.android.appdata.webrequests.ListBookmarksRequest.SortType;
import com.yelp.android.g.e;
import com.yelp.android.serializable.YelpBusiness;
import java.util.List;

public final class ActivityComboBookmarks$a
{
  private final e<String, Pair<List<YelpBusiness>, Integer>> a = new e(ListBookmarksRequest.SortType.values().length);
  
  public Pair<List<YelpBusiness>, Integer> a(ListBookmarksRequest.SortType paramSortType)
  {
    return (Pair)a.get(paramSortType.name());
  }
  
  public void a(ListBookmarksRequest.SortType paramSortType, List<YelpBusiness> paramList, int paramInt)
  {
    a.put(paramSortType.name(), new Pair(paramList, Integer.valueOf(paramInt)));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bookmarks.ActivityComboBookmarks.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */