package com.yelp.android.services;

import android.app.IntentService;
import android.content.Intent;
import android.net.Uri;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.services.push.CheckInPushNotificationHandler.CheckInButtonType;
import com.yelp.android.services.push.Notifier;
import com.yelp.android.services.push.Notifier.NotificationType;

public class ClearNotificationService
  extends IntentService
{
  public ClearNotificationService()
  {
    super("ClearNotificationService");
  }
  
  private void a(String paramString, Uri paramUri, Notifier.NotificationType paramNotificationType)
  {
    if ((paramString.equals("action.REPLY_BUTTON_CLEAR_NOTIFICATIONS")) && (paramNotificationType == Notifier.NotificationType.Messages)) {
      AppData.a(EventIri.PushNotificationMessageReply);
    }
    do
    {
      do
      {
        return;
      } while (paramNotificationType != Notifier.NotificationType.Checkin);
      if (paramString.equals("action.LIKE_BUTTON_CLEAR_NOTIFICATIONS"))
      {
        AppData.a(CheckInPushNotificationHandler.CheckInButtonType.LIKE.getButtonIri(paramUri));
        return;
      }
    } while (!paramString.equals("action.COMMENT_BUTTON_CLEAR_NOTIFICATIONS"));
    AppData.a(CheckInPushNotificationHandler.CheckInButtonType.COMMENT.getButtonIri(paramUri));
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    if (paramIntent == null) {}
    Notifier.NotificationType localNotificationType;
    do
    {
      int i;
      String str1;
      Uri localUri;
      do
      {
        do
        {
          return;
          localNotificationType = (Notifier.NotificationType)paramIntent.getSerializableExtra("extra_notification_type");
        } while (localNotificationType == null);
        i = paramIntent.getIntExtra("extra_notification_id", 0);
        String str2 = paramIntent.getStringExtra("extra_notification_uri");
        str1 = paramIntent.getStringExtra("extra_notification_action");
        localUri = null;
        if (str2 != null) {
          localUri = Uri.parse(str2);
        }
        if (i == 0) {
          break;
        }
        if ("action.DELETED_CLEAR_NOTIFICATIONS".equals(str1))
        {
          paramIntent = localNotificationType.getDeleteIri(localUri);
          if (paramIntent != null) {
            AppData.a(paramIntent);
          }
          Notifier.a(this, localNotificationType, Integer.valueOf(i));
          return;
        }
        if (("action.CLICKED_CLEAR_NOTIFICATIONS".equals(str1)) && (localUri != null))
        {
          paramIntent = localNotificationType.getOpenIri(localUri);
          if (paramIntent != null) {
            AppData.a(paramIntent);
          }
          startActivity(Notifier.a(this, localNotificationType, localUri, Integer.valueOf(i)));
          return;
        }
      } while ((!"action.LIKE_BUTTON_CLEAR_NOTIFICATIONS".equals(str1)) && (!"action.COMMENT_BUTTON_CLEAR_NOTIFICATIONS".equals(str1)) && (!"action.REPLY_BUTTON_CLEAR_NOTIFICATIONS".equals(str1)));
      a(str1, localUri, localNotificationType);
      paramIntent = Notifier.a(this, paramIntent, localNotificationType, localUri, i);
    } while (paramIntent == null);
    startActivity(paramIntent);
    return;
    Notifier.a(this, localNotificationType);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.ClearNotificationService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */