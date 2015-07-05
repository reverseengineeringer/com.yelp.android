package com.yelp.android.ui.activities.events;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.Event;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;

class t
  implements View.OnClickListener
{
  t(EventFragment paramEventFragment) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.EventBusiness, "event_id", EventFragment.a(a).getId());
    a.startActivity(ActivityBusinessPage.b(AppData.b(), EventFragment.a(a).getBusiness()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */