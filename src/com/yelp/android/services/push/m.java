package com.yelp.android.services.push;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import com.yelp.android.services.ClearNotificationService;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Set;

public class m
{
  private final Notification a;
  private final int b;
  private final Uri c;
  private final Notifier.NotificationType d;
  private final String e;
  
  public m(int paramInt, p paramp, Notification paramNotification)
  {
    a = paramNotification;
    b = paramInt;
    e = paramp.c();
    c = paramp.f();
    d = Notifier.NotificationType.typeFromUri(c.getPathSegments());
  }
  
  public static int a(Context paramContext, Notifier.NotificationType paramNotificationType, int paramInt)
  {
    return Notifier.b(paramContext).getInt(a(paramInt, paramNotificationType), 0);
  }
  
  public static PendingIntent a(Context paramContext, String paramString1, int paramInt, Notifier.NotificationType paramNotificationType, String paramString2, String paramString3)
  {
    return a(paramContext, paramString1, paramInt, paramNotificationType, paramString2, paramString3, Collections.emptyList());
  }
  
  public static PendingIntent a(Context paramContext, String paramString1, int paramInt, Notifier.NotificationType paramNotificationType, String paramString2, String paramString3, List<Pair<String, Serializable>> paramList)
  {
    Intent localIntent = new Intent(paramString1 + paramInt);
    localIntent.setClass(paramContext, ClearNotificationService.class);
    localIntent.putExtra("extra_notification_type", paramNotificationType);
    localIntent.putExtra("extra_notification_id", paramInt);
    localIntent.putExtra("extra_notification_action", paramString1);
    localIntent.putExtra("extra_notification_uri", paramString2);
    localIntent.putExtra("extra_notification_message", paramString3);
    paramString1 = paramList.iterator();
    while (paramString1.hasNext())
    {
      paramNotificationType = (Pair)paramString1.next();
      localIntent.putExtra((String)first, (Serializable)second);
    }
    return PendingIntent.getService(paramContext, 0, localIntent, 1207959552);
  }
  
  private static String a(int paramInt, Notifier.NotificationType paramNotificationType)
  {
    return String.format(Locale.US, "%s.%d", new Object[] { paramNotificationType.name(), Integer.valueOf(paramInt) });
  }
  
  private void d(Context paramContext)
  {
    String str = a(b, d);
    paramContext = Notifier.b(paramContext);
    int i = paramContext.getInt(str, 0) + 1;
    if (i > 1) {
      a.number = i;
    }
    paramContext.edit().putInt(str, i).apply();
  }
  
  private String e()
  {
    return String.format(Locale.US, "%s.%d.msg", new Object[] { d().name(), Integer.valueOf(b) });
  }
  
  private void e(Context paramContext)
  {
    List localList = c(paramContext);
    localList.add(e);
    Notifier.b(paramContext).edit().putString(e(), TextUtils.join("//", localList)).apply();
  }
  
  private String f()
  {
    return d().name().concat(".ids");
  }
  
  private void f(Context paramContext)
  {
    Set localSet = Notifier.b(paramContext, d());
    localSet.add(Integer.valueOf(b));
    Notifier.b(paramContext).edit().putString(f(), TextUtils.join(",", localSet)).apply();
  }
  
  public int a()
  {
    return b;
  }
  
  public int a(Context paramContext)
  {
    return a(paramContext, d, b);
  }
  
  public PendingIntent a(Context paramContext, String paramString)
  {
    return a(paramContext, paramString, b, d, c.toString(), null);
  }
  
  public Notification b()
  {
    return a;
  }
  
  public void b(Context paramContext)
  {
    d(paramContext);
    e(paramContext);
    f(paramContext);
  }
  
  public String c()
  {
    return e;
  }
  
  public List<String> c(Context paramContext)
  {
    paramContext = Notifier.b(paramContext).getString(e(), "");
    if (TextUtils.isEmpty(paramContext)) {
      return new LinkedList();
    }
    return new LinkedList(Arrays.asList(paramContext.split("//")));
  }
  
  public Notifier.NotificationType d()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */