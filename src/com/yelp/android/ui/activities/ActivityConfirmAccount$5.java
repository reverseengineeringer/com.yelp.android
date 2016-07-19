package com.yelp.android.ui.activities;

import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.ui.activities.nearby.ActivityNearby;
import com.yelp.android.ui.dialogs.AccountConfirmedDialog;

class ActivityConfirmAccount$5
  implements c.a
{
  ActivityConfirmAccount$5(ActivityConfirmAccount paramActivityConfirmAccount) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    a.hideLoadingDialog();
    AppData.b().q().a(true);
    paramApiRequest = AccountConfirmedDialog.a();
    paramApiRequest.show(a.getSupportFragmentManager(), "account_confirmed_dialog");
    paramApiRequest.a(new DialogInterface.OnDismissListener()
    {
      public void onDismiss(DialogInterface paramAnonymousDialogInterface)
      {
        if (ActivityConfirmAccount.b(a) != null) {
          a.startActivity(ActivityConfirmAccount.b(a).setFlags(67174400));
        }
        for (;;)
        {
          a.finish();
          return;
          if (a.isTaskRoot()) {
            a.startActivity(ActivityNearby.b(AppData.b()).setFlags(67174400));
          }
        }
      }
    });
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.hideLoadingDialog();
    if (((paramYelpException instanceof ApiException)) && (((ApiException)paramYelpException).getResultCode() == 402)) {
      a(null, null);
    }
    while (((paramYelpException instanceof ApiException)) && (((ApiException)paramYelpException).getResultCode() == 404) && (a.getIntent().getBooleanExtra("just_logged_in", false))) {
      return;
    }
    ActivityConfirmAccount.c(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityConfirmAccount.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */