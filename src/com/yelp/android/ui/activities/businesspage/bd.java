package com.yelp.android.ui.activities.businesspage;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.serializable.YelpBusiness;

class bd
  implements View.OnClickListener
{
  bd(BusinessPageFragment paramBusinessPageFragment) {}
  
  public void onClick(View paramView)
  {
    BusinessPageFragment.g(a, null);
    BusinessPageFragment.b(a, BusinessPageFragment.c(a).getId());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */