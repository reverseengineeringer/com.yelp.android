package com.yelp.android.ui.activities.bookmarks;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.yelp.android.appdata.webrequests.dk;
import com.yelp.android.serializable.YelpBusiness;

class ActivityComboBookmarks$2
  implements MenuItem.OnMenuItemClickListener
{
  ActivityComboBookmarks$2(ActivityComboBookmarks paramActivityComboBookmarks, YelpBusiness paramYelpBusiness) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    new dk(a, new ActivityComboBookmarks.b(b, a)).f(new Void[0]);
    b.e();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bookmarks.ActivityComboBookmarks.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */