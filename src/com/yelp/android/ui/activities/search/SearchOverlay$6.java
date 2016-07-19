package com.yelp.android.ui.activities.search;

import com.yelp.android.analytics.GADimensions;
import com.yelp.android.serializable.PlatformFilter;
import com.yelp.android.ui.dialogs.PlatformSearchDialogFragment.a;
import com.yelp.android.util.StringUtils;

class SearchOverlay$6
  implements PlatformSearchDialogFragment.a
{
  SearchOverlay$6(SearchOverlay paramSearchOverlay) {}
  
  public void a(PlatformFilter paramPlatformFilter, String paramString1, String paramString2)
  {
    StringUtils.a(a.d, SearchOverlay.a(a), paramString1);
    StringUtils.a(a.d, SearchOverlay.b(a), paramString2);
    SearchOverlay.g(a);
    a.startActivity(SearchBusinessesByList.a(a.c(), paramPlatformFilter, paramString1, paramString2));
    MOBILE_VERTICAL_SEARCH_ENTRYvalue = "search_bar_suggest";
    MOBILE_VERTICAL_SEARCH_TYPEvalue = paramPlatformFilter.a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchOverlay.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */