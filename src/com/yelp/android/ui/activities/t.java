package com.yelp.android.ui.activities;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.debug.Debug;
import com.yelp.android.debug.Debug.ApiEndpoint;
import com.yelp.android.services.d;

class t
  implements DialogInterface.OnClickListener
{
  t(ActivityConfig paramActivityConfig, AppData paramAppData, Debug.ApiEndpoint[] paramArrayOfApiEndpoint) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.m().a(a);
    a.o().a(b[paramInt], c.getApplicationContext());
    d.a();
    System.exit(0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */