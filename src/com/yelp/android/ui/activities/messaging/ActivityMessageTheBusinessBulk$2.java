package com.yelp.android.ui.activities.messaging;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.g.a;
import java.util.Map;

class ActivityMessageTheBusinessBulk$2
  implements View.OnClickListener
{
  ActivityMessageTheBusinessBulk$2(ActivityMessageTheBusinessBulk paramActivityMessageTheBusinessBulk) {}
  
  public void onClick(View paramView)
  {
    ActivityMessageTheBusinessBulk.b(a).b();
    paramView = new a();
    if (ActivityMessageTheBusinessBulk.c(a).equals(ActivityMessageTheBusinessBulk.MessageTheBusinessBulkAction.COMPOSE_MESSAGE_ON_COMPLETION)) {
      paramView.put("source", "unclaimed_widget");
    }
    AppData.a(EventIri.BusinessMessageTheBusinessMultibizSelectAll, paramView);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.messaging.ActivityMessageTheBusinessBulk.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */