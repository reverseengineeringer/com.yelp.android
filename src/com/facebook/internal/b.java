package com.facebook.internal;

import android.content.Context;
import android.os.Looper;
import com.facebook.FacebookException;
import java.lang.reflect.Method;

public class b
{
  private static final String a = b.class.getCanonicalName();
  private static b f;
  private String b;
  private String c;
  private boolean d;
  private long e;
  
  /* Error */
  public static b a(Context paramContext)
  {
    // Byte code:
    //   0: getstatic 33	com/facebook/internal/b:f	Lcom/facebook/internal/b;
    //   3: ifnull +24 -> 27
    //   6: invokestatic 39	java/lang/System:currentTimeMillis	()J
    //   9: getstatic 33	com/facebook/internal/b:f	Lcom/facebook/internal/b;
    //   12: getfield 41	com/facebook/internal/b:e	J
    //   15: lsub
    //   16: ldc2_w 42
    //   19: lcmp
    //   20: ifge +7 -> 27
    //   23: getstatic 33	com/facebook/internal/b:f	Lcom/facebook/internal/b;
    //   26: areturn
    //   27: aload_0
    //   28: invokestatic 45	com/facebook/internal/b:b	(Landroid/content/Context;)Lcom/facebook/internal/b;
    //   31: astore 6
    //   33: aload_0
    //   34: invokevirtual 51	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   37: ldc 53
    //   39: iconst_0
    //   40: invokevirtual 59	android/content/pm/PackageManager:resolveContentProvider	(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    //   43: ifnull +30 -> 73
    //   46: ldc 61
    //   48: invokestatic 67	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   51: astore 5
    //   53: aload 5
    //   55: ifnonnull +41 -> 96
    //   58: iconst_0
    //   59: ifeq +11 -> 70
    //   62: new 69	java/lang/NullPointerException
    //   65: dup
    //   66: invokespecial 70	java/lang/NullPointerException:<init>	()V
    //   69: athrow
    //   70: aload 6
    //   72: areturn
    //   73: aload_0
    //   74: invokevirtual 51	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   77: ldc 72
    //   79: iconst_0
    //   80: invokevirtual 59	android/content/pm/PackageManager:resolveContentProvider	(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    //   83: ifnull +299 -> 382
    //   86: ldc 74
    //   88: invokestatic 67	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   91: astore 5
    //   93: goto -40 -> 53
    //   96: aload_0
    //   97: invokevirtual 78	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   100: aload 5
    //   102: iconst_3
    //   103: anewarray 80	java/lang/String
    //   106: dup
    //   107: iconst_0
    //   108: ldc 82
    //   110: aastore
    //   111: dup
    //   112: iconst_1
    //   113: ldc 84
    //   115: aastore
    //   116: dup
    //   117: iconst_2
    //   118: ldc 86
    //   120: aastore
    //   121: aconst_null
    //   122: aconst_null
    //   123: aconst_null
    //   124: invokevirtual 92	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   127: astore 5
    //   129: aload 5
    //   131: ifnull +20 -> 151
    //   134: aload 5
    //   136: astore_0
    //   137: aload 5
    //   139: invokeinterface 98 1 0
    //   144: istore 4
    //   146: iload 4
    //   148: ifne +18 -> 166
    //   151: aload 5
    //   153: ifnull +10 -> 163
    //   156: aload 5
    //   158: invokeinterface 101 1 0
    //   163: aload 6
    //   165: areturn
    //   166: aload 5
    //   168: astore_0
    //   169: aload 5
    //   171: ldc 82
    //   173: invokeinterface 105 2 0
    //   178: istore_3
    //   179: aload 5
    //   181: astore_0
    //   182: aload 5
    //   184: ldc 84
    //   186: invokeinterface 105 2 0
    //   191: istore_1
    //   192: aload 5
    //   194: astore_0
    //   195: aload 5
    //   197: ldc 86
    //   199: invokeinterface 105 2 0
    //   204: istore_2
    //   205: aload 5
    //   207: astore_0
    //   208: aload 6
    //   210: aload 5
    //   212: iload_3
    //   213: invokeinterface 109 2 0
    //   218: putfield 111	com/facebook/internal/b:b	Ljava/lang/String;
    //   221: iload_1
    //   222: ifle +53 -> 275
    //   225: iload_2
    //   226: ifle +49 -> 275
    //   229: aload 5
    //   231: astore_0
    //   232: aload 6
    //   234: invokevirtual 113	com/facebook/internal/b:b	()Ljava/lang/String;
    //   237: ifnonnull +38 -> 275
    //   240: aload 5
    //   242: astore_0
    //   243: aload 6
    //   245: aload 5
    //   247: iload_1
    //   248: invokeinterface 109 2 0
    //   253: putfield 115	com/facebook/internal/b:c	Ljava/lang/String;
    //   256: aload 5
    //   258: astore_0
    //   259: aload 6
    //   261: aload 5
    //   263: iload_2
    //   264: invokeinterface 109 2 0
    //   269: invokestatic 121	java/lang/Boolean:parseBoolean	(Ljava/lang/String;)Z
    //   272: putfield 123	com/facebook/internal/b:d	Z
    //   275: aload 5
    //   277: ifnull +10 -> 287
    //   280: aload 5
    //   282: invokeinterface 101 1 0
    //   287: aload 6
    //   289: invokestatic 39	java/lang/System:currentTimeMillis	()J
    //   292: putfield 41	com/facebook/internal/b:e	J
    //   295: aload 6
    //   297: putstatic 33	com/facebook/internal/b:f	Lcom/facebook/internal/b;
    //   300: aload 6
    //   302: areturn
    //   303: astore 6
    //   305: aconst_null
    //   306: astore 5
    //   308: aload 5
    //   310: astore_0
    //   311: getstatic 24	com/facebook/internal/b:a	Ljava/lang/String;
    //   314: new 125	java/lang/StringBuilder
    //   317: dup
    //   318: invokespecial 126	java/lang/StringBuilder:<init>	()V
    //   321: ldc -128
    //   323: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   326: aload 6
    //   328: invokevirtual 135	java/lang/Exception:toString	()Ljava/lang/String;
    //   331: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   334: invokevirtual 136	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   337: invokestatic 141	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   340: pop
    //   341: aload 5
    //   343: ifnull +10 -> 353
    //   346: aload 5
    //   348: invokeinterface 101 1 0
    //   353: aconst_null
    //   354: areturn
    //   355: astore 5
    //   357: aconst_null
    //   358: astore_0
    //   359: aload_0
    //   360: ifnull +9 -> 369
    //   363: aload_0
    //   364: invokeinterface 101 1 0
    //   369: aload 5
    //   371: athrow
    //   372: astore 5
    //   374: goto -15 -> 359
    //   377: astore 6
    //   379: goto -71 -> 308
    //   382: aconst_null
    //   383: astore 5
    //   385: goto -332 -> 53
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	388	0	paramContext	Context
    //   191	57	1	i	int
    //   204	60	2	j	int
    //   178	35	3	k	int
    //   144	3	4	bool	boolean
    //   51	296	5	localObject1	Object
    //   355	15	5	localObject2	Object
    //   372	1	5	localObject3	Object
    //   383	1	5	localObject4	Object
    //   31	270	6	localb	b
    //   303	24	6	localException1	Exception
    //   377	1	6	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   33	53	303	java/lang/Exception
    //   73	93	303	java/lang/Exception
    //   96	129	303	java/lang/Exception
    //   33	53	355	finally
    //   73	93	355	finally
    //   96	129	355	finally
    //   137	146	372	finally
    //   169	179	372	finally
    //   182	192	372	finally
    //   195	205	372	finally
    //   208	221	372	finally
    //   232	240	372	finally
    //   243	256	372	finally
    //   259	275	372	finally
    //   311	341	372	finally
    //   137	146	377	java/lang/Exception
    //   169	179	377	java/lang/Exception
    //   182	192	377	java/lang/Exception
    //   195	205	377	java/lang/Exception
    //   208	221	377	java/lang/Exception
    //   232	240	377	java/lang/Exception
    //   243	256	377	java/lang/Exception
    //   259	275	377	java/lang/Exception
  }
  
  private static b b(Context paramContext)
  {
    b localb = new b();
    for (;;)
    {
      try
      {
        if (Looper.myLooper() == Looper.getMainLooper()) {
          throw new FacebookException("getAndroidId cannot be called on the main thread.");
        }
      }
      catch (Exception paramContext)
      {
        u.a("android_id", paramContext);
        return localb;
      }
      Object localObject = u.a("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", new Class[] { Context.class });
      if (localObject == null) {
        return localb;
      }
      localObject = u.a(null, (Method)localObject, new Object[] { paramContext });
      if ((!(localObject instanceof Integer)) || (((Integer)localObject).intValue() != 0)) {
        break;
      }
      localObject = u.a("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", new Class[] { Context.class });
      if (localObject == null) {
        return localb;
      }
      paramContext = u.a(null, (Method)localObject, new Object[] { paramContext });
      if (paramContext == null) {
        return localb;
      }
      localObject = u.a(paramContext.getClass(), "getId", new Class[0]);
      Method localMethod = u.a(paramContext.getClass(), "isLimitAdTrackingEnabled", new Class[0]);
      if ((localObject == null) || (localMethod == null)) {
        return localb;
      }
      c = ((String)u.a(paramContext, (Method)localObject, new Object[0]));
      d = ((Boolean)u.a(paramContext, localMethod, new Object[0])).booleanValue();
    }
    return localb;
    return localb;
  }
  
  public String a()
  {
    return b;
  }
  
  public String b()
  {
    return c;
  }
  
  public boolean c()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */