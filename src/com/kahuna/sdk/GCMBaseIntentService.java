package com.kahuna.sdk;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.util.Log;

public abstract class GCMBaseIntentService
  extends IntentService
{
  private static PowerManager.WakeLock b;
  private static final Object c = GCMBaseIntentService.class;
  private static int e = 0;
  private final af a = new af("[" + getClass().getName() + "]: ");
  private final String[] d;
  
  protected GCMBaseIntentService()
  {
    this(a("DynamicSenderIds"), null);
  }
  
  private GCMBaseIntentService(String paramString, String[] paramArrayOfString)
  {
    super(paramString);
    d = paramArrayOfString;
    a.a(2, "Intent service name: %s", new Object[] { paramString });
  }
  
  protected GCMBaseIntentService(String... paramVarArgs)
  {
    this(a(paramVarArgs), paramVarArgs);
  }
  
  private static String a(String paramString)
  {
    paramString = new StringBuilder().append("GCMIntentService-").append(paramString).append("-");
    int i = e + 1;
    e = i;
    return i;
  }
  
  private static String a(String[] paramArrayOfString)
  {
    return a(e.a(paramArrayOfString));
  }
  
  static void a(Context paramContext, Intent paramIntent, String paramString)
  {
    synchronized (c)
    {
      if (b == null) {
        b = ((PowerManager)paramContext.getSystemService("power")).newWakeLock(1, "GCM_LIB");
      }
    }
    try
    {
      b.acquire();
      paramIntent.setClassName(paramContext, paramString);
      paramContext.startService(paramIntent);
      return;
      paramContext = finally;
      throw paramContext;
    }
    catch (SecurityException localSecurityException)
    {
      for (;;)
      {
        if (h.a) {
          Log.w("KahunaAnalytics", "App does not have WAKE_LOCK permission");
        }
      }
    }
  }
  
  private void b(Context paramContext, Intent paramIntent)
  {
    e.a();
    String str1 = paramIntent.getStringExtra("registration_id");
    String str2 = paramIntent.getStringExtra("error");
    paramIntent = paramIntent.getStringExtra("unregistered");
    a.a(3, "handleRegistration: registrationId = %s, error = %s, unregistered = %s", new Object[] { str1, str2, paramIntent });
    if (str1 != null)
    {
      f.b(paramContext);
      e.b(paramContext, str1);
      b(paramContext, str1);
      return;
    }
    if (paramIntent != null)
    {
      f.b(paramContext);
      c(paramContext, e.e(paramContext));
      return;
    }
    if ("SERVICE_NOT_AVAILABLE".equals(str2))
    {
      f.c();
      return;
    }
    a(paramContext, str2);
  }
  
  protected void a(Context paramContext, int paramInt) {}
  
  protected abstract void a(Context paramContext, Intent paramIntent);
  
  protected abstract void a(Context paramContext, String paramString);
  
  protected String[] a(Context paramContext)
  {
    if (d == null) {
      throw new IllegalStateException("sender id not set on constructor");
    }
    return d;
  }
  
  protected abstract void b(Context paramContext, String paramString);
  
  protected abstract void c(Context paramContext, String paramString);
  
  /* Error */
  public final void onHandleIntent(Intent arg1)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 196	com/kahuna/sdk/GCMBaseIntentService:getApplicationContext	()Landroid/content/Context;
    //   4: astore_3
    //   5: aload_1
    //   6: invokevirtual 199	android/content/Intent:getAction	()Ljava/lang/String;
    //   9: astore 4
    //   11: invokestatic 202	com/kahuna/sdk/f:b	()Z
    //   14: ifeq +73 -> 87
    //   17: aload_1
    //   18: invokevirtual 206	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   21: astore 4
    //   23: aload_0
    //   24: invokestatic 212	com/google/android/gms/gcm/GoogleCloudMessaging:getInstance	(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;
    //   27: aload_1
    //   28: invokevirtual 216	com/google/android/gms/gcm/GoogleCloudMessaging:getMessageType	(Landroid/content/Intent;)Ljava/lang/String;
    //   31: astore 5
    //   33: aload 4
    //   35: invokevirtual 221	android/os/Bundle:isEmpty	()Z
    //   38: ifne +19 -> 57
    //   41: ldc -33
    //   43: aload 5
    //   45: invokevirtual 175	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   48: ifeq +9 -> 57
    //   51: aload_0
    //   52: aload_3
    //   53: aload_1
    //   54: invokevirtual 225	com/kahuna/sdk/GCMBaseIntentService:a	(Landroid/content/Context;Landroid/content/Intent;)V
    //   57: getstatic 18	com/kahuna/sdk/GCMBaseIntentService:c	Ljava/lang/Object;
    //   60: astore_1
    //   61: aload_1
    //   62: monitorenter
    //   63: getstatic 91	com/kahuna/sdk/GCMBaseIntentService:b	Landroid/os/PowerManager$WakeLock;
    //   66: ifnull +401 -> 467
    //   69: getstatic 91	com/kahuna/sdk/GCMBaseIntentService:b	Landroid/os/PowerManager$WakeLock;
    //   72: invokevirtual 228	android/os/PowerManager$WakeLock:isHeld	()Z
    //   75: ifeq +392 -> 467
    //   78: getstatic 91	com/kahuna/sdk/GCMBaseIntentService:b	Landroid/os/PowerManager$WakeLock;
    //   81: invokevirtual 231	android/os/PowerManager$WakeLock:release	()V
    //   84: aload_1
    //   85: monitorexit
    //   86: return
    //   87: aload 4
    //   89: ldc -23
    //   91: invokevirtual 175	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   94: ifeq +70 -> 164
    //   97: aload_3
    //   98: invokestatic 234	com/kahuna/sdk/e:b	(Landroid/content/Context;)V
    //   101: aload_0
    //   102: aload_3
    //   103: aload_1
    //   104: invokespecial 236	com/kahuna/sdk/GCMBaseIntentService:b	(Landroid/content/Context;Landroid/content/Intent;)V
    //   107: goto -50 -> 57
    //   110: astore_1
    //   111: getstatic 127	com/kahuna/sdk/h:a	Z
    //   114: ifeq +15 -> 129
    //   117: ldc -127
    //   119: ldc -18
    //   121: invokestatic 137	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   124: pop
    //   125: aload_1
    //   126: invokevirtual 241	java/lang/Exception:printStackTrace	()V
    //   129: getstatic 18	com/kahuna/sdk/GCMBaseIntentService:c	Ljava/lang/Object;
    //   132: astore_1
    //   133: aload_1
    //   134: monitorenter
    //   135: getstatic 91	com/kahuna/sdk/GCMBaseIntentService:b	Landroid/os/PowerManager$WakeLock;
    //   138: ifnull +353 -> 491
    //   141: getstatic 91	com/kahuna/sdk/GCMBaseIntentService:b	Landroid/os/PowerManager$WakeLock;
    //   144: invokevirtual 228	android/os/PowerManager$WakeLock:isHeld	()Z
    //   147: ifeq +344 -> 491
    //   150: getstatic 91	com/kahuna/sdk/GCMBaseIntentService:b	Landroid/os/PowerManager$WakeLock;
    //   153: invokevirtual 231	android/os/PowerManager$WakeLock:release	()V
    //   156: aload_1
    //   157: monitorexit
    //   158: return
    //   159: astore_3
    //   160: aload_1
    //   161: monitorexit
    //   162: aload_3
    //   163: athrow
    //   164: aload 4
    //   166: ldc -13
    //   168: invokevirtual 175	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   171: ifeq +162 -> 333
    //   174: aload_1
    //   175: ldc -11
    //   177: invokevirtual 145	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   180: astore 4
    //   182: aload 4
    //   184: ifnull +140 -> 324
    //   187: aload 4
    //   189: ldc -9
    //   191: invokevirtual 175	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   194: ifeq +106 -> 300
    //   197: aload_1
    //   198: ldc -7
    //   200: invokevirtual 145	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   203: astore_1
    //   204: aload_1
    //   205: ifnull -148 -> 57
    //   208: aload_1
    //   209: invokestatic 255	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   212: istore_2
    //   213: aload_0
    //   214: getfield 65	com/kahuna/sdk/GCMBaseIntentService:a	Lcom/kahuna/sdk/af;
    //   217: iconst_2
    //   218: ldc_w 257
    //   221: iconst_1
    //   222: anewarray 47	java/lang/Object
    //   225: dup
    //   226: iconst_0
    //   227: iload_2
    //   228: invokestatic 261	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   231: aastore
    //   232: invokevirtual 72	com/kahuna/sdk/af:a	(ILjava/lang/String;[Ljava/lang/Object;)V
    //   235: aload_0
    //   236: aload_3
    //   237: iload_2
    //   238: invokevirtual 263	com/kahuna/sdk/GCMBaseIntentService:a	(Landroid/content/Context;I)V
    //   241: goto -184 -> 57
    //   244: astore_3
    //   245: aload_0
    //   246: getfield 65	com/kahuna/sdk/GCMBaseIntentService:a	Lcom/kahuna/sdk/af;
    //   249: bipush 6
    //   251: ldc_w 265
    //   254: iconst_1
    //   255: anewarray 47	java/lang/Object
    //   258: dup
    //   259: iconst_0
    //   260: aload_1
    //   261: aastore
    //   262: invokevirtual 72	com/kahuna/sdk/af:a	(ILjava/lang/String;[Ljava/lang/Object;)V
    //   265: goto -208 -> 57
    //   268: astore_3
    //   269: getstatic 18	com/kahuna/sdk/GCMBaseIntentService:c	Ljava/lang/Object;
    //   272: astore_1
    //   273: aload_1
    //   274: monitorenter
    //   275: getstatic 91	com/kahuna/sdk/GCMBaseIntentService:b	Landroid/os/PowerManager$WakeLock;
    //   278: ifnull +232 -> 510
    //   281: getstatic 91	com/kahuna/sdk/GCMBaseIntentService:b	Landroid/os/PowerManager$WakeLock;
    //   284: invokevirtual 228	android/os/PowerManager$WakeLock:isHeld	()Z
    //   287: ifeq +223 -> 510
    //   290: getstatic 91	com/kahuna/sdk/GCMBaseIntentService:b	Landroid/os/PowerManager$WakeLock;
    //   293: invokevirtual 231	android/os/PowerManager$WakeLock:release	()V
    //   296: aload_1
    //   297: monitorexit
    //   298: aload_3
    //   299: athrow
    //   300: aload_0
    //   301: getfield 65	com/kahuna/sdk/GCMBaseIntentService:a	Lcom/kahuna/sdk/af;
    //   304: bipush 6
    //   306: ldc_w 267
    //   309: iconst_1
    //   310: anewarray 47	java/lang/Object
    //   313: dup
    //   314: iconst_0
    //   315: aload 4
    //   317: aastore
    //   318: invokevirtual 72	com/kahuna/sdk/af:a	(ILjava/lang/String;[Ljava/lang/Object;)V
    //   321: goto -264 -> 57
    //   324: aload_0
    //   325: aload_3
    //   326: aload_1
    //   327: invokevirtual 225	com/kahuna/sdk/GCMBaseIntentService:a	(Landroid/content/Context;Landroid/content/Intent;)V
    //   330: goto -273 -> 57
    //   333: aload 4
    //   335: ldc_w 269
    //   338: invokevirtual 175	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   341: ifeq -284 -> 57
    //   344: aload_1
    //   345: invokevirtual 272	android/content/Intent:getPackage	()Ljava/lang/String;
    //   348: astore_1
    //   349: aload_1
    //   350: ifnull +17 -> 367
    //   353: aload_1
    //   354: aload_0
    //   355: invokevirtual 196	com/kahuna/sdk/GCMBaseIntentService:getApplicationContext	()Landroid/content/Context;
    //   358: invokevirtual 275	android/content/Context:getPackageName	()Ljava/lang/String;
    //   361: invokevirtual 175	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   364: ifne +77 -> 441
    //   367: aload_0
    //   368: getfield 65	com/kahuna/sdk/GCMBaseIntentService:a	Lcom/kahuna/sdk/af;
    //   371: bipush 6
    //   373: ldc_w 277
    //   376: iconst_1
    //   377: anewarray 47	java/lang/Object
    //   380: dup
    //   381: iconst_0
    //   382: aload_1
    //   383: aastore
    //   384: invokevirtual 72	com/kahuna/sdk/af:a	(ILjava/lang/String;[Ljava/lang/Object;)V
    //   387: getstatic 18	com/kahuna/sdk/GCMBaseIntentService:c	Ljava/lang/Object;
    //   390: astore_1
    //   391: aload_1
    //   392: monitorenter
    //   393: getstatic 91	com/kahuna/sdk/GCMBaseIntentService:b	Landroid/os/PowerManager$WakeLock;
    //   396: ifnull +26 -> 422
    //   399: getstatic 91	com/kahuna/sdk/GCMBaseIntentService:b	Landroid/os/PowerManager$WakeLock;
    //   402: invokevirtual 228	android/os/PowerManager$WakeLock:isHeld	()Z
    //   405: ifeq +17 -> 422
    //   408: getstatic 91	com/kahuna/sdk/GCMBaseIntentService:b	Landroid/os/PowerManager$WakeLock;
    //   411: invokevirtual 231	android/os/PowerManager$WakeLock:release	()V
    //   414: aload_1
    //   415: monitorexit
    //   416: return
    //   417: astore_3
    //   418: aload_1
    //   419: monitorexit
    //   420: aload_3
    //   421: athrow
    //   422: aload_0
    //   423: getfield 65	com/kahuna/sdk/GCMBaseIntentService:a	Lcom/kahuna/sdk/af;
    //   426: bipush 6
    //   428: ldc_w 279
    //   431: iconst_0
    //   432: anewarray 47	java/lang/Object
    //   435: invokevirtual 72	com/kahuna/sdk/af:a	(ILjava/lang/String;[Ljava/lang/Object;)V
    //   438: goto -24 -> 414
    //   441: aload_3
    //   442: invokestatic 282	com/kahuna/sdk/e:d	(Landroid/content/Context;)Z
    //   445: ifeq +10 -> 455
    //   448: aload_3
    //   449: invokestatic 284	com/kahuna/sdk/e:a	(Landroid/content/Context;)V
    //   452: goto -395 -> 57
    //   455: aload_3
    //   456: aload_0
    //   457: aload_3
    //   458: invokevirtual 286	com/kahuna/sdk/GCMBaseIntentService:a	(Landroid/content/Context;)[Ljava/lang/String;
    //   461: invokestatic 289	com/kahuna/sdk/e:b	(Landroid/content/Context;[Ljava/lang/String;)V
    //   464: goto -407 -> 57
    //   467: aload_0
    //   468: getfield 65	com/kahuna/sdk/GCMBaseIntentService:a	Lcom/kahuna/sdk/af;
    //   471: bipush 6
    //   473: ldc_w 279
    //   476: iconst_0
    //   477: anewarray 47	java/lang/Object
    //   480: invokevirtual 72	com/kahuna/sdk/af:a	(ILjava/lang/String;[Ljava/lang/Object;)V
    //   483: goto -399 -> 84
    //   486: astore_3
    //   487: aload_1
    //   488: monitorexit
    //   489: aload_3
    //   490: athrow
    //   491: aload_0
    //   492: getfield 65	com/kahuna/sdk/GCMBaseIntentService:a	Lcom/kahuna/sdk/af;
    //   495: bipush 6
    //   497: ldc_w 279
    //   500: iconst_0
    //   501: anewarray 47	java/lang/Object
    //   504: invokevirtual 72	com/kahuna/sdk/af:a	(ILjava/lang/String;[Ljava/lang/Object;)V
    //   507: goto -351 -> 156
    //   510: aload_0
    //   511: getfield 65	com/kahuna/sdk/GCMBaseIntentService:a	Lcom/kahuna/sdk/af;
    //   514: bipush 6
    //   516: ldc_w 279
    //   519: iconst_0
    //   520: anewarray 47	java/lang/Object
    //   523: invokevirtual 72	com/kahuna/sdk/af:a	(ILjava/lang/String;[Ljava/lang/Object;)V
    //   526: goto -230 -> 296
    //   529: astore_3
    //   530: aload_1
    //   531: monitorexit
    //   532: aload_3
    //   533: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	534	0	this	GCMBaseIntentService
    //   212	26	2	i	int
    //   4	99	3	localContext1	Context
    //   159	78	3	localContext2	Context
    //   244	1	3	localNumberFormatException	NumberFormatException
    //   268	58	3	localContext3	Context
    //   417	41	3	localContext4	Context
    //   486	4	3	localObject1	Object
    //   529	4	3	localObject2	Object
    //   9	325	4	localObject3	Object
    //   31	13	5	str	String
    // Exception table:
    //   from	to	target	type
    //   0	57	110	java/lang/Exception
    //   87	107	110	java/lang/Exception
    //   164	182	110	java/lang/Exception
    //   187	204	110	java/lang/Exception
    //   208	241	110	java/lang/Exception
    //   245	265	110	java/lang/Exception
    //   300	321	110	java/lang/Exception
    //   324	330	110	java/lang/Exception
    //   333	349	110	java/lang/Exception
    //   353	367	110	java/lang/Exception
    //   367	387	110	java/lang/Exception
    //   441	452	110	java/lang/Exception
    //   455	464	110	java/lang/Exception
    //   135	156	159	finally
    //   156	158	159	finally
    //   160	162	159	finally
    //   491	507	159	finally
    //   208	241	244	java/lang/NumberFormatException
    //   0	57	268	finally
    //   87	107	268	finally
    //   111	129	268	finally
    //   164	182	268	finally
    //   187	204	268	finally
    //   208	241	268	finally
    //   245	265	268	finally
    //   300	321	268	finally
    //   324	330	268	finally
    //   333	349	268	finally
    //   353	367	268	finally
    //   367	387	268	finally
    //   441	452	268	finally
    //   455	464	268	finally
    //   393	414	417	finally
    //   414	416	417	finally
    //   418	420	417	finally
    //   422	438	417	finally
    //   63	84	486	finally
    //   84	86	486	finally
    //   467	483	486	finally
    //   487	489	486	finally
    //   275	296	529	finally
    //   296	298	529	finally
    //   510	526	529	finally
    //   530	532	529	finally
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.GCMBaseIntentService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */