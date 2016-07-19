package com.yelp.android.ui.activities.reviews;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.activities.ActivityCreateAccount;

class ActivityContextualLogin$3
  implements View.OnClickListener
{
  ActivityContextualLogin$3(ActivityContextualLogin paramActivityContextualLogin) {}
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.ContextFacebookSignUp);
    a.startActivityForResult(ActivityCreateAccount.a(a, true), 1016);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.ActivityContextualLogin.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */