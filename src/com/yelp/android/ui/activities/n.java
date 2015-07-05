package com.yelp.android.ui.activities;

import android.util.Pair;
import com.yelp.android.appdata.webrequests.ListBookmarksRequest.SortType;
import com.yelp.android.e.f;
import com.yelp.android.serializable.YelpBusiness;
import java.util.List;

public final class n
{
  private final f<String, Pair<List<YelpBusiness>, Integer>> a = new f(ListBookmarksRequest.SortType.values().length);
  
  public Pair<List<YelpBusiness>, Integer> a(ListBookmarksRequest.SortType paramSortType)
  {
    return (Pair)a.a(paramSortType.name());
  }
  
  public void a(ListBookmarksRequest.SortType paramSortType, List<YelpBusiness> paramList, int paramInt)
  {
    a.a(paramSortType.name(), new Pair(paramList, Integer.valueOf(paramInt)));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */