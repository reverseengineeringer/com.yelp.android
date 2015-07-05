package com.yelp.android.ui.activities.settings;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.RemoteConfigPreferences;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.av.i;

final class ag
  implements i, q
{
  private final ChangeSettings a;
  private final String b;
  
  public ag(ChangeSettings paramChangeSettings, String paramString)
  {
    a = paramChangeSettings;
    b = paramString;
  }
  
  public void a()
  {
    a.hideLoadingDialog();
    a.c().edit().putBoolean(b, true).commit();
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    a.hideLoadingDialog();
    a.c().edit().putBoolean(b, false).commit();
  }
  
  public void b()
  {
    a.hideLoadingDialog();
    a.a(b);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    RemoteConfigPreferences localRemoteConfigPreferences = AppData.b().m().h();
    a.c().edit().putBoolean(b, localRemoteConfigPreferences.h()).commit();
    a.hideLoadingDialog();
    a.onError(paramApiRequest, paramYelpException);
    a.a(b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */