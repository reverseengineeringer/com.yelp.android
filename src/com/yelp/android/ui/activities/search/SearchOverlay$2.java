package com.yelp.android.ui.activities.search;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;

class SearchOverlay$2
  implements View.OnClickListener
{
  SearchOverlay$2(SearchOverlay paramSearchOverlay) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.SearchButtonUi);
    SearchOverlay.a(a, EventIri.SearchButtonUi.getIriName());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchOverlay.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */