package com.yelp.android.ui.activities.bookmarks;

import android.util.Pair;
import com.yelp.android.appdata.webrequests.ListBookmarksRequest.SortType;
import com.yelp.android.g.e;
import com.yelp.android.serializable.YelpBusiness;
import java.util.List;

public final class ActivityBookmarks$a
{
  private final e<String, Pair<List<YelpBusiness>, Integer>> a = new e(10);
  
  public Pair<List<YelpBusiness>, Integer> a(ListBookmarksRequest.SortType paramSortType, String paramString)
  {
    return (Pair)a.get(paramSortType.name().concat(paramString));
  }
  
  public void a(ListBookmarksRequest.SortType paramSortType, String paramString, List<YelpBusiness> paramList, int paramInt)
  {
    paramSortType = paramSortType.name().concat(paramString);
    a.put(paramSortType, new Pair(paramList, Integer.valueOf(paramInt)));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bookmarks.ActivityBookmarks.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */