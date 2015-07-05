package com.yelp.android.ui.activities.businesspage;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.ui.activities.reviews.ReviewSource;

class al
  implements View.OnClickListener
{
  al(BusinessPageFragment paramBusinessPageFragment) {}
  
  public void onClick(View paramView)
  {
    BusinessPageFragment.a(a, "button_bar");
    paramView = BusinessPageFragment.a(a, ReviewSource.BizPageContributionButton);
    a.a(paramView);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */