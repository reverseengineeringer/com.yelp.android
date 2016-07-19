package com.yelp.android.ui.activities;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.database.b;
import com.yelp.android.database.g;
import com.yelp.android.ui.panels.businesssearch.BusinessAdapter;

class ActivityRecents$2
  implements DialogInterface.OnClickListener
{
  ActivityRecents$2(ActivityRecents paramActivityRecents) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AppData.b().i().d().c();
    ActivityRecents.a(a).clear();
    AppData.a(EventIri.RecentClear);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityRecents.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */