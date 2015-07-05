package com.yelp.android.ui.activities.businesspage;

import android.view.View;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.ui.activities.reviewpage.ActivityHighlights;

class bu
  extends cc
{
  bu(BusinessPageFragment paramBusinessPageFragment, EventIri paramEventIri)
  {
    super(paramBusinessPageFragment, paramEventIri);
  }
  
  public void a(View paramView)
  {
    a.startActivity(ActivityHighlights.a(paramView.getContext(), BusinessPageFragment.c(a), BusinessPageFragment.d(a), BusinessPageFragment.e(a)));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */