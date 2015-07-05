package com.yelp.android.ui.activities.events;

import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.by;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.map.f;

class s
  implements f<by>
{
  s(EventFragment paramEventFragment) {}
  
  public void a(by paramby) {}
  
  public void b(by paramby)
  {
    AppData.a(EventIri.EventBusiness);
    a.startActivity(ActivityBusinessPage.b(AppData.b(), EventFragment.a(a).getBusiness()));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */