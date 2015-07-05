package com.yelp.android.ui.activities;

import android.app.backup.BackupManager;
import android.widget.Button;
import com.adjust.sdk.e;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.di;
import com.yelp.android.av.i;
import com.yelp.android.ui.activities.friends.ActivityFindFriends;
import com.yelp.android.ui.activities.support.h;
import com.yelp.android.ui.dialogs.TwoButtonDialog;
import org.json.JSONObject;

class bm
  implements di
{
  private i b = new bn(this);
  
  bm(ActivityCreateAccount paramActivityCreateAccount) {}
  
  public void a(boolean paramBoolean, YelpException paramYelpException)
  {
    a.hideLoadingDialog();
    if (paramBoolean)
    {
      e.a("ddxego");
      ActivityCreateAccount.u(a);
      ActivityCreateAccount.v(a).setEnabled(false);
      if ((ActivityCreateAccount.a(a) != null) && (ActivityCreateAccount.a(a).c() != null)) {
        ActivityCreateAccount.a(a).a(b);
      }
      new BackupManager(a).dataChanged();
      a.startActivity(ActivityFindFriends.a(a, true, ActivityCreateAccount.w(a)));
      a.setResult(-1);
      a.finish();
      return;
    }
    if (((paramYelpException instanceof ApiException)) && ("birthdate".equals(((ApiException)paramYelpException).getServerMessage().optString("field"))) && (((ApiException)paramYelpException).getResultCode() == 12)) {
      ActivityCreateAccount.b(a, paramYelpException.getMessage(a));
    }
    if (paramYelpException == ActivityCreateAccount.d())
    {
      paramYelpException = TwoButtonDialog.a(2131166840, 2131165457, 2131166582);
      paramYelpException.a(ActivityCreateAccount.x(a));
      paramYelpException.a(a.getSupportFragmentManager());
    }
    for (;;)
    {
      a.getHelper().h();
      return;
      a.showInfoDialog(a.getText(2131166582), paramYelpException.getMessage(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */