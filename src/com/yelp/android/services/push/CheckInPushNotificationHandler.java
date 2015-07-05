package com.yelp.android.services.push;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.NotificationCompat.Action;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.fo;
import com.yelp.android.ui.activities.support.YelpActivity;
import java.util.List;

public class CheckInPushNotificationHandler
  extends DefaultPushNotificationHandler
{
  private static final String c = Integer.toString(1);
  
  public CheckInPushNotificationHandler(Context paramContext, Uri paramUri)
  {
    super(paramContext, Notifier.NotificationType.Checkin, paramContext.getString(CheckInPushNotificationHandler.CheckInType.getCheckinTypeFromUri(paramUri).getNotificationSummaryResource()), paramUri);
  }
  
  private void a(Uri paramUri, Notifier.NotificationType paramNotificationType, int paramInt, String paramString)
  {
    Context localContext = c();
    int i = (int)System.currentTimeMillis();
    Notification localNotification = a(paramString, paramString, 0, null, CheckInPushNotificationHandler.CheckInType.COMMENTS.getNotificationButtons(localContext, DefaultPushNotificationHandler.NotificationViewType.SINGLE, paramString, paramNotificationType, paramUri, i), 24);
    deleteIntent = m.a(localContext, "action.DELETED_CLEAR_NOTIFICATIONS", i, paramNotificationType, paramUri.toString(), paramString);
    contentIntent = m.a(localContext, "action.CLICKED_CLEAR_NOTIFICATIONS", i, paramNotificationType, paramUri.toString(), paramString);
    paramUri = (NotificationManager)localContext.getSystemService("notification");
    paramUri.notify(paramNotificationType.name(), i, localNotification);
    paramUri.cancel(paramNotificationType.name(), paramInt);
  }
  
  protected int a()
  {
    return CheckInPushNotificationHandler.CheckInType.getNotificationIdFromUri(b);
  }
  
  public Intent a(Intent paramIntent, Uri paramUri, Notifier.NotificationType paramNotificationType, int paramInt)
  {
    Object localObject = (CheckInPushNotificationHandler.CheckInButtonType)paramIntent.getSerializableExtra("extra_check_in_notification_button");
    switch (b.b[localObject.ordinal()])
    {
    default: 
      return null;
    case 1: 
      if (AppData.b().m().c()) {
        new fo(paramUri.getLastPathSegment(), true).execute(new Void[0]);
      }
      a(paramUri, paramNotificationType, paramInt, paramIntent.getStringExtra("extra_notification_message"));
      return null;
    }
    localObject = a(paramUri, paramNotificationType);
    ((Intent)localObject).putExtra("extra_check_in_aggregated", false);
    ((Intent)localObject).putExtra("extra_check_in_notification_button", CheckInPushNotificationHandler.CheckInButtonType.COMMENT);
    localObject = a((Intent)localObject);
    super.a(paramIntent, paramUri, paramNotificationType, paramInt);
    return (Intent)localObject;
  }
  
  public Intent a(Uri paramUri, Notifier.NotificationType paramNotificationType, boolean paramBoolean)
  {
    paramUri = a(paramUri, paramNotificationType);
    paramUri.putExtra("extra_check_in_aggregated", paramBoolean);
    YelpActivity.setIntentAsFromPushNotification(paramUri);
    return a(paramUri);
  }
  
  protected List<NotificationCompat.Action> a(DefaultPushNotificationHandler.NotificationViewType paramNotificationViewType, String paramString)
  {
    return CheckInPushNotificationHandler.CheckInType.getCheckinTypeFromUri(b).getNotificationButtons(c(), paramNotificationViewType, paramString, a, b, a());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.CheckInPushNotificationHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */