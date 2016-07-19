package com.yelp.android.ui.activities.deals;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.android.ui.activities.reviewpage.ActivityReviewPager;

class ActivityDealDetail$6
  implements AdapterView.OnItemClickListener
{
  ActivityDealDetail$6(ActivityDealDetail paramActivityDealDetail) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramView = (YelpBusinessReview)paramAdapterView.getItemAtPosition(paramInt);
    if (ActivityDealDetail.a(a) == null) {}
    for (paramAdapterView = null;; paramAdapterView = ActivityDealDetail.a(a).aw())
    {
      paramAdapterView = ActivityReviewPager.a(a, paramView, ActivityDealDetail.b(a).u(), paramView.Q(), paramAdapterView);
      a.startActivity(paramAdapterView);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.ActivityDealDetail.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */