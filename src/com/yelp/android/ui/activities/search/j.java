package com.yelp.android.ui.activities.search;

import android.content.Context;
import android.location.Address;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.ap;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest;
import com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse;
import com.yelp.android.appdata.webrequests.fv;
import com.yelp.android.serializable.Category;
import com.yelp.android.ui.activities.mutatebiz.AddBusiness;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

class j
  implements View.OnClickListener
{
  j(SearchBusinessesByList paramSearchBusinessesByList) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.SearchAddBusiness);
    Category localCategory = a.a.i().a().getCategory();
    if (a.a.l() != null) {}
    for (String str = a.a.l().getLocation().getCountryCode();; str = null)
    {
      List localList = Collections.emptyList();
      if (localCategory != null) {
        localList = Arrays.asList(new Category[] { localCategory });
      }
      paramView = paramView.getContext();
      paramView.startActivity(AddBusiness.a(paramView, localList, str));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */