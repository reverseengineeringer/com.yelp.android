package com.yelp.android.services.push;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.activities.RootActivity;

public class KahunaPushNotificationReceiver
  extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str;
    Object localObject;
    DefaultPushNotificationHandler localDefaultPushNotificationHandler;
    if ("com.kahuna.sdk.push.received".equals(paramIntent.getAction()))
    {
      str = paramIntent.getStringExtra("alert");
      if (!TextUtils.isEmpty(str))
      {
        localObject = paramIntent.getBundleExtra("landing_extras_id").getString("url");
        localDefaultPushNotificationHandler = new DefaultPushNotificationHandler(AppData.b(), Notifier.NotificationType.Unknown, null, null);
        if (TextUtils.isEmpty((CharSequence)localObject)) {
          break label116;
        }
      }
    }
    for (paramIntent = localDefaultPushNotificationHandler.a(Uri.parse((String)localObject), Notifier.NotificationType.Unknown);; paramIntent = (Intent)localObject)
    {
      paramIntent = localDefaultPushNotificationHandler.a(str, str, 0, null, null, 24, PendingIntent.getActivity(paramContext, 0, paramIntent, 0));
      ((NotificationManager)paramContext.getSystemService("notification")).notify("kahuna", 1, paramIntent);
      return;
      label116:
      localObject = new Intent(paramContext, RootActivity.class);
      paramIntent.setFlags(268435456);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.KahunaPushNotificationReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */