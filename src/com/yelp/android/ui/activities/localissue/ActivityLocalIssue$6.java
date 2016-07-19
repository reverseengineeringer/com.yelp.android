package com.yelp.android.ui.activities.localissue;

import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter;
import com.yelp.android.util.c.a;

class ActivityLocalIssue$6
  implements c.a
{
  ActivityLocalIssue$6(ActivityLocalIssue paramActivityLocalIssue) {}
  
  public void a(boolean paramBoolean)
  {
    ActivityLocalIssue.f(a).a(paramBoolean);
    ActivityLocalIssue.a(a, null);
    ActivityLocalIssue.d(a).notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.localissue.ActivityLocalIssue.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */