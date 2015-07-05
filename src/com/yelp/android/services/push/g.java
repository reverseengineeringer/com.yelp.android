package com.yelp.android.services.push;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.NotificationCompat.Action;
import android.support.v4.app.NotificationCompat.InboxStyle;
import android.support.v4.app.NotificationCompat.Style;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.RemoteConfigPreferences;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.support.YelpActivity;
import java.util.ArrayList;
import java.util.List;

public class g
  extends DefaultPushNotificationHandler
{
  public g(Context paramContext, Uri paramUri)
  {
    super(paramContext, Notifier.NotificationType.Messages, paramContext.getString(2131166915), paramUri);
  }
  
  private Intent a(Uri paramUri, boolean paramBoolean)
  {
    Intent localIntent = a(paramUri, a);
    localIntent.putExtra("conversation_id", a(paramUri));
    localIntent.putExtra("show_keyboard", paramBoolean);
    localIntent.setFlags(536870912);
    return a(localIntent);
  }
  
  private String a(Uri paramUri)
  {
    return (String)paramUri.getPathSegments().get(2);
  }
  
  protected int a()
  {
    return a(a(b));
  }
  
  public Notification a(m paramm)
  {
    int i = paramm.a(c());
    Object localObject = AppData.b().m().h();
    if ((i < 2) || ((localObject != null) && (((RemoteConfigPreferences)localObject).e().booleanValue()))) {
      return super.a(paramm);
    }
    localObject = new NotificationCompat.InboxStyle();
    ((NotificationCompat.InboxStyle)localObject).addLine((CharSequence)paramm.c(c()).get(0));
    String str = a(i);
    ((NotificationCompat.InboxStyle)localObject).setSummaryText(str);
    List localList = a(DefaultPushNotificationHandler.NotificationViewType.BIG, null);
    return a(str, paramm.c(), i, (NotificationCompat.Style)localObject, localList, bflags);
  }
  
  protected Intent a(Intent paramIntent)
  {
    paramIntent = ActivityLogin.a(AppData.b(), 2131166785, 2131166042, paramIntent);
    paramIntent.addFlags(268435456);
    return paramIntent;
  }
  
  public Intent a(Intent paramIntent, Uri paramUri, Notifier.NotificationType paramNotificationType, int paramInt)
  {
    super.a(paramIntent, paramUri, paramNotificationType, paramInt);
    return a(paramUri, true);
  }
  
  public Intent a(Uri paramUri, Notifier.NotificationType paramNotificationType, boolean paramBoolean)
  {
    paramUri = a(paramUri, false);
    YelpActivity.setIntentAsFromPushNotification(paramUri);
    return paramUri;
  }
  
  protected List<NotificationCompat.Action> a(DefaultPushNotificationHandler.NotificationViewType paramNotificationViewType, String paramString)
  {
    paramNotificationViewType = m.a(c(), "action.REPLY_BUTTON_CLEAR_NOTIFICATIONS", a(), a, b.toString(), paramString);
    paramString = new ArrayList();
    paramString.add(new NotificationCompat.Action(2130838104, c().getString(2131166445), paramNotificationViewType));
    return paramString;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */