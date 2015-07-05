package com.yelp.android.services.push;

import android.content.Context;
import android.net.Uri;
import android.support.v4.app.NotificationCompat.Action;
import com.yelp.android.analytics.iris.PushNotificationIri;
import java.util.Collections;
import java.util.List;

 enum CheckInPushNotificationHandler$CheckInType$1
{
  CheckInPushNotificationHandler$CheckInType$1(int paramInt1, String paramString1, PushNotificationIri paramPushNotificationIri1, PushNotificationIri paramPushNotificationIri2)
  {
    super(paramString, paramInt, paramInt1, paramString1, paramPushNotificationIri1, paramPushNotificationIri2, null);
  }
  
  public List<NotificationCompat.Action> getNotificationButtons(Context paramContext, DefaultPushNotificationHandler.NotificationViewType paramNotificationViewType, String paramString, Notifier.NotificationType paramNotificationType, Uri paramUri, int paramInt)
  {
    if (paramNotificationViewType == DefaultPushNotificationHandler.NotificationViewType.BIG) {
      return Collections.emptyList();
    }
    paramNotificationViewType = super.getNotificationButtons(paramContext, paramNotificationViewType, paramString, paramNotificationType, paramUri, paramInt);
    paramNotificationViewType.add(0, CheckInPushNotificationHandler.CheckInType.access$200(paramContext, paramNotificationType, paramUri, paramString, paramInt, "action.LIKE_BUTTON_CLEAR_NOTIFICATIONS", CheckInPushNotificationHandler.CheckInButtonType.LIKE, 2130838135, 2131166010));
    return paramNotificationViewType;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.CheckInPushNotificationHandler.CheckInType.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */