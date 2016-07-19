package android.support.v4.app;

import android.app.Notification;
import android.app.Notification.BigPictureStyle;
import android.app.Notification.BigTextStyle;
import android.app.Notification.Builder;
import android.app.Notification.InboxStyle;
import android.app.PendingIntent;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.SparseArray;
import android.widget.RemoteViews;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

class ae
{
  private static final Object a = new Object();
  private static Field b;
  private static boolean c;
  private static final Object d = new Object();
  
  public static Bundle a(Notification.Builder paramBuilder, aa.a parama)
  {
    paramBuilder.addAction(parama.a(), parama.b(), parama.c());
    paramBuilder = new Bundle(parama.d());
    if (parama.f() != null) {
      paramBuilder.putParcelableArray("android.support.remoteInputs", aj.a(parama.f()));
    }
    return paramBuilder;
  }
  
  public static Bundle a(Notification paramNotification)
  {
    Object localObject1;
    Bundle localBundle;
    synchronized (a)
    {
      if (c) {
        return null;
      }
    }
  }
  
  public static SparseArray<Bundle> a(List<Bundle> paramList)
  {
    Object localObject1 = null;
    int j = paramList.size();
    int i = 0;
    while (i < j)
    {
      Bundle localBundle = (Bundle)paramList.get(i);
      Object localObject2 = localObject1;
      if (localBundle != null)
      {
        localObject2 = localObject1;
        if (localObject1 == null) {
          localObject2 = new SparseArray();
        }
        ((SparseArray)localObject2).put(i, localBundle);
      }
      i += 1;
      localObject1 = localObject2;
    }
    return (SparseArray<Bundle>)localObject1;
  }
  
  public static void a(w paramw, CharSequence paramCharSequence1, boolean paramBoolean1, CharSequence paramCharSequence2, Bitmap paramBitmap1, Bitmap paramBitmap2, boolean paramBoolean2)
  {
    paramw = new Notification.BigPictureStyle(paramw.a()).setBigContentTitle(paramCharSequence1).bigPicture(paramBitmap1);
    if (paramBoolean2) {
      paramw.bigLargeIcon(paramBitmap2);
    }
    if (paramBoolean1) {
      paramw.setSummaryText(paramCharSequence2);
    }
  }
  
  public static void a(w paramw, CharSequence paramCharSequence1, boolean paramBoolean, CharSequence paramCharSequence2, CharSequence paramCharSequence3)
  {
    paramw = new Notification.BigTextStyle(paramw.a()).setBigContentTitle(paramCharSequence1).bigText(paramCharSequence3);
    if (paramBoolean) {
      paramw.setSummaryText(paramCharSequence2);
    }
  }
  
  public static void a(w paramw, CharSequence paramCharSequence1, boolean paramBoolean, CharSequence paramCharSequence2, ArrayList<CharSequence> paramArrayList)
  {
    paramw = new Notification.InboxStyle(paramw.a()).setBigContentTitle(paramCharSequence1);
    if (paramBoolean) {
      paramw.setSummaryText(paramCharSequence2);
    }
    paramCharSequence1 = paramArrayList.iterator();
    while (paramCharSequence1.hasNext()) {
      paramw.addLine((CharSequence)paramCharSequence1.next());
    }
  }
  
  public static class a
    implements v, w
  {
    private Notification.Builder a;
    private final Bundle b;
    private List<Bundle> c = new ArrayList();
    
    public a(Context paramContext, Notification paramNotification, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, RemoteViews paramRemoteViews, int paramInt1, PendingIntent paramPendingIntent1, PendingIntent paramPendingIntent2, Bitmap paramBitmap, int paramInt2, int paramInt3, boolean paramBoolean1, boolean paramBoolean2, int paramInt4, CharSequence paramCharSequence4, boolean paramBoolean3, Bundle paramBundle, String paramString1, boolean paramBoolean4, String paramString2)
    {
      paramContext = new Notification.Builder(paramContext).setWhen(when).setSmallIcon(icon, iconLevel).setContent(contentView).setTicker(tickerText, paramRemoteViews).setSound(sound, audioStreamType).setVibrate(vibrate).setLights(ledARGB, ledOnMS, ledOffMS);
      boolean bool;
      if ((flags & 0x2) != 0)
      {
        bool = true;
        paramContext = paramContext.setOngoing(bool);
        if ((flags & 0x8) == 0) {
          break label337;
        }
        bool = true;
        label123:
        paramContext = paramContext.setOnlyAlertOnce(bool);
        if ((flags & 0x10) == 0) {
          break label343;
        }
        bool = true;
        label143:
        paramContext = paramContext.setAutoCancel(bool).setDefaults(defaults).setContentTitle(paramCharSequence1).setContentText(paramCharSequence2).setSubText(paramCharSequence4).setContentInfo(paramCharSequence3).setContentIntent(paramPendingIntent1).setDeleteIntent(deleteIntent);
        if ((flags & 0x80) == 0) {
          break label349;
        }
        bool = true;
        label202:
        a = paramContext.setFullScreenIntent(paramPendingIntent2, bool).setLargeIcon(paramBitmap).setNumber(paramInt1).setUsesChronometer(paramBoolean2).setPriority(paramInt4).setProgress(paramInt2, paramInt3, paramBoolean1);
        b = new Bundle();
        if (paramBundle != null) {
          b.putAll(paramBundle);
        }
        if (paramBoolean3) {
          b.putBoolean("android.support.localOnly", true);
        }
        if (paramString1 != null)
        {
          b.putString("android.support.groupKey", paramString1);
          if (!paramBoolean4) {
            break label355;
          }
          b.putBoolean("android.support.isGroupSummary", true);
        }
      }
      for (;;)
      {
        if (paramString2 != null) {
          b.putString("android.support.sortKey", paramString2);
        }
        return;
        bool = false;
        break;
        label337:
        bool = false;
        break label123;
        label343:
        bool = false;
        break label143;
        label349:
        bool = false;
        break label202;
        label355:
        b.putBoolean("android.support.useSideChannel", true);
      }
    }
    
    public Notification.Builder a()
    {
      return a;
    }
    
    public void a(aa.a parama)
    {
      c.add(ae.a(a, parama));
    }
    
    public Notification b()
    {
      Notification localNotification = a.build();
      Object localObject = ae.a(localNotification);
      Bundle localBundle = new Bundle(b);
      Iterator localIterator = b.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (((Bundle)localObject).containsKey(str)) {
          localBundle.remove(str);
        }
      }
      ((Bundle)localObject).putAll(localBundle);
      localObject = ae.a(c);
      if (localObject != null) {
        ae.a(localNotification).putSparseParcelableArray("android.support.actionExtras", (SparseArray)localObject);
      }
      return localNotification;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */