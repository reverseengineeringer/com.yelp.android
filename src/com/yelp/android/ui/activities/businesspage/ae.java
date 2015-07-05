package com.yelp.android.ui.activities.businesspage;

import android.view.View;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.ui.activities.reviewpage.ActivityBusinessReviewsPage;

class ae
  extends cc
{
  ae(BusinessPageFragment paramBusinessPageFragment, EventIri paramEventIri)
  {
    super(paramBusinessPageFragment, paramEventIri);
  }
  
  public void a(View paramView)
  {
    a.startActivity(ActivityBusinessReviewsPage.a(paramView.getContext(), BusinessPageFragment.c(a), BusinessPageFragment.f(a)));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */