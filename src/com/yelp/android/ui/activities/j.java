package com.yelp.android.ui.activities;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import com.yelp.android.appdata.webrequests.eg;
import com.yelp.android.serializable.YelpBusiness;

class j
  implements MenuItem.OnMenuItemClickListener
{
  j(ActivityBookmarks paramActivityBookmarks, YelpBusiness paramYelpBusiness) {}
  
  public boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    new eg(a, new o(b, a)).execute(new Void[0]);
    b.e();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */