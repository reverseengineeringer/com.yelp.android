package com.yelp.android.ui.activities.localissue;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter;
import java.util.Map;

class ActivityLocalIssue$2
  implements AdapterView.OnItemClickListener
{
  ActivityLocalIssue$2(ActivityLocalIssue paramActivityLocalIssue) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = ActivityLocalIssue.d(a).a(paramInt - ActivityLocalIssue.c(a).getHeaderViewsCount());
    paramView = ActivityLocalIssue.b(a);
    paramView.put("biz_id", paramAdapterView.aD());
    AppData.a(EventIri.LocalIssueBusinessClicked, paramView);
    a.startActivity(ActivityBusinessPage.b(a, paramAdapterView));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.localissue.ActivityLocalIssue.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */