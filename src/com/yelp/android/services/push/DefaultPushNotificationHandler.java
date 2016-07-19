package com.yelp.android.services.push;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.support.v4.app.x.a;
import android.support.v4.app.x.d;
import android.support.v4.app.x.f;
import android.support.v4.app.x.p;
import android.text.TextUtils;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.support.YelpActivity;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

class DefaultPushNotificationHandler
  implements h
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
  
  private x.d a(String paramString1, String paramString2, int paramInt, x.p paramp, List<x.a> paramList)
  {
    paramString1 = new x.d(d).a(2130838501).d(AppData.b().getResources().getColor(2131624214)).b(paramString1).a(d.getText(2131166406)).c(paramString2).a(System.currentTimeMillis()).b(paramInt).a(paramp);
    if (paramList != null)
    {
      paramString2 = paramList.iterator();
      while (paramString2.hasNext()) {
        paramString1.a((x.a)paramString2.next());
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
    return com.yelp.android.services.g.a(paramString, paramString.hashCode());
  }
  
  public Notification a(Notifier.a parama)
  {
    int i = parama.a(d);
    String str = a(i);
    if ((i == 1) || (TextUtils.isEmpty(str))) {
      return parama.b();
    }
    x.p localp = a(parama, str);
    List localList = a(DefaultPushNotificationHandler.NotificationViewType.BIG, null);
    return a(str, parama.c(), i, localp, localList, bflags);
  }
  
  protected Notification a(String paramString1, String paramString2, int paramInt1, x.p paramp, List<x.a> paramList, int paramInt2)
  {
    paramString1 = a(paramString1, paramString2, paramInt1, paramp, paramList).a();
    flags |= paramInt2;
    return paramString1;
  }
  
  protected Notification a(String paramString1, String paramString2, int paramInt1, x.p paramp, List<x.a> paramList, int paramInt2, PendingIntent paramPendingIntent)
  {
    paramString1 = a(paramString1, paramString2, paramInt1, paramp, paramList);
    paramString1.a(paramPendingIntent);
    paramString1 = paramString1.a();
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
  
  protected x.p a(Notifier.a parama, String paramString)
  {
    x.f localf = new x.f();
    parama = parama.c(d).iterator();
    while (parama.hasNext()) {
      localf.b((String)parama.next());
    }
    localf.a(paramString);
    return localf;
  }
  
  protected String a(int paramInt)
  {
    if (TextUtils.isEmpty(c)) {
      return null;
    }
    return String.format(c, new Object[] { Integer.valueOf(paramInt) });
  }
  
  protected List<x.a> a(DefaultPushNotificationHandler.NotificationViewType paramNotificationViewType, String paramString)
  {
    return Collections.emptyList();
  }
  
  public void a(g paramg, Notifier.b paramb)
  {
    int i = a();
    String str = paramg.c();
    paramb.a(new Notifier.a(i, paramg, a(str, str, 0, null, a(DefaultPushNotificationHandler.NotificationViewType.SINGLE, str), 24)));
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