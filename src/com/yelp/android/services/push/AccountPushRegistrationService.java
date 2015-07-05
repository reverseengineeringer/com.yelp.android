package com.yelp.android.services.push;

import android.app.IntentService;
import android.content.Intent;
import android.os.SystemClock;
import android.text.TextUtils;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.n;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.at;
import com.yelp.android.appdata.webrequests.m;

public class AccountPushRegistrationService
  extends IntentService
{
  private final m<Void> a = new a("AccountPushRegistrationService");
  
  public AccountPushRegistrationService()
  {
    super("AccountConfigSaveService");
  }
  
  void a(at paramat, AppData paramAppData, int paramInt)
  {
    if (paramInt > 4) {}
    do
    {
      return;
      try
      {
        paramat.executeSynchronously(paramAppData.m(), paramAppData.o(), true);
        return;
      }
      catch (YelpException localYelpException) {}
    } while ((localYelpException instanceof ApiException));
    SystemClock.sleep((paramInt * 333 * 1.5D));
    a(paramat, paramAppData, paramInt + 1);
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    paramIntent = AppData.b();
    String str = d.b().g();
    if (!TextUtils.isEmpty(str)) {
      a(new at(paramIntent.n().c(), str, paramIntent.h().c(), a), paramIntent, 0);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.AccountPushRegistrationService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */