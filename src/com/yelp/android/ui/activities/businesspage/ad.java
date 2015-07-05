package com.yelp.android.ui.activities.businesspage;

import android.view.View;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.ui.activities.reviewpage.ActivityTipsPage;

class ad
  extends cc
{
  ad(BusinessPageFragment paramBusinessPageFragment, EventIri paramEventIri)
  {
    super(paramBusinessPageFragment, paramEventIri);
  }
  
  public void a(View paramView)
  {
    a.startActivity(ActivityTipsPage.a(paramView.getContext(), BusinessPageFragment.c(a), true));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */