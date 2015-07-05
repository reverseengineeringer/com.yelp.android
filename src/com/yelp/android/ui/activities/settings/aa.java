package com.yelp.android.ui.activities.settings;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.av.i;
import com.yelp.android.ui.activities.FacebookConnectManager;
import com.yelp.android.ui.activities.fg;

class aa
  implements i, fg<ChangeSettings>
{
  private final ChangeSettings b;
  private final String c;
  
  public aa(z paramz, ChangeSettings paramChangeSettings, String paramString)
  {
    b = paramChangeSettings;
    c = paramString;
  }
  
  private void a(FacebookConnectManager<ChangeSettings> paramFacebookConnectManager, boolean paramBoolean)
  {
    paramFacebookConnectManager = (ChangeSettings)paramFacebookConnectManager.b();
    paramFacebookConnectManager.hideLoadingDialog();
    paramFacebookConnectManager.c().edit().putBoolean(c, paramBoolean).commit();
    paramFacebookConnectManager.a(c);
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    b.hideLoadingDialog();
    b.c().edit().putBoolean(c, false).commit();
    b.a(c);
  }
  
  public void a(FacebookConnectManager<ChangeSettings> paramFacebookConnectManager)
  {
    a(paramFacebookConnectManager, true);
  }
  
  public void a(FacebookConnectManager<ChangeSettings> paramFacebookConnectManager, Throwable paramThrowable)
  {
    a(paramFacebookConnectManager, false);
  }
  
  public void b(FacebookConnectManager<ChangeSettings> paramFacebookConnectManager)
  {
    a(paramFacebookConnectManager, false);
  }
  
  public void c(FacebookConnectManager<ChangeSettings> paramFacebookConnectManager)
  {
    ((ChangeSettings)paramFacebookConnectManager.b()).showLoadingDialog(2131166497);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    b.hideLoadingDialog();
    b.a(c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */