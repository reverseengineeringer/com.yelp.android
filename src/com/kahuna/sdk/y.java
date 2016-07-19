package com.kahuna.sdk;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.x.b;
import android.support.v4.app.x.c;
import android.support.v4.app.x.d;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public class y
{
  private static y a = new y();
  private static boolean c = false;
  private Class<?> b;
  
  protected static void a(Context paramContext)
  {
    a.b(paramContext);
  }
  
  protected static void a(Context paramContext, Intent paramIntent)
  {
    paramIntent = paramIntent.getExtras();
    Object localObject;
    if (paramIntent != null)
    {
      localObject = paramIntent.getString("KAHUNA_TRACKING_ID");
      if (localObject != null) {
        l.j().b((String)localObject);
      }
    }
    if (!l.j().p())
    {
      localObject = paramContext.getPackageManager().getLaunchIntentForPackage(paramContext.getPackageName());
      ((Intent)localObject).setFlags(872415232);
      paramContext.getApplicationContext().startActivity((Intent)localObject);
    }
    if (ab != null)
    {
      localObject = new Intent(paramContext, ab);
      ((Intent)localObject).setAction("com.kahuna.sdk.push.clicked");
      paramIntent = paramIntent.getBundle("KAHUNA_LANDING_EXTRAS_ID");
      if (paramIntent != null) {
        ((Intent)localObject).putExtra("landing_extras_id", paramIntent);
      }
      paramContext.sendBroadcast((Intent)localObject);
    }
  }
  
  protected static void a(Context paramContext, Bundle paramBundle)
  {
    if (paramBundle == null) {}
    for (;;)
    {
      return;
      x localx = new x(paramContext);
      try
      {
        localx.a(paramBundle.getString("alert"));
        localx.b(paramBundle.getString("k"));
      }
      catch (Exception localException1)
      {
        try
        {
          label37:
          Object localObject;
          if (paramBundle.containsKey("nid"))
          {
            localObject = paramBundle.get("nid");
            if (!(localObject instanceof String)) {
              break label517;
            }
            localx.a(Integer.parseInt((String)localObject));
          }
          for (;;)
          {
            if (paramBundle.containsKey("k")) {
              paramBundle.remove("k");
            }
            if (paramBundle.containsKey("nid")) {
              paramBundle.remove("nid");
            }
            if (paramBundle.containsKey("collapse_key")) {
              paramBundle.remove("collapse_key");
            }
            if (paramBundle.containsKey("from")) {
              paramBundle.remove("from");
            }
            if (l.a) {
              Log.d("Kahuna", "Kahuna Message: " + localx.b());
            }
            if ((localx.b() == null) || (localx.c() == null)) {
              break;
            }
            if (paramBundle.containsKey("k_internal"))
            {
              localObject = paramBundle.getString("k_internal");
              try
              {
                if (!w.a((String)localObject))
                {
                  localObject = new JSONObject((String)localObject);
                  str2 = ((JSONObject)localObject).optString("gid");
                  if (w.a(str2)) {
                    break label597;
                  }
                  if (a.a(paramContext, str2)) {
                    break label576;
                  }
                  if (!l.a) {
                    break;
                  }
                  Log.w("Kahuna", "Received another push with displayId: " + str2 + " within the cooldown period. Ignoring push.");
                  return;
                }
              }
              catch (JSONException localJSONException)
              {
                if (l.a) {
                  Log.e("Kahuna", "Caught JSON Exception trying to parse Kahuna internal payload: " + localJSONException);
                }
              }
              paramBundle.remove("k_internal");
            }
            localx.a(paramBundle);
            if (ab != null)
            {
              Intent localIntent = new Intent(paramContext, ab);
              localIntent.setAction("com.kahuna.sdk.push.received");
              localIntent.putExtra("alert", localx.b());
              if (!w.a(localx.e())) {
                localIntent.putExtra("k_bg_img_url", localx.e());
              }
              if (paramBundle != null) {
                localIntent.putExtra("landing_extras_id", paramBundle);
              }
              paramContext.sendBroadcast(localIntent);
            }
            try
            {
              if ((l.j().q()) && (!l.r())) {
                break label624;
              }
              if (!l.a) {
                break;
              }
              Log.d("Kahuna", "Hiding Kahuna Push notification because user is generating notification separately.");
              return;
            }
            catch (Exception paramContext)
            {
              Log.e("Kahuna", "KahunaSDK wasn't initialized in onAppCreate(), please initialized Kahuna correctly to prevent strange behavior");
              paramContext.printStackTrace();
              return;
            }
            localException1 = localException1;
            if (l.a) {
              Log.d("Kahuna", "Exception reading message from Push Notification Manager: " + localException1);
            }
            localx.a(null);
            localx.b(null);
            break label37;
            label517:
            localx.a(((Integer)localException1).intValue());
          }
        }
        catch (Exception localException2)
        {
          for (;;)
          {
            String str2;
            if (l.a) {
              Log.d("Kahuna", "Exception reading push message notification id: " + localException2);
            }
            localx.a(-1);
            continue;
            label576:
            long l = localException2.optLong("ex_offset", -1L);
            a.a(paramContext, str2, l);
            label597:
            String str1 = localException2.optString("k_bg_img_url");
            if (!w.a(str1)) {
              localx.c(str1);
            }
          }
          label624:
          if (!w.a(localx.e()))
          {
            new a(localx).execute(new String[] { localx.e() });
            return;
          }
          b(localx);
        }
      }
    }
  }
  
  /* Error */
  private void a(Context paramContext, String paramString, long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: invokestatic 273	java/lang/System:currentTimeMillis	()J
    //   5: ldc2_w 274
    //   8: ldiv
    //   9: lstore 5
    //   11: lload_3
    //   12: ldc2_w 248
    //   15: lcmp
    //   16: ifle +78 -> 94
    //   19: lload 5
    //   21: lload_3
    //   22: ladd
    //   23: lstore_3
    //   24: aload_1
    //   25: invokestatic 281	com/kahuna/sdk/s:l	(Landroid/content/Context;)Ljava/util/Map;
    //   28: astore 7
    //   30: aload 7
    //   32: aload_2
    //   33: lload_3
    //   34: invokestatic 287	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   37: invokeinterface 293 3 0
    //   42: pop
    //   43: aload 7
    //   45: aload_1
    //   46: invokestatic 296	com/kahuna/sdk/s:d	(Ljava/util/Map;Landroid/content/Context;)V
    //   49: getstatic 155	com/kahuna/sdk/l:a	Z
    //   52: ifeq +39 -> 91
    //   55: ldc -99
    //   57: new 159	java/lang/StringBuilder
    //   60: dup
    //   61: invokespecial 160	java/lang/StringBuilder:<init>	()V
    //   64: ldc_w 298
    //   67: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: aload_2
    //   71: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: ldc_w 300
    //   77: invokevirtual 166	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: lload_3
    //   81: invokevirtual 303	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   84: invokevirtual 171	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   87: invokestatic 177	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   90: pop
    //   91: aload_0
    //   92: monitorexit
    //   93: return
    //   94: lload 5
    //   96: ldc2_w 304
    //   99: ladd
    //   100: lstore_3
    //   101: goto -77 -> 24
    //   104: astore_1
    //   105: aload_0
    //   106: monitorexit
    //   107: aload_1
    //   108: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	this	y
    //   0	109	1	paramContext	Context
    //   0	109	2	paramString	String
    //   0	109	3	paramLong	long
    //   9	86	5	l	long
    //   28	16	7	localMap	Map
    // Exception table:
    //   from	to	target	type
    //   2	11	104	finally
    //   24	91	104	finally
  }
  
  protected static void a(Class<? extends BroadcastReceiver> paramClass)
  {
    ab = paramClass;
  }
  
  /* Error */
  private boolean a(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: invokestatic 273	java/lang/System:currentTimeMillis	()J
    //   5: ldc2_w 274
    //   8: ldiv
    //   9: lstore_3
    //   10: aload_1
    //   11: invokestatic 281	com/kahuna/sdk/s:l	(Landroid/content/Context;)Ljava/util/Map;
    //   14: astore_1
    //   15: aload_1
    //   16: aload_2
    //   17: invokeinterface 311 2 0
    //   22: ifeq +33 -> 55
    //   25: aload_1
    //   26: aload_2
    //   27: invokeinterface 314 2 0
    //   32: checkcast 283	java/lang/Long
    //   35: invokevirtual 317	java/lang/Long:longValue	()J
    //   38: lstore 5
    //   40: lload 5
    //   42: lload_3
    //   43: lcmp
    //   44: ifle +11 -> 55
    //   47: iconst_0
    //   48: istore 7
    //   50: aload_0
    //   51: monitorexit
    //   52: iload 7
    //   54: ireturn
    //   55: iconst_1
    //   56: istore 7
    //   58: goto -8 -> 50
    //   61: astore_1
    //   62: aload_0
    //   63: monitorexit
    //   64: aload_1
    //   65: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	66	0	this	y
    //   0	66	1	paramContext	Context
    //   0	66	2	paramString	String
    //   9	34	3	l1	long
    //   38	3	5	l2	long
    //   48	9	7	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	40	61	finally
  }
  
  private void b(Context paramContext)
  {
    try
    {
      long l = System.currentTimeMillis() / 1000L;
      Object localObject = s.l(paramContext);
      HashMap localHashMap = new HashMap();
      localObject = ((Map)localObject).entrySet().iterator();
      while (((Iterator)localObject).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
        if (((Long)localEntry.getValue()).longValue() > l) {
          localHashMap.put(localEntry.getKey(), localEntry.getValue());
        }
      }
      s.d(localHashMap, paramContext);
    }
    finally {}
  }
  
  private static void b(x paramx)
  {
    Context localContext = paramx.a();
    Object localObject2 = localContext.getApplicationInfo();
    try
    {
      str = localContext.getString(labelRes);
      i = icon;
      j = icon;
      if (l.j().n() > 0)
      {
        i = l.j().n();
        if (l.j().o() > 0) {
          j = l.j().o();
        }
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        try
        {
          String str;
          if ((!"".equals(str)) && (i != 0)) {
            continue;
          }
          if (l.a) {
            Log.d("Kahuna", "Recieved push, but app has no icon or app name label, NOT showing notification");
          }
          return;
        }
        catch (Exception paramx)
        {
          int i;
          int j;
          NotificationManager localNotificationManager;
          if (!l.a) {
            continue;
          }
          Log.d("Kahuna", "Caught generic exception trying to build push notification:  " + paramx);
          return;
        }
        localException = localException;
        if (l.a) {
          Log.d("Kahuna", "Exception trying to retrieve Application label:  " + localException);
        }
        Object localObject1 = "";
        continue;
        if (paramx.d() != -1)
        {
          k = paramx.d();
          localObject2 = new Intent(localContext, KahunaCoreReceiver.class);
          ((Intent)localObject2).setAction("KAHUNA_PUSH_CLICKED");
          if (!w.a(paramx.c())) {
            ((Intent)localObject2).putExtra("KAHUNA_TRACKING_ID", paramx.c());
          }
          ((Intent)localObject2).putExtra("KAHUNA_NID", k);
          if (paramx.g() != null) {
            ((Intent)localObject2).putExtra("KAHUNA_LANDING_EXTRAS_ID", paramx.g());
          }
          localObject2 = PendingIntent.getBroadcast(localContext, 0, (Intent)localObject2, 134217728);
          localNotificationManager = (NotificationManager)localContext.getSystemService("notification");
          try
          {
            localObject1 = new x.d(localContext).a(j).a((CharSequence)localObject1).b(paramx.b()).c(5).c(paramx.b());
            if ((!c) && (i > 0)) {
              ((x.d)localObject1).a(BitmapFactory.decodeResource(localContext.getResources(), i));
            }
            if ((!w.a(paramx.e())) && (paramx.f() != null))
            {
              ((x.d)localObject1).a(new x.b().a(paramx.f()).a(paramx.b()));
              ((x.d)localObject1).a((PendingIntent)localObject2);
              ((x.d)localObject1).a(true);
              localNotificationManager.notify(k, ((x.d)localObject1).a());
              return;
            }
          }
          catch (Throwable paramx)
          {
            Log.e("Kahuna", "Unable to render Kahuna Push notification: " + paramx.getMessage());
            paramx.printStackTrace();
            return;
          }
          ((x.d)localObject1).a(new x.c().a(paramx.b()));
          continue;
        }
        int k = 1964;
        continue;
      }
    }
  }
  
  private static class a
    extends AsyncTask<String, Void, Bitmap>
  {
    private x a;
    
    public a(x paramx)
    {
      a = paramx;
    }
    
    protected Bitmap a(String... paramVarArgs)
    {
      if ((paramVarArgs == null) || (w.a(paramVarArgs[0])))
      {
        localObject10 = null;
        return (Bitmap)localObject10;
      }
      i = 3;
      localObject9 = null;
      localObject6 = null;
      for (;;)
      {
        localObject10 = localObject6;
        if (i <= 0) {
          break;
        }
        if (l.a) {
          Log.d("Kahuna", "Starting attempt to download backgroud push image. Remaining retries: " + i);
        }
        localObject6 = localObject9;
        Object localObject1 = localObject9;
        localObject10 = localObject9;
        for (;;)
        {
          try
          {
            Object localObject11 = new URL(paramVarArgs[0]);
            localObject6 = localObject9;
            localObject1 = localObject9;
            localObject10 = localObject9;
            Log.d("Kahuna", "Beginning download of background image url: " + ((URL)localObject11).toString());
            localObject6 = localObject9;
            localObject1 = localObject9;
            localObject10 = localObject9;
            localObject9 = ((URL)localObject11).openStream();
            localObject6 = localObject9;
            localObject1 = localObject9;
            localObject10 = localObject9;
            localObject11 = BitmapFactory.decodeStream((InputStream)localObject9);
            localObject6 = localObject11;
            if (localObject9 == null) {
              continue;
            }
          }
          catch (Error localError)
          {
            Object localObject2;
            localObject10 = localObject6;
            Log.e("Kahuna", "Error downloading Push Background Image: " + localError);
            localObject10 = localObject6;
            Log.e("Kahuna", "Will not retry downloading image.");
            if (localObject6 == null) {
              continue;
            }
            try
            {
              ((InputStream)localObject6).close();
              Object localObject3 = localObject6;
              localObject6 = null;
              i = 0;
            }
            catch (IOException localIOException2)
            {
              localIOException2.printStackTrace();
              localObject4 = localObject6;
              localObject6 = null;
              i = 0;
            }
            continue;
          }
          catch (Exception localException)
          {
            Object localObject4;
            localObject10 = localObject4;
            Log.e("Kahuna", "Exception downloading Push Background Image: " + localException);
            if (localObject4 == null) {
              continue;
            }
            try
            {
              ((InputStream)localObject4).close();
              Object localObject7 = null;
            }
            catch (IOException localIOException4)
            {
              localIOException4.printStackTrace();
              localObject8 = null;
            }
            continue;
          }
          finally
          {
            if (localObject10 == null) {
              continue;
            }
            try
            {
              ((InputStream)localObject10).close();
              throw paramVarArgs;
            }
            catch (IOException localIOException3)
            {
              localIOException3.printStackTrace();
              continue;
            }
            Object localObject8 = null;
            continue;
            Object localObject5 = localObject8;
            localObject8 = null;
            i = 0;
            continue;
            localObject5 = localObject9;
            continue;
          }
          try
          {
            ((InputStream)localObject9).close();
            localObject1 = localObject9;
          }
          catch (IOException localIOException1)
          {
            localIOException1.printStackTrace();
            localObject2 = localObject9;
          }
        }
        localObject10 = localObject6;
        if (localObject6 != null) {
          break;
        }
        i -= 1;
        localObject9 = localObject1;
      }
    }
    
    protected void a(Bitmap paramBitmap)
    {
      a.a(paramBitmap);
      y.a(a);
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */