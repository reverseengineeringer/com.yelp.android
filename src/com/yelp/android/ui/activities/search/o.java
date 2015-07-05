package com.yelp.android.ui.activities.search;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.appdata.ap;
import com.yelp.android.ui.panels.businesssearch.g;

class o
  implements View.OnClickListener
{
  o(l paraml, SearchBusinessesByList paramSearchBusinessesByList) {}
  
  public void onClick(View paramView)
  {
    a.enableLoading();
    l.a(b).b();
    l.b(b).clear();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */