package com.yelp.android.ui.activities;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;

class ActivityLogin$7
  implements DialogInterface.OnClickListener
{
  ActivityLogin$7(ActivityLogin paramActivityLogin) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AppData.a(EventIri.BackgroundLocationAttachToAccountDialogNo);
    ActivityLogin.c(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityLogin.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */