package com.yelp.android.ui.activities.bookmarks;

import android.content.DialogInterface;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.c;
import com.yelp.android.appdata.webrequests.ListBookmarksRequest.SortType;

class ActivityBookmarks$8
  implements ActivityBookmarks.SortDialogFragment.a
{
  ActivityBookmarks$8(ActivityBookmarks paramActivityBookmarks) {}
  
  public void a(DialogInterface paramDialogInterface, int paramInt)
  {
    AppData.b().f().b(paramInt);
    ActivityBookmarks.a(a, ListBookmarksRequest.SortType.values()[paramInt]);
    ActivityBookmarks.p(a).setText(ca).descriptionPastParticiple);
    ActivityBookmarks.a(ActivityBookmarks.c(a));
    a.a();
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bookmarks.ActivityBookmarks.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */