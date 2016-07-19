package com.yelp.android.ui.activities;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;

class ActivityConfirmAccount$2
  implements View.OnClickListener
{
  ActivityConfirmAccount$2(ActivityConfirmAccount paramActivityConfirmAccount) {}
  
  public void onClick(View paramView)
  {
    a.startActivityForResult(ActivityChangePrimaryEmail.a(a), 1011);
    AppData.a(EventIri.ConfirmEmailEditPrimaryEmail);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityConfirmAccount.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */