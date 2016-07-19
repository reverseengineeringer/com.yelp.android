package com.yelp.android.ui.activities.localissue;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter;
import com.yelp.android.util.c;
import java.util.Map;

class ActivityLocalIssue$5
  implements View.OnClickListener
{
  ActivityLocalIssue$5(ActivityLocalIssue paramActivityLocalIssue) {}
  
  public void onClick(View paramView)
  {
    ActivityLocalIssue.a(a, ((Integer)paramView.getTag()).intValue());
    ActivityLocalIssue.a(a, ActivityLocalIssue.d(a).a(ActivityLocalIssue.e(a)));
    Map localMap = ActivityLocalIssue.b(a);
    localMap.put("biz_id", ActivityLocalIssue.f(a).aD());
    AppData.a(EventIri.LocalIssueBookmarkClicked, localMap);
    if (ActivityLocalIssue.f(a).U()) {}
    for (paramView = EventIri.LocalIssueRemoveBookmark;; paramView = EventIri.LocalIssueAddBookmark)
    {
      AppData.a(paramView, localMap);
      ActivityLocalIssue.g(a).a(ActivityLocalIssue.f(a));
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.localissue.ActivityLocalIssue.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */