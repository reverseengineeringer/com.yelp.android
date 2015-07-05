package com.yelp.android.ui.activities;

import android.content.DialogInterface;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.i;

class l
  implements q
{
  l(ActivityBookmarks paramActivityBookmarks) {}
  
  public void a(DialogInterface paramDialogInterface, int paramInt)
  {
    a.getAppData().f().b(paramInt);
    ActivityBookmarks.a(a, com.yelp.android.appdata.webrequests.ListBookmarksRequest.SortType.values()[paramInt]);
    ActivityBookmarks.a(a, new n());
    a.a_();
    paramDialogInterface.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */