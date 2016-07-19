package com.yelp.android.ui.activities;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ca;

class ActivityLogin$9
  implements DialogInterface.OnClickListener
{
  ActivityLogin$9(ActivityLogin paramActivityLogin) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    AppData.a(EventIri.LogInPasswordReset);
    paramDialogInterface = new ca(ActivityLogin.j(a), String.valueOf(ActivityLogin.k(a).getText()));
    paramDialogInterface.f(new Void[0]);
    a.showLoadingDialog(paramDialogInterface);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityLogin.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */