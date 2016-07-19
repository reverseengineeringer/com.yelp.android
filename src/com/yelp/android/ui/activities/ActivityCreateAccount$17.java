package com.yelp.android.ui.activities;

import android.app.backup.BackupManager;
import android.widget.Button;
import com.yelp.android.analytics.adjust.AdjustManager;
import com.yelp.android.analytics.adjust.AdjustManager.YelpAdjustEvent;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.c;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.bv;
import com.yelp.android.appdata.webrequests.co.a;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.ui.activities.support.b;
import com.yelp.android.ui.dialogs.TwoButtonDialog;
import org.json.JSONObject;

class ActivityCreateAccount$17
  implements co.a
{
  private c.a b = new c.a()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, Void paramAnonymousVoid)
    {
      new bv(true, null).f(new Void[0]);
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException) {}
  };
  
  ActivityCreateAccount$17(ActivityCreateAccount paramActivityCreateAccount) {}
  
  public void a(YelpException paramYelpException)
  {
    a.hideLoadingDialog();
    if (paramYelpException == null)
    {
      AppData.b().l().a(AdjustManager.YelpAdjustEvent.SIGNED_UP);
      ActivityCreateAccount.v(a);
      AppData.b().f().k(true);
      ActivityCreateAccount.w(a).setEnabled(false);
      if ((ActivityCreateAccount.x(a) != null) && (ActivityCreateAccount.x(a).c() != null)) {
        ActivityCreateAccount.x(a).a(b);
      }
      new BackupManager(a).dataChanged();
      a.setResult(-1);
      a.finish();
      return;
    }
    if (((paramYelpException instanceof ApiException)) && ("birthdate".equals(((ApiException)paramYelpException).getServerMessage().optString("field"))) && (((ApiException)paramYelpException).getResultCode() == 12)) {
      ActivityCreateAccount.d(a, paramYelpException.getMessage(a));
    }
    if (paramYelpException == ActivityCreateAccount.e())
    {
      ActivityCreateAccount.d(a, true);
      paramYelpException = TwoButtonDialog.a(2131166806, 2131165583, 2131166590);
      paramYelpException.a(ActivityCreateAccount.y(a));
      paramYelpException.a(a.getSupportFragmentManager());
    }
    for (;;)
    {
      a.getHelper().h();
      return;
      a.showInfoDialog(a.getText(2131166590), paramYelpException.getMessage(a));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityCreateAccount.17
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */