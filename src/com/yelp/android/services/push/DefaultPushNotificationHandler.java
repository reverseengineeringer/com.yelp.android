package com.yelp.android.services.push;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.support.v4.app.NotificationCompat.Action;
import android.support.v4.app.NotificationCompat.Builder;
import android.support.v4.app.NotificationCompat.InboxStyle;
import android.support.v4.app.NotificationCompat.Style;
import android.text.TextUtils;
import com.yelp.android.appdata.AppData;
import com.yelp.android.services.v;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.support.YelpActivity;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

class DefaultPushNotificationHandler
  implements q
{
  protected final Notifier.NotificationType a;
  protected final Uri b;
  private final String c;
  private final Context d;
  
  DefaultPushNotificationHandler(Context paramContext, Notifier.NotificationType paramNotificationType, String paramString, Uri paramUri)
  {
    d = paramContext;
    a = paramNotificationType;
    c = paramString;
    b = paramUri;
  }
  
  private NotificationCompat.Builder a(String paramString1, String paramString2, int paramInt, NotificationCompat.Style paramStyle, List<NotificationCompat.Action> paramList)
  {
    paramString1 = new NotificationCompat.Builder(d).setSmallIcon(2130838222).setColor(AppData.b().getResources().getColor(2131361994)).setContentText(paramString1).setContentTitle(d.getText(2131166381)).setTicker(paramString2).setWhen(System.currentTimeMillis()).setNumber(paramInt).setStyle(paramStyle);
    if (paramList != null)
    {
      paramString2 = paramList.iterator();
      while (paramString2.hasNext()) {
        paramString1.addAction((NotificationCompat.Action)paramString2.next());
      }
    }
    return paramString1;
  }
  
  protected int a()
  {
    return a(a.name());
  }
  
  protected int a(String paramString)
  {
    return v.a(paramString, paramString.hashCode());
  }
  
  public Notification a(m paramm)
  {
    int i = paramm.a(d);
    String str = a(i);
    if ((i == 1) || (TextUtils.isEmpty(str))) {
      return paramm.b();
    }
    NotificationCompat.Style localStyle = a(paramm, str);
    List localList = a(DefaultPushNotificationHandler.NotificationViewType.BIG, null);
    return a(str, paramm.c(), i, localStyle, localList, bflags);
  }
  
  protected Notification a(String paramString1, String paramString2, int paramInt1, NotificationCompat.Style paramStyle, List<NotificationCompat.Action> paramList, int paramInt2)
  {
    paramString1 = a(paramString1, paramString2, paramInt1, paramStyle, paramList).build();
    flags |= paramInt2;
    return paramString1;
  }
  
  protected Notification a(String paramString1, String paramString2, int paramInt1, NotificationCompat.Style paramStyle, List<NotificationCompat.Action> paramList, int paramInt2, PendingIntent paramPendingIntent)
  {
    paramString1 = a(paramString1, paramString2, paramInt1, paramStyle, paramList);
    paramString1.setContentIntent(paramPendingIntent);
    paramString1 = paramString1.build();
    flags |= paramInt2;
    return paramString1;
  }
  
  protected Intent a(Intent paramIntent)
  {
    paramIntent = ActivityLogin.a(d, 0, paramIntent);
    paramIntent.addFlags(268435456);
    return paramIntent;
  }
  
  public Intent a(Intent paramIntent, Uri paramUri, Notifier.NotificationType paramNotificationType, int paramInt)
  {
    ((NotificationManager)d.getSystemService("notification")).cancel(paramNotificationType.name(), paramInt);
    d.sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
    return null;
  }
  
  protected Intent a(Uri paramUri, Notifier.NotificationType paramNotificationType)
  {
    Intent localIntent = new Intent();
    localIntent.setData(paramUri);
    localIntent.addFlags(524288);
    localIntent.addFlags(268435456);
    localIntent.setAction("android.intent.action.VIEW");
    localIntent.putExtra("extra_notification_type", paramNotificationType);
    return localIntent;
  }
  
  public Intent a(Uri paramUri, Notifier.NotificationType paramNotificationType, boolean paramBoolean)
  {
    paramUri = a(a(paramUri, paramNotificationType));
    YelpActivity.setIntentAsFromPushNotification(paramUri);
    return paramUri;
  }
  
  protected NotificationCompat.Style a(m paramm, String paramString)
  {
    NotificationCompat.InboxStyle localInboxStyle = new NotificationCompat.InboxStyle();
    paramm = paramm.c(d).iterator();
    while (paramm.hasNext()) {
      localInboxStyle.addLine((String)paramm.next());
    }
    localInboxStyle.setSummaryText(paramString);
    return localInboxStyle;
  }
  
  protected String a(int paramInt)
  {
    if (TextUtils.isEmpty(c)) {
      return null;
    }
    return String.format(c, new Object[] { Integer.valueOf(paramInt) });
  }
  
  protected List<NotificationCompat.Action> a(DefaultPushNotificationHandler.NotificationViewType paramNotificationViewType, String paramString)
  {
    return Collections.emptyList();
  }
  
  public void a(p paramp, n paramn)
  {
    int i = a();
    String str = paramp.c();
    paramn.a(new m(i, paramp, a(str, str, 0, null, a(DefaultPushNotificationHandler.NotificationViewType.SINGLE, str), 24)));
  }
  
  protected Context c()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.DefaultPushNotificationHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */