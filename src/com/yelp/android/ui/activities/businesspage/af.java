package com.yelp.android.ui.activities.businesspage;

import android.view.View;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.ui.activities.ActivityRegularUsers;

class af
  extends cc
{
  af(BusinessPageFragment paramBusinessPageFragment, EventIri paramEventIri, String paramString)
  {
    super(paramBusinessPageFragment, paramEventIri, paramString);
  }
  
  public void a(View paramView)
  {
    a.startActivity(ActivityRegularUsers.a(a.getActivity(), BusinessPageFragment.c(a)));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */