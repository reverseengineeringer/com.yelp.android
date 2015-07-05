package com.facebook.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Looper;
import com.facebook.FacebookException;
import java.lang.reflect.Method;

public class AttributionIdentifiers
{
  private static final String ANDROID_ID_COLUMN_NAME = "androidid";
  private static final String ATTRIBUTION_ID_COLUMN_NAME = "aid";
  private static final Uri ATTRIBUTION_ID_CONTENT_URI = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
  private static final int CONNECTION_RESULT_SUCCESS = 0;
  private static final long IDENTIFIER_REFRESH_INTERVAL_MILLIS = 3600000L;
  private static final String LIMIT_TRACKING_COLUMN_NAME = "limit_tracking";
  private static final String TAG = AttributionIdentifiers.class.getCanonicalName();
  private static AttributionIdentifiers recentlyFetchedIdentifiers;
  private String androidAdvertiserId;
  private String attributionId;
  private long fetchTime;
  private boolean limitTracking;
  
  private static AttributionIdentifiers getAndroidId(Context paramContext)
  {
    AttributionIdentifiers localAttributionIdentifiers = new AttributionIdentifiers();
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
        Utility.logd("android_id", paramContext);
        return localAttributionIdentifiers;
      }
      Object localObject = Utility.getMethodQuietly("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", new Class[] { Context.class });
      if (localObject == null) {
        return localAttributionIdentifiers;
      }
      localObject = Utility.invokeMethodQuietly(null, (Method)localObject, new Object[] { paramContext });
      if ((!(localObject instanceof Integer)) || (((Integer)localObject).intValue() != 0)) {
        break;
      }
      localObject = Utility.getMethodQuietly("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", new Class[] { Context.class });
      if (localObject == null) {
        return localAttributionIdentifiers;
      }
      paramContext = Utility.invokeMethodQuietly(null, (Method)localObject, new Object[] { paramContext });
      if (paramContext == null) {
        return localAttributionIdentifiers;
      }
      localObject = Utility.getMethodQuietly(paramContext.getClass(), "getId", new Class[0]);
      Method localMethod = Utility.getMethodQuietly(paramContext.getClass(), "isLimitAdTrackingEnabled", new Class[0]);
      if ((localObject == null) || (localMethod == null)) {
        return localAttributionIdentifiers;
      }
      androidAdvertiserId = ((String)Utility.invokeMethodQuietly(paramContext, (Method)localObject, new Object[0]));
      limitTracking = ((Boolean)Utility.invokeMethodQuietly(paramContext, localMethod, new Object[0])).booleanValue();
    }
    return localAttributionIdentifiers;
    return localAttributionIdentifiers;
  }
  
  /* Error */
  public static AttributionIdentifiers getAttributionIdentifiers(Context paramContext)
  {
    // Byte code:
    //   0: getstatic 134	com/facebook/internal/AttributionIdentifiers:recentlyFetchedIdentifiers	Lcom/facebook/internal/AttributionIdentifiers;
    //   3: ifnull +24 -> 27
    //   6: invokestatic 140	java/lang/System:currentTimeMillis	()J
    //   9: getstatic 134	com/facebook/internal/AttributionIdentifiers:recentlyFetchedIdentifiers	Lcom/facebook/internal/AttributionIdentifiers;
    //   12: getfield 142	com/facebook/internal/AttributionIdentifiers:fetchTime	J
    //   15: lsub
    //   16: ldc2_w 19
    //   19: lcmp
    //   20: ifge +7 -> 27
    //   23: getstatic 134	com/facebook/internal/AttributionIdentifiers:recentlyFetchedIdentifiers	Lcom/facebook/internal/AttributionIdentifiers;
    //   26: areturn
    //   27: aload_0
    //   28: invokestatic 144	com/facebook/internal/AttributionIdentifiers:getAndroidId	(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;
    //   31: astore 6
    //   33: aload_0
    //   34: invokevirtual 148	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   37: getstatic 51	com/facebook/internal/AttributionIdentifiers:ATTRIBUTION_ID_CONTENT_URI	Landroid/net/Uri;
    //   40: iconst_3
    //   41: anewarray 121	java/lang/String
    //   44: dup
    //   45: iconst_0
    //   46: ldc 11
    //   48: aastore
    //   49: dup
    //   50: iconst_1
    //   51: ldc 8
    //   53: aastore
    //   54: dup
    //   55: iconst_2
    //   56: ldc 23
    //   58: aastore
    //   59: aconst_null
    //   60: aconst_null
    //   61: aconst_null
    //   62: invokevirtual 154	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   65: astore 5
    //   67: aload 5
    //   69: ifnull +20 -> 89
    //   72: aload 5
    //   74: astore_0
    //   75: aload 5
    //   77: invokeinterface 159 1 0
    //   82: istore 4
    //   84: iload 4
    //   86: ifne +18 -> 104
    //   89: aload 5
    //   91: ifnull +10 -> 101
    //   94: aload 5
    //   96: invokeinterface 162 1 0
    //   101: aload 6
    //   103: areturn
    //   104: aload 5
    //   106: astore_0
    //   107: aload 5
    //   109: ldc 11
    //   111: invokeinterface 166 2 0
    //   116: istore_1
    //   117: aload 5
    //   119: astore_0
    //   120: aload 5
    //   122: ldc 8
    //   124: invokeinterface 166 2 0
    //   129: istore_2
    //   130: aload 5
    //   132: astore_0
    //   133: aload 5
    //   135: ldc 23
    //   137: invokeinterface 166 2 0
    //   142: istore_3
    //   143: aload 5
    //   145: astore_0
    //   146: aload 6
    //   148: aload 5
    //   150: iload_1
    //   151: invokeinterface 170 2 0
    //   156: putfield 172	com/facebook/internal/AttributionIdentifiers:attributionId	Ljava/lang/String;
    //   159: iload_2
    //   160: ifle +53 -> 213
    //   163: iload_3
    //   164: ifle +49 -> 213
    //   167: aload 5
    //   169: astore_0
    //   170: aload 6
    //   172: invokevirtual 175	com/facebook/internal/AttributionIdentifiers:getAndroidAdvertiserId	()Ljava/lang/String;
    //   175: ifnonnull +38 -> 213
    //   178: aload 5
    //   180: astore_0
    //   181: aload 6
    //   183: aload 5
    //   185: iload_2
    //   186: invokeinterface 170 2 0
    //   191: putfield 123	com/facebook/internal/AttributionIdentifiers:androidAdvertiserId	Ljava/lang/String;
    //   194: aload 5
    //   196: astore_0
    //   197: aload 6
    //   199: aload 5
    //   201: iload_3
    //   202: invokeinterface 170 2 0
    //   207: invokestatic 179	java/lang/Boolean:parseBoolean	(Ljava/lang/String;)Z
    //   210: putfield 131	com/facebook/internal/AttributionIdentifiers:limitTracking	Z
    //   213: aload 5
    //   215: ifnull +10 -> 225
    //   218: aload 5
    //   220: invokeinterface 162 1 0
    //   225: aload 6
    //   227: invokestatic 140	java/lang/System:currentTimeMillis	()J
    //   230: putfield 142	com/facebook/internal/AttributionIdentifiers:fetchTime	J
    //   233: aload 6
    //   235: putstatic 134	com/facebook/internal/AttributionIdentifiers:recentlyFetchedIdentifiers	Lcom/facebook/internal/AttributionIdentifiers;
    //   238: aload 6
    //   240: areturn
    //   241: astore 6
    //   243: aconst_null
    //   244: astore 5
    //   246: aload 5
    //   248: astore_0
    //   249: getstatic 41	com/facebook/internal/AttributionIdentifiers:TAG	Ljava/lang/String;
    //   252: new 181	java/lang/StringBuilder
    //   255: dup
    //   256: invokespecial 182	java/lang/StringBuilder:<init>	()V
    //   259: ldc -72
    //   261: invokevirtual 188	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   264: aload 6
    //   266: invokevirtual 191	java/lang/Exception:toString	()Ljava/lang/String;
    //   269: invokevirtual 188	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   272: invokevirtual 192	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   275: invokestatic 198	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   278: pop
    //   279: aload 5
    //   281: ifnull +10 -> 291
    //   284: aload 5
    //   286: invokeinterface 162 1 0
    //   291: aconst_null
    //   292: areturn
    //   293: astore 5
    //   295: aconst_null
    //   296: astore_0
    //   297: aload_0
    //   298: ifnull +9 -> 307
    //   301: aload_0
    //   302: invokeinterface 162 1 0
    //   307: aload 5
    //   309: athrow
    //   310: astore 5
    //   312: goto -15 -> 297
    //   315: astore 6
    //   317: goto -71 -> 246
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	320	0	paramContext	Context
    //   116	35	1	i	int
    //   129	57	2	j	int
    //   142	60	3	k	int
    //   82	3	4	bool	boolean
    //   65	220	5	localCursor	android.database.Cursor
    //   293	15	5	localObject1	Object
    //   310	1	5	localObject2	Object
    //   31	208	6	localAttributionIdentifiers	AttributionIdentifiers
    //   241	24	6	localException1	Exception
    //   315	1	6	localException2	Exception
    // Exception table:
    //   from	to	target	type
    //   33	67	241	java/lang/Exception
    //   33	67	293	finally
    //   75	84	310	finally
    //   107	117	310	finally
    //   120	130	310	finally
    //   133	143	310	finally
    //   146	159	310	finally
    //   170	178	310	finally
    //   181	194	310	finally
    //   197	213	310	finally
    //   249	279	310	finally
    //   75	84	315	java/lang/Exception
    //   107	117	315	java/lang/Exception
    //   120	130	315	java/lang/Exception
    //   133	143	315	java/lang/Exception
    //   146	159	315	java/lang/Exception
    //   170	178	315	java/lang/Exception
    //   181	194	315	java/lang/Exception
    //   197	213	315	java/lang/Exception
  }
  
  public String getAndroidAdvertiserId()
  {
    return androidAdvertiserId;
  }
  
  public String getAttributionId()
  {
    return attributionId;
  }
  
  public boolean isTrackingLimited()
  {
    return limitTracking;
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.AttributionIdentifiers
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */