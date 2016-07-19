package com.yelp.android.ui.activities.messaging;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;

class ActivityMessageTheBusinessBulk$1
  implements View.OnClickListener
{
  ActivityMessageTheBusinessBulk$1(ActivityMessageTheBusinessBulk paramActivityMessageTheBusinessBulk) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.BusinessMessageTheBusinessMultibizEdit);
    a.startActivity(ActivityMessageTheBusinessEdit.a(a, ActivityMessageTheBusinessBulk.a(a)));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.ActivityMessageTheBusinessBulk.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */