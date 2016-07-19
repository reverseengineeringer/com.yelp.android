package com.yelp.android.ui.activities;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ToggleButton;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.c;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.util.d;
import com.yelp.android.util.p;
import java.util.List;

class ActivityFullScreenAward$1
  implements View.OnClickListener
{
  ActivityFullScreenAward$1(ActivityFullScreenAward paramActivityFullScreenAward) {}
  
  public void onClick(View paramView)
  {
    paramView = (ToggleButton)a.findViewById(2131689718);
    ToggleButton localToggleButton = (ToggleButton)a.findViewById(2131689717);
    c localc = AppData.b().f();
    localc.e(paramView.isChecked());
    localc.f(localToggleButton.isChecked());
    ActivityFullScreenAward.a(a, p.a(null, paramView, localToggleButton));
    paramView = d.a(ActivityFullScreenAward.a(a), ActivityFullScreenAward.b(a));
    if (!paramView.isEmpty())
    {
      if (!ActivityFullScreenAward.b(a).isEmpty()) {
        ActivityFullScreenAward.c(a);
      }
      if (!p.a(a, AppData.b().q().p(), paramView)) {
        ActivityFullScreenAward.d(a);
      }
      return;
    }
    a.finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityFullScreenAward.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */