package com.yelp.android.ui.activities.deals;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;

class ActivityDealDetail$7
  implements AdapterView.OnItemClickListener
{
  ActivityDealDetail$7(ActivityDealDetail paramActivityDealDetail) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (YelpBusiness)paramAdapterView.getItemAtPosition(paramInt);
    if (paramAdapterView != null)
    {
      paramAdapterView = ActivityBusinessPage.b(a, paramAdapterView.aD());
      a.startActivity(paramAdapterView);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.ActivityDealDetail.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */