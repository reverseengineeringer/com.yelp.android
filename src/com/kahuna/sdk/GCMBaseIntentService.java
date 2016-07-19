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
  private final r a = new r("[" + getClass().getName() + "]: ");
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
        if (l.a) {
          Log.w("Kahuna", "App does not have WAKE_LOCK permission");
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
      f.e();
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
    //   11: invokestatic 202	com/kahuna/sdk/f:c	()Z
    //   14: ifeq +73 -> 87
    //   17: aload_1
    //   18: invokevirtual 206	android/content/Intent:getExtras	()Landroid/os/Bundle;
    //   21: astore 4
    //   23: aload_0
    //   24: invokestatic 211	com/google/android/gms/gcm/a:a	(Landroid/content/Context;)Lcom/google/android/gms/gcm/a;
    //   27: aload_1
    //   28: invokevirtual 214	com/google/android/gms/gcm/a:a	(Landroid/content/Intent;)Ljava/lang/String;
    //   31: astore 5
    //   33: aload 4
    //   35: invokevirtual 219	android/os/Bundle:isEmpty	()Z
    //   38: ifne +19 -> 57
    //   41: ldc -35
    //   43: aload 5
    //   45: invokevirtual 175	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   48: ifeq +9 -> 57
    //   51: aload_0
    //   52: aload_3
    //   53: aload_1
    //   54: invokevirtual 223	com/kahuna/sdk/GCMBaseIntentService:a	(Landroid/content/Context;Landroid/content/Intent;)V
    //   57: getstatic 18	com/kahuna/sdk/GCMBaseIntentService:c	Ljava/lang/Object;
    //   60: astore_1
    //   61: aload_1
    //   62: monitorenter
    //   63: getstatic 91	com/kahuna/sdk/GCMBaseIntentService:b	Landroid/os/PowerManager$WakeLock;
    //   66: ifnull +400 -> 466
    //   69: getstatic 91	com/kahuna/sdk/GCMBaseIntentService:b	Landroid/os/PowerManager$WakeLock;
    //   72: invokevirtual 226	android/os/PowerManager$WakeLock:isHeld	()Z
    //   75: ifeq +391 -> 466
    //   78: getstatic 91	com/kahuna/sdk/GCMBaseIntentService:b	Landroid/os/PowerManager$WakeLock;
    //   81: invokevirtual 229	android/os/PowerManager$WakeLock:release	()V
    //   84: aload_1
    //   85: monitorexit
    //   86: return
    //   87: aload 4
    //   89: ldc -25
    //   91: invokevirtual 175	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   94: ifeq +70 -> 164
    //   97: aload_3
    //   98: invokestatic 232	com/kahuna/sdk/e:b	(Landroid/content/Context;)V
    //   101: aload_0
    //   102: aload_3
    //   103: aload_1
    //   104: invokespecial 234	com/kahuna/sdk/GCMBaseIntentService:b	(Landroid/content/Context;Landroid/content/Intent;)V
    //   107: goto -50 -> 57
    //   110: astore_1
    //   111: getstatic 127	com/kahuna/sdk/l:a	Z
    //   114: ifeq +15 -> 129
    //   117: ldc -127
    //   119: ldc -20
    //   121: invokestatic 137	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   124: pop
    //   125: aload_1
    //   126: invokevirtual 239	java/lang/Exception:printStackTrace	()V
    //   129: getstatic 18	com/kahuna/sdk/GCMBaseIntentService:c	Ljava/lang/Object;
    //   132: astore_1
    //   133: aload_1
    //   134: monitorenter
    //   135: getstatic 91	com/kahuna/sdk/GCMBaseIntentService:b	Landroid/os/PowerManager$WakeLock;
    //   138: ifnull +352 -> 490
    //   141: getstatic 91	com/kahuna/sdk/GCMBaseIntentService:b	Landroid/os/PowerManager$WakeLock;
    //   144: invokevirtual 226	android/os/PowerManager$WakeLock:isHeld	()Z
    //   147: ifeq +343 -> 490
    //   150: getstatic 91	com/kahuna/sdk/GCMBaseIntentService:b	Landroid/os/PowerManager$WakeLock;
    //   153: invokevirtual 229	android/os/PowerManager$WakeLock:release	()V
    //   156: aload_1
    //   157: monitorexit
    //   158: return
    //   159: astore_3
    //   160: aload_1
    //   161: monitorexit
    //   162: aload_3
    //   163: athrow
    //   164: aload 4
    //   166: ldc -15
    //   168: invokevirtual 175	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   171: ifeq +161 -> 332
    //   174: aload_1
    //   175: ldc -13
    //   177: invokevirtual 145	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   180: astore 4
    //   182: aload 4
    //   184: ifnull +139 -> 323
    //   187: aload 4
    //   189: ldc -11
    //   191: invokevirtual 175	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   194: ifeq +105 -> 299
    //   197: aload_1
    //   198: ldc -9
    //   200: invokevirtual 145	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   203: astore_1
    //   204: aload_1
    //   205: ifnull -148 -> 57
    //   208: aload_1
    //   209: invokestatic 253	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   212: istore_2
    //   213: aload_0
    //   214: getfield 65	com/kahuna/sdk/GCMBaseIntentService:a	Lcom/kahuna/sdk/r;
    //   217: iconst_2
    //   218: ldc -1
    //   220: iconst_1
    //   221: anewarray 47	java/lang/Object
    //   224: dup
    //   225: iconst_0
    //   226: iload_2
    //   227: invokestatic 259	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   230: aastore
    //   231: invokevirtual 72	com/kahuna/sdk/r:a	(ILjava/lang/String;[Ljava/lang/Object;)V
    //   234: aload_0
    //   235: aload_3
    //   236: iload_2
    //   237: invokevirtual 261	com/kahuna/sdk/GCMBaseIntentService:a	(Landroid/content/Context;I)V
    //   240: goto -183 -> 57
    //   243: astore_3
    //   244: aload_0
    //   245: getfield 65	com/kahuna/sdk/GCMBaseIntentService:a	Lcom/kahuna/sdk/r;
    //   248: bipush 6
    //   250: ldc_w 263
    //   253: iconst_1
    //   254: anewarray 47	java/lang/Object
    //   257: dup
    //   258: iconst_0
    //   259: aload_1
    //   260: aastore
    //   261: invokevirtual 72	com/kahuna/sdk/r:a	(ILjava/lang/String;[Ljava/lang/Object;)V
    //   264: goto -207 -> 57
    //   267: astore_3
    //   268: getstatic 18	com/kahuna/sdk/GCMBaseIntentService:c	Ljava/lang/Object;
    //   271: astore_1
    //   272: aload_1
    //   273: monitorenter
    //   274: getstatic 91	com/kahuna/sdk/GCMBaseIntentService:b	Landroid/os/PowerManager$WakeLock;
    //   277: ifnull +232 -> 509
    //   280: getstatic 91	com/kahuna/sdk/GCMBaseIntentService:b	Landroid/os/PowerManager$WakeLock;
    //   283: invokevirtual 226	android/os/PowerManager$WakeLock:isHeld	()Z
    //   286: ifeq +223 -> 509
    //   289: getstatic 91	com/kahuna/sdk/GCMBaseIntentService:b	Landroid/os/PowerManager$WakeLock;
    //   292: invokevirtual 229	android/os/PowerManager$WakeLock:release	()V
    //   295: aload_1
    //   296: monitorexit
    //   297: aload_3
    //   298: athrow
    //   299: aload_0
    //   300: getfield 65	com/kahuna/sdk/GCMBaseIntentService:a	Lcom/kahuna/sdk/r;
    //   303: bipush 6
    //   305: ldc_w 265
    //   308: iconst_1
    //   309: anewarray 47	java/lang/Object
    //   312: dup
    //   313: iconst_0
    //   314: aload 4
    //   316: aastore
    //   317: invokevirtual 72	com/kahuna/sdk/r:a	(ILjava/lang/String;[Ljava/lang/Object;)V
    //   320: goto -263 -> 57
    //   323: aload_0
    //   324: aload_3
    //   325: aload_1
    //   326: invokevirtual 223	com/kahuna/sdk/GCMBaseIntentService:a	(Landroid/content/Context;Landroid/content/Intent;)V
    //   329: goto -272 -> 57
    //   332: aload 4
    //   334: ldc_w 267
    //   337: invokevirtual 175	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   340: ifeq -283 -> 57
    //   343: aload_1
    //   344: invokevirtual 270	android/content/Intent:getPackage	()Ljava/lang/String;
    //   347: astore_1
    //   348: aload_1
    //   349: ifnull +17 -> 366
    //   352: aload_1
    //   353: aload_0
    //   354: invokevirtual 196	com/kahuna/sdk/GCMBaseIntentService:getApplicationContext	()Landroid/content/Context;
    //   357: invokevirtual 273	android/content/Context:getPackageName	()Ljava/lang/String;
    //   360: invokevirtual 175	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   363: ifne +77 -> 440
    //   366: aload_0
    //   367: getfield 65	com/kahuna/sdk/GCMBaseIntentService:a	Lcom/kahuna/sdk/r;
    //   370: bipush 6
    //   372: ldc_w 275
    //   375: iconst_1
    //   376: anewarray 47	java/lang/Object
    //   379: dup
    //   380: iconst_0
    //   381: aload_1
    //   382: aastore
    //   383: invokevirtual 72	com/kahuna/sdk/r:a	(ILjava/lang/String;[Ljava/lang/Object;)V
    //   386: getstatic 18	com/kahuna/sdk/GCMBaseIntentService:c	Ljava/lang/Object;
    //   389: astore_1
    //   390: aload_1
    //   391: monitorenter
    //   392: getstatic 91	com/kahuna/sdk/GCMBaseIntentService:b	Landroid/os/PowerManager$WakeLock;
    //   395: ifnull +26 -> 421
    //   398: getstatic 91	com/kahuna/sdk/GCMBaseIntentService:b	Landroid/os/PowerManager$WakeLock;
    //   401: invokevirtual 226	android/os/PowerManager$WakeLock:isHeld	()Z
    //   404: ifeq +17 -> 421
    //   407: getstatic 91	com/kahuna/sdk/GCMBaseIntentService:b	Landroid/os/PowerManager$WakeLock;
    //   410: invokevirtual 229	android/os/PowerManager$WakeLock:release	()V
    //   413: aload_1
    //   414: monitorexit
    //   415: return
    //   416: astore_3
    //   417: aload_1
    //   418: monitorexit
    //   419: aload_3
    //   420: athrow
    //   421: aload_0
    //   422: getfield 65	com/kahuna/sdk/GCMBaseIntentService:a	Lcom/kahuna/sdk/r;
    //   425: bipush 6
    //   427: ldc_w 277
    //   430: iconst_0
    //   431: anewarray 47	java/lang/Object
    //   434: invokevirtual 72	com/kahuna/sdk/r:a	(ILjava/lang/String;[Ljava/lang/Object;)V
    //   437: goto -24 -> 413
    //   440: aload_3
    //   441: invokestatic 280	com/kahuna/sdk/e:d	(Landroid/content/Context;)Z
    //   444: ifeq +10 -> 454
    //   447: aload_3
    //   448: invokestatic 282	com/kahuna/sdk/e:a	(Landroid/content/Context;)V
    //   451: goto -394 -> 57
    //   454: aload_3
    //   455: aload_0
    //   456: aload_3
    //   457: invokevirtual 284	com/kahuna/sdk/GCMBaseIntentService:a	(Landroid/content/Context;)[Ljava/lang/String;
    //   460: invokestatic 287	com/kahuna/sdk/e:b	(Landroid/content/Context;[Ljava/lang/String;)V
    //   463: goto -406 -> 57
    //   466: aload_0
    //   467: getfield 65	com/kahuna/sdk/GCMBaseIntentService:a	Lcom/kahuna/sdk/r;
    //   470: bipush 6
    //   472: ldc_w 277
    //   475: iconst_0
    //   476: anewarray 47	java/lang/Object
    //   479: invokevirtual 72	com/kahuna/sdk/r:a	(ILjava/lang/String;[Ljava/lang/Object;)V
    //   482: goto -398 -> 84
    //   485: astore_3
    //   486: aload_1
    //   487: monitorexit
    //   488: aload_3
    //   489: athrow
    //   490: aload_0
    //   491: getfield 65	com/kahuna/sdk/GCMBaseIntentService:a	Lcom/kahuna/sdk/r;
    //   494: bipush 6
    //   496: ldc_w 277
    //   499: iconst_0
    //   500: anewarray 47	java/lang/Object
    //   503: invokevirtual 72	com/kahuna/sdk/r:a	(ILjava/lang/String;[Ljava/lang/Object;)V
    //   506: goto -350 -> 156
    //   509: aload_0
    //   510: getfield 65	com/kahuna/sdk/GCMBaseIntentService:a	Lcom/kahuna/sdk/r;
    //   513: bipush 6
    //   515: ldc_w 277
    //   518: iconst_0
    //   519: anewarray 47	java/lang/Object
    //   522: invokevirtual 72	com/kahuna/sdk/r:a	(ILjava/lang/String;[Ljava/lang/Object;)V
    //   525: goto -230 -> 295
    //   528: astore_3
    //   529: aload_1
    //   530: monitorexit
    //   531: aload_3
    //   532: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	533	0	this	GCMBaseIntentService
    //   212	25	2	i	int
    //   4	99	3	localContext1	Context
    //   159	77	3	localContext2	Context
    //   243	1	3	localNumberFormatException	NumberFormatException
    //   267	58	3	localContext3	Context
    //   416	41	3	localContext4	Context
    //   485	4	3	localObject1	Object
    //   528	4	3	localObject2	Object
    //   9	324	4	localObject3	Object
    //   31	13	5	str	String
    // Exception table:
    //   from	to	target	type
    //   0	57	110	java/lang/Exception
    //   87	107	110	java/lang/Exception
    //   164	182	110	java/lang/Exception
    //   187	204	110	java/lang/Exception
    //   208	240	110	java/lang/Exception
    //   244	264	110	java/lang/Exception
    //   299	320	110	java/lang/Exception
    //   323	329	110	java/lang/Exception
    //   332	348	110	java/lang/Exception
    //   352	366	110	java/lang/Exception
    //   366	386	110	java/lang/Exception
    //   440	451	110	java/lang/Exception
    //   454	463	110	java/lang/Exception
    //   135	156	159	finally
    //   156	158	159	finally
    //   160	162	159	finally
    //   490	506	159	finally
    //   208	240	243	java/lang/NumberFormatException
    //   0	57	267	finally
    //   87	107	267	finally
    //   111	129	267	finally
    //   164	182	267	finally
    //   187	204	267	finally
    //   208	240	267	finally
    //   244	264	267	finally
    //   299	320	267	finally
    //   323	329	267	finally
    //   332	348	267	finally
    //   352	366	267	finally
    //   366	386	267	finally
    //   440	451	267	finally
    //   454	463	267	finally
    //   392	413	416	finally
    //   413	415	416	finally
    //   417	419	416	finally
    //   421	437	416	finally
    //   63	84	485	finally
    //   84	86	485	finally
    //   466	482	485	finally
    //   486	488	485	finally
    //   274	295	528	finally
    //   295	297	528	finally
    //   509	525	528	finally
    //   529	531	528	finally
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.GCMBaseIntentService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */