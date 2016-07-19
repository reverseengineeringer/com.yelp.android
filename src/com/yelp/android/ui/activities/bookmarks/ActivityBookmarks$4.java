package com.yelp.android.ui.activities.bookmarks;

import android.support.v4.app.l;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.c;

class ActivityBookmarks$4
  implements View.OnClickListener
{
  ActivityBookmarks$4(ActivityBookmarks paramActivityBookmarks) {}
  
  public void onClick(View paramView)
  {
    paramView = new ActivityBookmarks.SortDialogFragment();
    paramView.a(ActivityBookmarks.j(a));
    paramView.a(a.getAppData().f().u());
    paramView.show(a.getSupportFragmentManager().a(), null);
    AppData.a(EventIri.BookmarksSort);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bookmarks.ActivityBookmarks.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */