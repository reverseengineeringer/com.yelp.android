package com.yelp.android.services.push;

import android.app.IntentService;
import android.content.Intent;
import android.os.SystemClock;
import android.text.TextUtils;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.c;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.aq;

public class AccountPushRegistrationService
  extends IntentService
{
  public AccountPushRegistrationService()
  {
    super("AccountConfigSaveService");
  }
  
  private boolean a(String paramString)
  {
    boolean bool2 = false;
    AppData localAppData = AppData.b();
    int i = 0;
    boolean bool1;
    for (;;)
    {
      bool1 = bool2;
      if (i < 4) {}
      try
      {
        new aq(localAppData.r().c(), paramString, null).i();
        localAppData.f().a(localAppData.g().h());
        bool1 = true;
      }
      catch (YelpException localYelpException)
      {
        do
        {
          bool1 = bool2;
        } while ((localYelpException instanceof ApiException));
        SystemClock.sleep((i * 333 * 1.5D));
        i += 1;
      }
      return bool1;
    }
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    paramIntent = AppData.b().f();
    if (paramIntent.f()) {}
    String str;
    do
    {
      return;
      str = b.b().g();
    } while (TextUtils.isEmpty(str));
    paramIntent.a(a(str));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.AccountPushRegistrationService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */