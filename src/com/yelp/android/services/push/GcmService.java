package com.yelp.android.services.push;

import android.app.IntentService;
import android.content.Intent;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.f;
import com.yelp.android.appdata.webrequests.ar;
import java.util.HashMap;
import java.util.Map;

public class GcmService
  extends IntentService
{
  public GcmService()
  {
    super("GcmService");
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    g localg = new g(paramIntent.getExtras());
    if (AppData.b().h().b().equals(localg.g())) {
      new Notifier(this).a(localg);
    }
    for (;;)
    {
      GcmReceiver.a(paramIntent);
      return;
      HashMap localHashMap = new HashMap();
      localHashMap.put("device_id", AppData.b().h().b());
      localHashMap.put("notification_device_id", localg.g());
      AppData.a(EventIri.PushNotificationWrongDeviceId, localHashMap);
      new ar(localg.g()).f(new Void[0]);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.GcmService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */