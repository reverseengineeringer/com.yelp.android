package com.yelp.android.services.push;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.support.v4.content.WakefulBroadcastReceiver;
import android.text.TextUtils;
import com.yelp.android.appdata.AppData;

public class GcmReceiver
  extends WakefulBroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    int i;
    if (paramIntent.getStringExtra("device_id") == null)
    {
      i = 1;
      if ((!"com.google.android.c2dm.intent.RECEIVE".equals(paramIntent.getAction())) || (i != 0)) {
        break label63;
      }
      a(paramContext, paramIntent.setComponent(new ComponentName(paramContext.getPackageName(), GcmService.class.getName())));
      setResultCode(-1);
    }
    label63:
    do
    {
      do
      {
        return;
        i = 0;
        break;
      } while ((!"com.google.android.c2dm.intent.REGISTRATION".equals(paramIntent.getAction())) || (!TextUtils.isEmpty(d.b().g())));
      paramContext = paramIntent.getStringExtra("registration_id");
    } while (TextUtils.isEmpty(paramContext));
    com.crashlytics.android.d.a(new IllegalStateException(AppData.b().getString(2131165807)));
    d.b().a(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.GcmReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */