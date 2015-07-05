package com.yelp.android.ui.activities;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ci;

class cp
  implements DialogInterface.OnClickListener
{
  cp(ActivityLogin paramActivityLogin) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    paramDialogInterface = new ci(ActivityLogin.e(a), String.valueOf(ActivityLogin.f(a).getText()));
    paramDialogInterface.execute(new Object[0]);
    a.showLoadingDialog(paramDialogInterface);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.cp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */