package com.kahuna.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public class ak
{
  private static ak a = new ak();
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
        h.b((String)localObject);
      }
    }
    if (!h.k())
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
    Object localObject1 = null;
    if (paramBundle == null) {}
    for (;;)
    {
      return;
      try
      {
        str1 = paramBundle.getString("alert");
        localObject2 = paramBundle.getString("k");
        localObject1 = localObject2;
      }
      catch (Exception localException1)
      {
        try
        {
          String str1;
          Object localObject2;
          label28:
          if (paramBundle.containsKey("nid"))
          {
            localObject2 = paramBundle.get("nid");
            if ((localObject2 instanceof String)) {
              i = Integer.parseInt((String)localObject2);
            }
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
            if (h.a) {
              Log.d("KahunaAnalytics", "Kahuna Message: " + str1);
            }
            if ((str1 == null) || (localObject1 == null)) {
              break;
            }
            if (paramBundle.containsKey("k_internal"))
            {
              localObject2 = paramBundle.getString("k_internal");
              try
              {
                if (!aj.a((String)localObject2))
                {
                  localObject2 = new JSONObject((String)localObject2);
                  str3 = ((JSONObject)localObject2).optString("gid");
                  if (!aj.a(str3))
                  {
                    if (a.a(paramContext, str3)) {
                      break label492;
                    }
                    if (!h.a) {
                      break;
                    }
                    Log.w("KahunaAnalytics", "Received another push with displayId: " + str3 + " within the cooldown period. Ignoring push.");
                    return;
                  }
                }
              }
              catch (JSONException localJSONException)
              {
                if (h.a) {
                  Log.e("KahunaAnalytics", "Caught JSON Exception trying to parse Kahuna internal payload: " + localJSONException);
                }
              }
              paramBundle.remove("k_internal");
            }
            Intent localIntent;
            if (ab != null)
            {
              localIntent = new Intent(paramContext, ab);
              localIntent.setAction("com.kahuna.sdk.push.received");
              localIntent.putExtra("alert", str1);
              if (paramBundle != null) {
                localIntent.putExtra("landing_extras_id", paramBundle);
              }
              paramContext.sendBroadcast(localIntent);
            }
            if ((h.l()) && (!h.n())) {
              break label516;
            }
            if (!h.a) {
              break;
            }
            Log.d("KahunaAnalytics", "Hiding Kahuna Push notification because user is generating notification separately.");
            return;
            localException1 = localException1;
            if (h.a) {
              Log.d("KahunaAnalytics", "Exception reading message from Push Notification Manager: " + localException1);
            }
            str2 = null;
            break label28;
            i = ((Integer)localIntent).intValue();
            continue;
            i = -1;
          }
        }
        catch (Exception localException2)
        {
          int i;
          String str2;
          for (;;)
          {
            String str3;
            if (h.a) {
              Log.d("KahunaAnalytics", "Exception reading push message notification id: " + localException2);
            }
            i = -1;
            continue;
            label492:
            long l = localException2.optLong("ex_offset", -1L);
            a.a(paramContext, str3, l);
          }
          label516:
          a(paramContext, str2, (String)localObject1, i, paramBundle);
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
    //   2: invokestatic 229	java/lang/System:currentTimeMillis	()J
    //   5: ldc2_w 230
    //   8: ldiv
    //   9: lstore 5
    //   11: lload_3
    //   12: ldc2_w 212
    //   15: lcmp
    //   16: ifle +77 -> 93
    //   19: lload 5
    //   21: lload_3
    //   22: ladd
    //   23: lstore_3
    //   24: aload_1
    //   25: invokestatic 236	com/kahuna/sdk/ag:k	(Landroid/content/Context;)Ljava/util/Map;
    //   28: astore 7
    //   30: aload 7
    //   32: aload_2
    //   33: lload_3
    //   34: invokestatic 242	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   37: invokeinterface 248 3 0
    //   42: pop
    //   43: aload 7
    //   45: aload_1
    //   46: invokestatic 252	com/kahuna/sdk/ag:c	(Ljava/util/Map;Landroid/content/Context;)V
    //   49: getstatic 135	com/kahuna/sdk/h:a	Z
    //   52: ifeq +38 -> 90
    //   55: ldc -119
    //   57: new 139	java/lang/StringBuilder
    //   60: dup
    //   61: invokespecial 140	java/lang/StringBuilder:<init>	()V
    //   64: ldc -2
    //   66: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: aload_2
    //   70: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: ldc_w 256
    //   76: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   79: lload_3
    //   80: invokevirtual 259	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   83: invokevirtual 149	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   86: invokestatic 155	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   89: pop
    //   90: aload_0
    //   91: monitorexit
    //   92: return
    //   93: lload 5
    //   95: ldc2_w 260
    //   98: ladd
    //   99: lstore_3
    //   100: goto -76 -> 24
    //   103: astore_1
    //   104: aload_0
    //   105: monitorexit
    //   106: aload_1
    //   107: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	108	0	this	ak
    //   0	108	1	paramContext	Context
    //   0	108	2	paramString	String
    //   0	108	3	paramLong	long
    //   9	85	5	l	long
    //   28	16	7	localMap	Map
    // Exception table:
    //   from	to	target	type
    //   2	11	103	finally
    //   24	90	103	finally
  }
  
  /* Error */
  private static void a(Context paramContext, String paramString1, String paramString2, int paramInt, Bundle paramBundle)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 6
    //   3: aload_0
    //   4: invokevirtual 267	android/content/Context:getApplicationInfo	()Landroid/content/pm/ApplicationInfo;
    //   7: astore 10
    //   9: aload_0
    //   10: aload 10
    //   12: getfield 273	android/content/pm/ApplicationInfo:labelRes	I
    //   15: invokevirtual 276	android/content/Context:getString	(I)Ljava/lang/String;
    //   18: astore 9
    //   20: aload 10
    //   22: getfield 279	android/content/pm/ApplicationInfo:icon	I
    //   25: istore 5
    //   27: invokestatic 282	com/kahuna/sdk/h:j	()I
    //   30: ifle +368 -> 398
    //   33: invokestatic 282	com/kahuna/sdk/h:j	()I
    //   36: istore 5
    //   38: ldc_w 284
    //   41: aload 9
    //   43: invokevirtual 288	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   46: ifne +8 -> 54
    //   49: iload 5
    //   51: ifne +62 -> 113
    //   54: getstatic 135	com/kahuna/sdk/h:a	Z
    //   57: ifeq +12 -> 69
    //   60: ldc -119
    //   62: ldc_w 290
    //   65: invokestatic 155	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   68: pop
    //   69: return
    //   70: astore 9
    //   72: getstatic 135	com/kahuna/sdk/h:a	Z
    //   75: ifeq +30 -> 105
    //   78: ldc -119
    //   80: new 139	java/lang/StringBuilder
    //   83: dup
    //   84: invokespecial 140	java/lang/StringBuilder:<init>	()V
    //   87: ldc_w 292
    //   90: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: aload 9
    //   95: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   98: invokevirtual 149	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   101: invokestatic 155	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   104: pop
    //   105: ldc_w 284
    //   108: astore 9
    //   110: goto -90 -> 20
    //   113: iload_3
    //   114: iconst_m1
    //   115: if_icmpeq +276 -> 391
    //   118: invokestatic 229	java/lang/System:currentTimeMillis	()J
    //   121: lstore 7
    //   123: new 24	android/content/Intent
    //   126: dup
    //   127: aload_0
    //   128: ldc_w 294
    //   131: invokespecial 79	android/content/Intent:<init>	(Landroid/content/Context;Ljava/lang/Class;)V
    //   134: astore 10
    //   136: aload 10
    //   138: ldc_w 296
    //   141: invokevirtual 84	android/content/Intent:setAction	(Ljava/lang/String;)Landroid/content/Intent;
    //   144: pop
    //   145: aload_2
    //   146: ifnull +12 -> 158
    //   149: aload 10
    //   151: ldc 30
    //   153: aload_2
    //   154: invokevirtual 193	android/content/Intent:putExtra	(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    //   157: pop
    //   158: aload 10
    //   160: ldc_w 298
    //   163: iload_3
    //   164: invokevirtual 301	android/content/Intent:putExtra	(Ljava/lang/String;I)Landroid/content/Intent;
    //   167: pop
    //   168: aload 4
    //   170: ifnull +13 -> 183
    //   173: aload 10
    //   175: ldc 86
    //   177: aload 4
    //   179: invokevirtual 96	android/content/Intent:putExtra	(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    //   182: pop
    //   183: aload_0
    //   184: iconst_0
    //   185: aload 10
    //   187: ldc_w 302
    //   190: invokestatic 308	android/app/PendingIntent:getBroadcast	(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    //   193: astore_2
    //   194: aload_0
    //   195: ldc_w 310
    //   198: invokevirtual 313	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   201: checkcast 315	android/app/NotificationManager
    //   204: astore 4
    //   206: new 317	android/support/v4/app/NotificationCompat$Builder
    //   209: dup
    //   210: aload_0
    //   211: invokespecial 319	android/support/v4/app/NotificationCompat$Builder:<init>	(Landroid/content/Context;)V
    //   214: iload 5
    //   216: invokevirtual 323	android/support/v4/app/NotificationCompat$Builder:setSmallIcon	(I)Landroid/support/v4/app/NotificationCompat$Builder;
    //   219: aload 9
    //   221: invokevirtual 327	android/support/v4/app/NotificationCompat$Builder:setContentTitle	(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    //   224: aload_1
    //   225: invokevirtual 330	android/support/v4/app/NotificationCompat$Builder:setContentText	(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    //   228: iconst_5
    //   229: invokevirtual 333	android/support/v4/app/NotificationCompat$Builder:setDefaults	(I)Landroid/support/v4/app/NotificationCompat$Builder;
    //   232: aload_1
    //   233: invokevirtual 336	android/support/v4/app/NotificationCompat$Builder:setTicker	(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;
    //   236: new 338	android/support/v4/app/NotificationCompat$BigTextStyle
    //   239: dup
    //   240: invokespecial 339	android/support/v4/app/NotificationCompat$BigTextStyle:<init>	()V
    //   243: aload_1
    //   244: invokevirtual 343	android/support/v4/app/NotificationCompat$BigTextStyle:bigText	(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    //   247: invokevirtual 347	android/support/v4/app/NotificationCompat$Builder:setStyle	(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;
    //   250: astore 10
    //   252: aload 10
    //   254: aload_2
    //   255: invokevirtual 351	android/support/v4/app/NotificationCompat$Builder:setContentIntent	(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    //   258: pop
    //   259: aload 10
    //   261: iconst_1
    //   262: invokevirtual 355	android/support/v4/app/NotificationCompat$Builder:setAutoCancel	(Z)Landroid/support/v4/app/NotificationCompat$Builder;
    //   265: pop
    //   266: aload 4
    //   268: iload_3
    //   269: aload 10
    //   271: invokevirtual 359	android/support/v4/app/NotificationCompat$Builder:build	()Landroid/app/Notification;
    //   274: invokevirtual 363	android/app/NotificationManager:notify	(ILandroid/app/Notification;)V
    //   277: iload 6
    //   279: ifne -210 -> 69
    //   282: new 365	android/app/Notification
    //   285: dup
    //   286: iload 5
    //   288: aload_1
    //   289: lload 7
    //   291: invokespecial 368	android/app/Notification:<init>	(ILjava/lang/CharSequence;J)V
    //   294: astore 10
    //   296: aload 10
    //   298: aload 10
    //   300: getfield 371	android/app/Notification:defaults	I
    //   303: iconst_5
    //   304: ior
    //   305: putfield 371	android/app/Notification:defaults	I
    //   308: aload 10
    //   310: aload_0
    //   311: aload 9
    //   313: aload_1
    //   314: aload_2
    //   315: invokevirtual 375	android/app/Notification:setLatestEventInfo	(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    //   318: aload 10
    //   320: aload 10
    //   322: getfield 378	android/app/Notification:flags	I
    //   325: bipush 16
    //   327: ior
    //   328: putfield 378	android/app/Notification:flags	I
    //   331: aload 4
    //   333: iload_3
    //   334: aload 10
    //   336: invokevirtual 363	android/app/NotificationManager:notify	(ILandroid/app/Notification;)V
    //   339: return
    //   340: astore_0
    //   341: getstatic 135	com/kahuna/sdk/h:a	Z
    //   344: ifeq -275 -> 69
    //   347: ldc -119
    //   349: new 139	java/lang/StringBuilder
    //   352: dup
    //   353: invokespecial 140	java/lang/StringBuilder:<init>	()V
    //   356: ldc_w 380
    //   359: invokevirtual 146	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   362: aload_0
    //   363: invokevirtual 185	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   366: invokevirtual 149	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   369: invokestatic 155	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   372: pop
    //   373: return
    //   374: astore 10
    //   376: ldc -119
    //   378: ldc_w 382
    //   381: invokestatic 180	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   384: pop
    //   385: iconst_0
    //   386: istore 6
    //   388: goto -111 -> 277
    //   391: sipush 1964
    //   394: istore_3
    //   395: goto -277 -> 118
    //   398: goto -360 -> 38
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	401	0	paramContext	Context
    //   0	401	1	paramString1	String
    //   0	401	2	paramString2	String
    //   0	401	3	paramInt	int
    //   0	401	4	paramBundle	Bundle
    //   25	262	5	i	int
    //   1	386	6	j	int
    //   121	169	7	l	long
    //   18	24	9	str1	String
    //   70	24	9	localException	Exception
    //   108	204	9	str2	String
    //   7	328	10	localObject	Object
    //   374	1	10	localThrowable	Throwable
    // Exception table:
    //   from	to	target	type
    //   9	20	70	java/lang/Exception
    //   38	49	340	java/lang/Exception
    //   54	69	340	java/lang/Exception
    //   118	145	340	java/lang/Exception
    //   149	158	340	java/lang/Exception
    //   158	168	340	java/lang/Exception
    //   173	183	340	java/lang/Exception
    //   183	206	340	java/lang/Exception
    //   206	277	340	java/lang/Exception
    //   282	339	340	java/lang/Exception
    //   376	385	340	java/lang/Exception
    //   206	277	374	java/lang/Throwable
  }
  
  protected static void a(Class<?> paramClass)
  {
    ab = paramClass;
  }
  
  /* Error */
  private boolean a(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: invokestatic 229	java/lang/System:currentTimeMillis	()J
    //   5: ldc2_w 230
    //   8: ldiv
    //   9: lstore_3
    //   10: aload_1
    //   11: invokestatic 236	com/kahuna/sdk/ag:k	(Landroid/content/Context;)Ljava/util/Map;
    //   14: astore_1
    //   15: aload_1
    //   16: aload_2
    //   17: invokeinterface 387 2 0
    //   22: ifeq +33 -> 55
    //   25: aload_1
    //   26: aload_2
    //   27: invokeinterface 390 2 0
    //   32: checkcast 238	java/lang/Long
    //   35: invokevirtual 393	java/lang/Long:longValue	()J
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
    //   0	66	0	this	ak
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
      Object localObject = ag.k(paramContext);
      HashMap localHashMap = new HashMap();
      localObject = ((Map)localObject).entrySet().iterator();
      while (((Iterator)localObject).hasNext())
      {
        Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
        if (((Long)localEntry.getValue()).longValue() > l) {
          localHashMap.put(localEntry.getKey(), localEntry.getValue());
        }
      }
      ag.c(localHashMap, paramContext);
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.ak
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */