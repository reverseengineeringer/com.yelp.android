package com.yelp.android.ui.activities;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ToggleButton;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.c;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.serializable.Badge;
import com.yelp.android.services.ShareService;
import com.yelp.android.services.ShareService.ShareObjectType;
import com.yelp.android.util.p;
import java.util.List;

class ActivityBadge$1
  implements View.OnClickListener
{
  ActivityBadge$1(ActivityBadge paramActivityBadge) {}
  
  public void onClick(View paramView)
  {
    paramView = AppData.b().f();
    paramView.e(ActivityBadge.a(a).isChecked());
    paramView.f(ActivityBadge.b(a).isChecked());
    ActivityBadge.a(a, p.a(null, ActivityBadge.a(a), ActivityBadge.b(a)));
    if (ActivityBadge.c(a).size() > 0)
    {
      ActivityBadge.d(a);
      if (!p.a(a, AppData.b().q().p(), ActivityBadge.c(a)))
      {
        a.startService(ShareService.a(a, ShareService.ShareObjectType.BADGE, ((Badge)a.getIntent().getParcelableExtra("extra.badge")).k(), ActivityBadge.c(a), a.getIntent().getStringExtra("extra.check_in")));
        a.finish();
      }
      return;
    }
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityBadge.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */