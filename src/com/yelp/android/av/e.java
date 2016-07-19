package com.yelp.android.av;

import io.fabric.sdk.android.h;
import io.fabric.sdk.android.services.common.a;
import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import io.fabric.sdk.android.services.network.c;
import java.util.HashMap;
import java.util.Map;

class e
  extends a
{
  private final g b;
  
  public e(h paramh, String paramString1, String paramString2, c paramc, g paramg)
  {
    super(paramh, paramString1, paramString2, paramc, HttpMethod.GET);
    b = paramg;
  }
  
  private HttpRequest a(HttpRequest paramHttpRequest, String paramString1, String paramString2)
  {
    return paramHttpRequest.a("Accept", "application/json").a("User-Agent", "Crashlytics Android SDK/" + a.a()).a("X-CRASHLYTICS-DEVELOPER-TOKEN", "470fa2b4ae81cd56ecbcda9735803434cec591fa").a("X-CRASHLYTICS-API-CLIENT-TYPE", "android").a("X-CRASHLYTICS-API-CLIENT-VERSION", a.a()).a("X-CRASHLYTICS-API-KEY", paramString1).a("X-CRASHLYTICS-D", paramString2);
  }
  
  private Map<String, String> a(d paramd)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("build_version", a);
    localHashMap.put("display_version", b);
    localHashMap.put("instance", c);
    localHashMap.put("source", "3");
    return localHashMap;
  }
  
  /* Error */
  public f a(String paramString1, String paramString2, d paramd)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: aload_0
    //   4: aload_3
    //   5: invokespecial 106	com/yelp/android/av/e:a	(Lcom/yelp/android/av/d;)Ljava/util/Map;
    //   8: astore 7
    //   10: aload_0
    //   11: aload 7
    //   13: invokevirtual 109	com/yelp/android/av/e:a	(Ljava/util/Map;)Lio/fabric/sdk/android/services/network/HttpRequest;
    //   16: astore 5
    //   18: aload 5
    //   20: astore_3
    //   21: aload 5
    //   23: astore 4
    //   25: aload_0
    //   26: aload 5
    //   28: aload_1
    //   29: aload_2
    //   30: invokespecial 111	com/yelp/android/av/e:a	(Lio/fabric/sdk/android/services/network/HttpRequest;Ljava/lang/String;Ljava/lang/String;)Lio/fabric/sdk/android/services/network/HttpRequest;
    //   33: astore_1
    //   34: aload_1
    //   35: astore_3
    //   36: aload_1
    //   37: astore 4
    //   39: invokestatic 117	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   42: ldc 119
    //   44: new 35	java/lang/StringBuilder
    //   47: dup
    //   48: invokespecial 38	java/lang/StringBuilder:<init>	()V
    //   51: ldc 121
    //   53: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   56: aload_0
    //   57: invokevirtual 122	com/yelp/android/av/e:a	()Ljava/lang/String;
    //   60: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: invokevirtual 55	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   66: invokeinterface 127 3 0
    //   71: aload_1
    //   72: astore_3
    //   73: aload_1
    //   74: astore 4
    //   76: invokestatic 117	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   79: ldc 119
    //   81: new 35	java/lang/StringBuilder
    //   84: dup
    //   85: invokespecial 38	java/lang/StringBuilder:<init>	()V
    //   88: ldc -127
    //   90: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   93: aload 7
    //   95: invokevirtual 132	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   98: invokevirtual 55	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   101: invokeinterface 127 3 0
    //   106: aload_1
    //   107: astore_3
    //   108: aload_1
    //   109: astore 4
    //   111: aload_1
    //   112: invokevirtual 135	io/fabric/sdk/android/services/network/HttpRequest:c	()Z
    //   115: ifeq +97 -> 212
    //   118: aload_1
    //   119: astore_3
    //   120: aload_1
    //   121: astore 4
    //   123: invokestatic 117	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   126: ldc 119
    //   128: ldc -119
    //   130: invokeinterface 127 3 0
    //   135: aload_1
    //   136: astore_3
    //   137: aload_1
    //   138: astore 4
    //   140: new 139	org/json/JSONObject
    //   143: dup
    //   144: aload_1
    //   145: invokevirtual 142	io/fabric/sdk/android/services/network/HttpRequest:e	()Ljava/lang/String;
    //   148: invokespecial 145	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   151: astore_2
    //   152: aload_1
    //   153: astore_3
    //   154: aload_1
    //   155: astore 4
    //   157: aload_0
    //   158: getfield 19	com/yelp/android/av/e:b	Lcom/yelp/android/av/g;
    //   161: aload_2
    //   162: invokevirtual 150	com/yelp/android/av/g:a	(Lorg/json/JSONObject;)Lcom/yelp/android/av/f;
    //   165: astore_2
    //   166: aload_2
    //   167: astore_3
    //   168: aload_1
    //   169: ifnull +41 -> 210
    //   172: aload_1
    //   173: ldc -104
    //   175: invokevirtual 155	io/fabric/sdk/android/services/network/HttpRequest:b	(Ljava/lang/String;)Ljava/lang/String;
    //   178: astore_1
    //   179: invokestatic 117	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   182: ldc -99
    //   184: new 35	java/lang/StringBuilder
    //   187: dup
    //   188: invokespecial 38	java/lang/StringBuilder:<init>	()V
    //   191: ldc -97
    //   193: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   196: aload_1
    //   197: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: invokevirtual 55	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   203: invokeinterface 127 3 0
    //   208: aload_2
    //   209: astore_3
    //   210: aload_3
    //   211: areturn
    //   212: aload_1
    //   213: astore_3
    //   214: aload_1
    //   215: astore 4
    //   217: invokestatic 117	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   220: ldc 119
    //   222: new 35	java/lang/StringBuilder
    //   225: dup
    //   226: invokespecial 38	java/lang/StringBuilder:<init>	()V
    //   229: ldc -95
    //   231: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   234: aload_1
    //   235: invokevirtual 164	io/fabric/sdk/android/services/network/HttpRequest:b	()I
    //   238: invokevirtual 167	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   241: invokevirtual 55	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   244: invokeinterface 169 3 0
    //   249: aload 6
    //   251: astore_3
    //   252: aload_1
    //   253: ifnull -43 -> 210
    //   256: aload_1
    //   257: ldc -104
    //   259: invokevirtual 155	io/fabric/sdk/android/services/network/HttpRequest:b	(Ljava/lang/String;)Ljava/lang/String;
    //   262: astore_1
    //   263: invokestatic 117	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   266: ldc -99
    //   268: new 35	java/lang/StringBuilder
    //   271: dup
    //   272: invokespecial 38	java/lang/StringBuilder:<init>	()V
    //   275: ldc -97
    //   277: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   280: aload_1
    //   281: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   284: invokevirtual 55	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   287: invokeinterface 127 3 0
    //   292: aconst_null
    //   293: areturn
    //   294: astore_1
    //   295: aconst_null
    //   296: astore 4
    //   298: aload 4
    //   300: astore_3
    //   301: invokestatic 117	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   304: ldc 119
    //   306: new 35	java/lang/StringBuilder
    //   309: dup
    //   310: invokespecial 38	java/lang/StringBuilder:<init>	()V
    //   313: ldc -85
    //   315: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   318: aload_0
    //   319: invokevirtual 122	com/yelp/android/av/e:a	()Ljava/lang/String;
    //   322: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   325: invokevirtual 55	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   328: aload_1
    //   329: invokeinterface 174 4 0
    //   334: aload 6
    //   336: astore_3
    //   337: aload 4
    //   339: ifnull -129 -> 210
    //   342: aload 4
    //   344: ldc -104
    //   346: invokevirtual 155	io/fabric/sdk/android/services/network/HttpRequest:b	(Ljava/lang/String;)Ljava/lang/String;
    //   349: astore_1
    //   350: invokestatic 117	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   353: ldc -99
    //   355: new 35	java/lang/StringBuilder
    //   358: dup
    //   359: invokespecial 38	java/lang/StringBuilder:<init>	()V
    //   362: ldc -97
    //   364: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   367: aload_1
    //   368: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   371: invokevirtual 55	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   374: invokeinterface 127 3 0
    //   379: aconst_null
    //   380: areturn
    //   381: astore_1
    //   382: aconst_null
    //   383: astore_3
    //   384: aload_3
    //   385: ifnull +39 -> 424
    //   388: aload_3
    //   389: ldc -104
    //   391: invokevirtual 155	io/fabric/sdk/android/services/network/HttpRequest:b	(Ljava/lang/String;)Ljava/lang/String;
    //   394: astore_2
    //   395: invokestatic 117	io/fabric/sdk/android/c:h	()Lio/fabric/sdk/android/k;
    //   398: ldc -99
    //   400: new 35	java/lang/StringBuilder
    //   403: dup
    //   404: invokespecial 38	java/lang/StringBuilder:<init>	()V
    //   407: ldc -97
    //   409: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   412: aload_2
    //   413: invokevirtual 44	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   416: invokevirtual 55	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   419: invokeinterface 127 3 0
    //   424: aload_1
    //   425: athrow
    //   426: astore_1
    //   427: goto -43 -> 384
    //   430: astore_1
    //   431: goto -133 -> 298
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	434	0	this	e
    //   0	434	1	paramString1	String
    //   0	434	2	paramString2	String
    //   0	434	3	paramd	d
    //   23	320	4	localObject1	Object
    //   16	11	5	localHttpRequest	HttpRequest
    //   1	334	6	localObject2	Object
    //   8	86	7	localMap	Map
    // Exception table:
    //   from	to	target	type
    //   3	18	294	java/lang/Exception
    //   3	18	381	finally
    //   25	34	426	finally
    //   39	71	426	finally
    //   76	106	426	finally
    //   111	118	426	finally
    //   123	135	426	finally
    //   140	152	426	finally
    //   157	166	426	finally
    //   217	249	426	finally
    //   301	334	426	finally
    //   25	34	430	java/lang/Exception
    //   39	71	430	java/lang/Exception
    //   76	106	430	java/lang/Exception
    //   111	118	430	java/lang/Exception
    //   123	135	430	java/lang/Exception
    //   140	152	430	java/lang/Exception
    //   157	166	430	java/lang/Exception
    //   217	249	430	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.av.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */