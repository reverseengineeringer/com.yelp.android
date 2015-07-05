package com.yelp.android.services.push;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.Uri;
import android.os.Build;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import com.yelp.android.appdata.AppData;
import com.yelp.android.util.YelpLog;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import java.util.TreeSet;

public class Notifier
{
  private final Context a;
  private final NotificationManager b;
  
  public Notifier(Context paramContext)
  {
    a = paramContext;
    b = ((NotificationManager)a.getSystemService("notification"));
  }
  
  public static Intent a(Context paramContext, Intent paramIntent, Notifier.NotificationType paramNotificationType, Uri paramUri, int paramInt)
  {
    a(paramContext, paramNotificationType, Integer.valueOf(paramInt));
    return a(paramContext, paramNotificationType, paramUri).a(paramIntent, paramUri, paramNotificationType, paramInt);
  }
  
  public static Intent a(Context paramContext, Notifier.NotificationType paramNotificationType, Uri paramUri, Integer paramInteger)
  {
    boolean bool = true;
    if (m.a(paramContext, paramNotificationType, paramInteger.intValue()) > 1) {}
    for (;;)
    {
      a(paramContext, paramNotificationType, paramInteger);
      return a(paramContext, paramNotificationType, paramUri).a(paramUri, paramNotificationType, bool);
      bool = false;
    }
  }
  
  private static q a(Context paramContext, Notifier.NotificationType paramNotificationType, Uri paramUri)
  {
    switch (l.a[paramNotificationType.ordinal()])
    {
    }
    for (;;)
    {
      paramNotificationType = new DefaultPushNotificationHandler(paramContext, paramNotificationType, null, paramUri);
      YelpLog.i(paramContext, "Using default handler on " + paramUri);
      return paramNotificationType;
      return new CheckInPushNotificationHandler(paramContext, paramUri);
      return new o(paramContext, paramUri);
      return new v(paramContext, paramUri);
      return new DefaultPushNotificationHandler(paramContext, paramNotificationType, paramContext.getString(2131166914), paramUri);
      return new g(paramContext, paramUri);
      return new u(paramContext, paramUri);
      return new c(paramContext, paramUri);
      YelpLog.w(paramContext, "Could not handle this message: " + paramUri);
    }
  }
  
  private void a(Notification paramNotification, m paramm)
  {
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(a);
    boolean bool1 = localSharedPreferences.getBoolean(a.getString(2131165972), true);
    boolean bool2 = localSharedPreferences.getBoolean(a.getString(2131165982), true);
    if (bool1)
    {
      flags |= 0x1;
      ledARGB = -16711936;
      ledOnMS = 1000;
      ledOffMS = 2000;
      if (Build.DEVICE.equals("LT26i")) {
        defaults |= 0x4;
      }
    }
    if (bool2) {
      defaults |= 0x2;
    }
    b.notify(paramm.d().name(), paramm.a(), paramNotification);
  }
  
  public static void a(Context paramContext)
  {
    ((NotificationManager)AppData.b().getSystemService("notification")).cancelAll();
    Notifier.NotificationType[] arrayOfNotificationType = Notifier.NotificationType.values();
    int j = arrayOfNotificationType.length;
    int i = 0;
    while (i < j)
    {
      a(paramContext, arrayOfNotificationType[i]);
      i += 1;
    }
  }
  
  public static void a(Context paramContext, Notifier.NotificationType paramNotificationType)
  {
    a(paramContext, paramNotificationType, null);
  }
  
  public static void a(Context paramContext, Notifier.NotificationType paramNotificationType, Integer paramInteger)
  {
    if (paramNotificationType == null) {
      return;
    }
    SharedPreferences.Editor localEditor = c(paramContext).edit();
    paramContext = c(paramContext, paramNotificationType);
    Object localObject = new TreeSet();
    if (paramInteger != null) {
      ((Set)localObject).add(paramInteger);
    }
    for (;;)
    {
      paramInteger = ((Set)localObject).iterator();
      while (paramInteger.hasNext())
      {
        localObject = (Integer)paramInteger.next();
        localEditor.remove(String.format(Locale.US, "%s.%d", new Object[] { paramNotificationType.name(), localObject }));
        localEditor.remove(String.format(Locale.US, "%s.%d.msg", new Object[] { paramNotificationType.name(), localObject }));
        paramContext.remove(localObject);
      }
      ((Set)localObject).addAll(paramContext);
    }
    paramNotificationType = paramNotificationType.name().concat(".ids");
    if (paramContext.isEmpty()) {
      localEditor.remove(paramNotificationType);
    }
    for (;;)
    {
      localEditor.apply();
      return;
      localEditor.putString(paramNotificationType, TextUtils.join(",", paramContext));
    }
  }
  
  private void a(p paramp, q paramq)
  {
    paramq.a(paramp, new k(this, paramq));
  }
  
  private void a(q paramq, m paramm)
  {
    paramm.b(a);
    paramq = paramq.a(paramm);
    deleteIntent = paramm.a(a, "action.DELETED_CLEAR_NOTIFICATIONS");
    contentIntent = paramm.a(a, "action.CLICKED_CLEAR_NOTIFICATIONS");
    a(paramq, paramm);
  }
  
  private static SharedPreferences c(Context paramContext)
  {
    return paramContext.getSharedPreferences("Notifier", 0);
  }
  
  private static Set<Integer> c(Context paramContext, Notifier.NotificationType paramNotificationType)
  {
    paramContext = c(paramContext).getString(paramNotificationType.name().concat(".ids"), "").split(",");
    paramNotificationType = new TreeSet();
    int j = paramContext.length;
    int i = 0;
    for (;;)
    {
      String str;
      if (i < j) {
        str = paramContext[i];
      }
      try
      {
        paramNotificationType.add(Integer.valueOf(str));
        i += 1;
        continue;
        return paramNotificationType;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        for (;;) {}
      }
    }
  }
  
  public void a(p paramp)
  {
    Object localObject1 = paramp.f();
    Object localObject2 = Notifier.NotificationType.typeFromUri(((Uri)localObject1).getPathSegments());
    localObject1 = a(a, (Notifier.NotificationType)localObject2, (Uri)localObject1);
    if (localObject2 == Notifier.NotificationType.Messages)
    {
      localObject2 = AppData.b().c();
      h localh = new h(paramp);
      ((i)localObject2).b(localh);
      if (!((i)localObject2).a(localh)) {
        return;
      }
    }
    a(paramp, (q)localObject1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.Notifier
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */