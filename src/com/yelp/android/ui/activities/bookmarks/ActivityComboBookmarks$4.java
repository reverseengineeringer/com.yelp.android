package com.yelp.android.ui.activities.bookmarks;

import android.content.DialogInterface;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.c;

class ActivityComboBookmarks$4
  implements ActivityComboBookmarks.SortDialogFragment.a
{
  ActivityComboBookmarks$4(ActivityComboBookmarks paramActivityComboBookmarks) {}
  
  public void a(DialogInterface paramDialogInterface, int paramInt)
  {
    a.getAppData().f().b(paramInt);
    ActivityComboBookmarks.a(a, com.yelp.android.appdata.webrequests.ListBookmarksRequest.SortType.values()[paramInt]);
    ActivityComboBookmarks.a(a, new ActivityComboBookmarks.a());
    a.p_();
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bookmarks.ActivityComboBookmarks.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */