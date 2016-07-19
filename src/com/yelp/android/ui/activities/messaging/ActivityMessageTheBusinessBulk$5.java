package com.yelp.android.ui.activities.messaging;

import android.content.Intent;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.messaging.j;
import com.yelp.android.cc.k;

class ActivityMessageTheBusinessBulk$5
  extends ActivityMessageTheBusiness.a
{
  ActivityMessageTheBusinessBulk$5(ActivityMessageTheBusinessBulk paramActivityMessageTheBusinessBulk) {}
  
  public void a(Object paramObject)
  {
    String str = ActivityMessageTheBusinessBulk.e(a).getStringExtra("original_message_id");
    ActivityMessageTheBusinessBulk.a(a, new j(ActivityMessageTheBusinessBulk.b(a).c(), ((k)paramObject).b(), str, "message_id", ActivityMessageTheBusinessBulk.h(a)));
    ActivityMessageTheBusinessBulk.i(a).f(new Void[0]);
    AppData.a(EventIri.BusinessMessageTheBusinessMultibizSend);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.ActivityMessageTheBusinessBulk.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */