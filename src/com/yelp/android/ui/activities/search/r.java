package com.yelp.android.ui.activities.search;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;

class r
  implements View.OnClickListener
{
  r(SearchBusinessesByMap paramSearchBusinessesByMap) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.HotButtonSearch);
    SearchUtils.a(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */