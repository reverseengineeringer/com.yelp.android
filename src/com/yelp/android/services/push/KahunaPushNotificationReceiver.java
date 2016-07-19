package com.yelp.android.services.push;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.WakefulBroadcastReceiver;
import android.text.TextUtils;
import com.yelp.android.appdata.AppData;

public class KahunaPushNotificationReceiver
  extends WakefulBroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("com.kahuna.sdk.push.received".equals(paramIntent.getAction()))
    {
      paramContext = paramIntent.getStringExtra("alert");
      if (!TextUtils.isEmpty(paramContext))
      {
        paramIntent = paramIntent.getBundleExtra("landing_extras_id");
        Intent localIntent = new Intent(AppData.b(), SendKahunaNotificationService.class);
        localIntent.putExtra("message", paramContext);
        localIntent.putExtra("payload_url", paramIntent.getString("url"));
        localIntent.putExtra("image_url", paramIntent.getString("image"));
        a(AppData.b(), localIntent);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.KahunaPushNotificationReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */