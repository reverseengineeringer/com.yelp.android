package com.yelp.android.ui.activities;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.el;

class co
  implements DialogInterface.OnClickListener
{
  co(ActivityLogin paramActivityLogin) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    a.getAppData().p();
    paramDialogInterface = new el(ActivityLogin.e(a));
    paramDialogInterface.execute(new Object[0]);
    a.showLoadingDialog(paramDialogInterface);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.co
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */