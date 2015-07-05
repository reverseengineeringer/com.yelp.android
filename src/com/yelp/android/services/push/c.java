package com.yelp.android.services.push;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.events.ActivityEvents;
import com.yelp.android.ui.activities.support.YelpActivity;

public class c
  extends DefaultPushNotificationHandler
{
  public c(Context paramContext, Uri paramUri)
  {
    super(paramContext, Notifier.NotificationType.Events, paramContext.getString(2131166913), paramUri);
  }
  
  public Intent a(Uri paramUri, Notifier.NotificationType paramNotificationType, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (paramUri = ActivityEvents.a(AppData.b());; paramUri = paramNotificationType)
    {
      YelpActivity.setIntentAsFromPushNotification(paramUri);
      paramUri = ActivityLogin.a(AppData.b(), 0, paramUri);
      paramUri.addFlags(268435456);
      return paramUri;
      paramNotificationType = new Intent();
      paramNotificationType.setData(paramUri);
      paramNotificationType.setAction("android.intent.action.VIEW");
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */