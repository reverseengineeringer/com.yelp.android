package com.yelp.android.ui.activities.feed.viewbinder;

import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.util.ObjectDirtyEvent;
import com.yelp.android.util.c.a;

class ActivityRecentBookmarks$1
  implements c.a
{
  ActivityRecentBookmarks$1(ActivityRecentBookmarks paramActivityRecentBookmarks) {}
  
  public void a(boolean paramBoolean)
  {
    ActivityRecentBookmarks.a(a).a(paramBoolean);
    new ObjectDirtyEvent(ActivityRecentBookmarks.a(a), "com.yelp.android.business.update").a(a);
    ActivityRecentBookmarks.a(a, null);
    ActivityRecentBookmarks.b(a).notifyDataSetChanged();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.viewbinder.ActivityRecentBookmarks.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */