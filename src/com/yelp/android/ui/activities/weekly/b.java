package com.yelp.android.ui.activities.weekly;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter;
import java.util.HashMap;
import java.util.Map;

class b
  implements AdapterView.OnItemClickListener
{
  b(ActivityWeeklyIssue paramActivityWeeklyIssue) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = ActivityWeeklyIssue.e(a).a(paramInt - ActivityWeeklyIssue.d(a).getHeaderViewsCount());
    paramView = new HashMap();
    paramView.put("biz_id", paramAdapterView.getId());
    paramView.put("market_id", ActivityWeeklyIssue.f(a));
    AppData.a(EventIri.WeeklyBusinessClicked, paramView);
    a.startActivity(ActivityBusinessPage.b(a, paramAdapterView));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.weekly.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */