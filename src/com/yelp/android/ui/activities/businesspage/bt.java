package com.yelp.android.ui.activities.businesspage;

import android.view.View;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.ui.activities.ActivityMapSingleBusiness;
import com.yelp.android.ui.map.g;

class bt
  extends bz
{
  bt(BusinessPageFragment paramBusinessPageFragment, EventIri paramEventIri)
  {
    super(paramBusinessPageFragment, paramEventIri);
  }
  
  public void a(View paramView)
  {
    if (!g.a(a.getActivity(), 1022)) {
      return;
    }
    a.startActivity(ActivityMapSingleBusiness.a(a.getActivity(), BusinessPageFragment.c(a)));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.bt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */