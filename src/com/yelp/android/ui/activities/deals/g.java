package com.yelp.android.ui.activities.deals;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;

class g
  implements AdapterView.OnItemClickListener
{
  g(ActivityDealDetail paramActivityDealDetail) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = (YelpBusiness)paramAdapterView.getItemAtPosition(paramInt);
    if (paramAdapterView != null)
    {
      paramAdapterView = ActivityBusinessPage.a(a, paramAdapterView.getId());
      a.startActivity(paramAdapterView);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */