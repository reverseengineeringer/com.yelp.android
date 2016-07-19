package com.yelp.android.ui.activities.search;

import android.database.DataSetObserver;
import android.text.TextUtils;
import com.yelp.android.appdata.o;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse;
import com.yelp.android.ui.dialogs.DidYouMeanDialog;
import com.yelp.android.ui.map.YelpMap;
import java.util.List;

class SearchBusinessesByMap$8
  extends DataSetObserver
{
  SearchBusinessesByMap$8(SearchBusinessesByMap paramSearchBusinessesByMap) {}
  
  public void onChanged()
  {
    super.onChanged();
    SearchBusinessesByMap.a(a).setOnCameraUpdate(SearchBusinessesByMap.e(a));
    SearchBusinessesByMap.a(a, null);
    SearchRequest.SearchResponse localSearchResponse = a.a.k();
    if (localSearchResponse == null) {
      return;
    }
    a.disableLoading();
    String str = localSearchResponse.d();
    if (!localSearchResponse.a().isEmpty()) {
      SearchBusinessesByMap.a(a, localSearchResponse);
    }
    for (;;)
    {
      SearchBusinessesByMap.a(a, a.a);
      return;
      if (!TextUtils.isEmpty(str)) {
        a.startActivityForResult(DidYouMeanDialog.a(a, 2131165777, str), 1056);
      } else {
        SearchBusinessesByMap.b(a, localSearchResponse);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchBusinessesByMap.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */