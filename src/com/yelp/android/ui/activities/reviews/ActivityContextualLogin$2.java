package com.yelp.android.ui.activities.reviews;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.activities.ActivityLogin;

class ActivityContextualLogin$2
  implements View.OnClickListener
{
  ActivityContextualLogin$2(ActivityContextualLogin paramActivityContextualLogin) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.ContextLogIn);
    paramView = ActivityLogin.b(a);
    a.startActivityForResult(paramView, 1016);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ActivityContextualLogin.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */