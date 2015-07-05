package com.yelp.android.ui.activities.weekly;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter;
import java.util.HashMap;
import java.util.Map;

class e
  implements View.OnClickListener
{
  e(ActivityWeeklyIssue paramActivityWeeklyIssue) {}
  
  public void onClick(View paramView)
  {
    ActivityWeeklyIssue.b(a, ((Integer)paramView.getTag()).intValue());
    ActivityWeeklyIssue.a(a, ActivityWeeklyIssue.e(a).a(ActivityWeeklyIssue.g(a)));
    paramView = new HashMap();
    paramView.put("biz_id", ActivityWeeklyIssue.h(a).getId());
    paramView.put("market_id", ActivityWeeklyIssue.f(a));
    AppData.a(EventIri.WeeklyBookmarkClicked, paramView);
    if (ActivityWeeklyIssue.h(a).isBookmarked())
    {
      AppData.a(EventIri.WeeklyRemoveBookmark, paramView);
      if (AppData.b().m().c())
      {
        ActivityWeeklyIssue.b(a, ActivityWeeklyIssue.h(a));
        return;
      }
      a.startActivityForResult(ActivityLogin.a(a), 1004);
      return;
    }
    AppData.a(EventIri.WeeklyAddBookmark, paramView);
    if (AppData.b().m().c())
    {
      ActivityWeeklyIssue.c(a, ActivityWeeklyIssue.h(a));
      return;
    }
    a.startActivityForResult(ActivityLogin.a(a, a.getString(2131166730, new Object[] { ActivityWeeklyIssue.h(a).getName() })), 1003);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.weekly.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */