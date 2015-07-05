package com.yelp.android.services.push;

import android.app.IntentService;
import android.content.Intent;
import com.yelp.android.analytics.iris.PushNotificationIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.n;
import com.yelp.android.appdata.webrequests.au;
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
    p localp = new p(paramIntent.getExtras());
    if (AppData.b().h().b().equals(localp.g())) {
      new Notifier(this).a(localp);
    }
    for (;;)
    {
      GcmReceiver.a(paramIntent);
      return;
      HashMap localHashMap = new HashMap();
      localHashMap.put("device_id", AppData.b().h().b());
      localHashMap.put("notification_device_id", localp.g());
      AppData.a(PushNotificationIri.PushNotificationWrongDeviceId, localHashMap);
      new au(localp.g()).execute(new Void[0]);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.GcmService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */