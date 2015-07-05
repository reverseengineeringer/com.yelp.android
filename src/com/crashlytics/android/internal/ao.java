package com.crashlytics.android.internal;

final class ao
  extends y
  implements bz
{
  public ao(String paramString1, String paramString2, bu parambu)
  {
    this(paramString1, paramString2, parambu, ax.a);
  }
  
  private ao(String paramString1, String paramString2, bu parambu, ax paramax)
  {
    super(paramString1, paramString2, parambu, paramax);
  }
  
  /* Error */
  public final org.json.JSONObject a(bb parambb)
  {
    // Byte code:
    //   0: new 24	java/util/HashMap
    //   3: dup
    //   4: invokespecial 27	java/util/HashMap:<init>	()V
    //   7: astore 5
    //   9: aload 5
    //   11: ldc 29
    //   13: aload_1
    //   14: getfield 35	com/crashlytics/android/internal/bb:e	Ljava/lang/String;
    //   17: invokeinterface 41 3 0
    //   22: pop
    //   23: aload 5
    //   25: ldc 43
    //   27: aload_1
    //   28: getfield 46	com/crashlytics/android/internal/bb:d	Ljava/lang/String;
    //   31: invokeinterface 41 3 0
    //   36: pop
    //   37: aload 5
    //   39: ldc 48
    //   41: aload_1
    //   42: getfield 52	com/crashlytics/android/internal/bb:f	I
    //   45: invokestatic 58	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   48: invokeinterface 41 3 0
    //   53: pop
    //   54: aload_1
    //   55: getfield 61	com/crashlytics/android/internal/bb:g	Ljava/lang/String;
    //   58: ifnull +17 -> 75
    //   61: aload 5
    //   63: ldc 63
    //   65: aload_1
    //   66: getfield 61	com/crashlytics/android/internal/bb:g	Ljava/lang/String;
    //   69: invokeinterface 41 3 0
    //   74: pop
    //   75: aload_1
    //   76: getfield 66	com/crashlytics/android/internal/bb:c	Ljava/lang/String;
    //   79: astore_2
    //   80: aload_2
    //   81: invokestatic 71	com/crashlytics/android/internal/bd:e	(Ljava/lang/String;)Z
    //   84: ifne +14 -> 98
    //   87: aload 5
    //   89: ldc 73
    //   91: aload_2
    //   92: invokeinterface 41 3 0
    //   97: pop
    //   98: aload_0
    //   99: aload 5
    //   101: invokevirtual 76	com/crashlytics/android/internal/ao:a	(Ljava/util/Map;)Lcom/crashlytics/android/internal/bw;
    //   104: astore 4
    //   106: aload 4
    //   108: astore_2
    //   109: aload 4
    //   111: astore_3
    //   112: aload 4
    //   114: ldc 78
    //   116: aload_1
    //   117: getfield 80	com/crashlytics/android/internal/bb:a	Ljava/lang/String;
    //   120: invokevirtual 85	com/crashlytics/android/internal/bw:a	(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/bw;
    //   123: ldc 87
    //   125: ldc 89
    //   127: invokevirtual 85	com/crashlytics/android/internal/bw:a	(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/bw;
    //   130: ldc 91
    //   132: aload_1
    //   133: getfield 94	com/crashlytics/android/internal/bb:b	Ljava/lang/String;
    //   136: invokevirtual 85	com/crashlytics/android/internal/bw:a	(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/bw;
    //   139: ldc 96
    //   141: invokestatic 101	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   144: invokevirtual 104	com/crashlytics/android/internal/cl:f	()Ljava/lang/String;
    //   147: invokevirtual 85	com/crashlytics/android/internal/bw:a	(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/bw;
    //   150: ldc 106
    //   152: ldc 108
    //   154: invokevirtual 85	com/crashlytics/android/internal/bw:a	(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/internal/bw;
    //   157: astore_1
    //   158: aload_1
    //   159: astore_2
    //   160: aload_1
    //   161: astore_3
    //   162: invokestatic 101	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   165: invokevirtual 111	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   168: ldc 113
    //   170: new 115	java/lang/StringBuilder
    //   173: dup
    //   174: ldc 117
    //   176: invokespecial 120	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   179: aload_0
    //   180: invokevirtual 122	com/crashlytics/android/internal/ao:a	()Ljava/lang/String;
    //   183: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   186: invokevirtual 128	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   189: invokeinterface 133 3 0
    //   194: aload_1
    //   195: astore_2
    //   196: aload_1
    //   197: astore_3
    //   198: invokestatic 101	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   201: invokevirtual 111	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   204: ldc 113
    //   206: new 115	java/lang/StringBuilder
    //   209: dup
    //   210: ldc -121
    //   212: invokespecial 120	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   215: aload 5
    //   217: invokevirtual 138	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   220: invokevirtual 128	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   223: invokeinterface 133 3 0
    //   228: aload_1
    //   229: astore_2
    //   230: aload_1
    //   231: astore_3
    //   232: new 140	org/json/JSONObject
    //   235: dup
    //   236: aload_1
    //   237: invokevirtual 142	com/crashlytics/android/internal/bw:c	()Ljava/lang/String;
    //   240: invokespecial 143	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   243: astore 4
    //   245: aload_1
    //   246: ifnull +37 -> 283
    //   249: invokestatic 101	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   252: invokevirtual 111	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   255: ldc 113
    //   257: new 115	java/lang/StringBuilder
    //   260: dup
    //   261: ldc -111
    //   263: invokespecial 120	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   266: aload_1
    //   267: ldc -109
    //   269: invokevirtual 150	com/crashlytics/android/internal/bw:a	(Ljava/lang/String;)Ljava/lang/String;
    //   272: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   275: invokevirtual 128	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   278: invokeinterface 133 3 0
    //   283: aload 4
    //   285: areturn
    //   286: astore_1
    //   287: aconst_null
    //   288: astore_3
    //   289: aload_3
    //   290: astore_2
    //   291: invokestatic 101	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   294: invokevirtual 111	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   297: ldc 113
    //   299: new 115	java/lang/StringBuilder
    //   302: dup
    //   303: ldc -104
    //   305: invokespecial 120	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   308: aload_0
    //   309: invokevirtual 122	com/crashlytics/android/internal/ao:a	()Ljava/lang/String;
    //   312: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   315: invokevirtual 128	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   318: aload_1
    //   319: invokeinterface 155 4 0
    //   324: aload_3
    //   325: ifnull +90 -> 415
    //   328: invokestatic 101	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   331: invokevirtual 111	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   334: ldc 113
    //   336: new 115	java/lang/StringBuilder
    //   339: dup
    //   340: ldc -111
    //   342: invokespecial 120	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   345: aload_3
    //   346: ldc -109
    //   348: invokevirtual 150	com/crashlytics/android/internal/bw:a	(Ljava/lang/String;)Ljava/lang/String;
    //   351: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   354: invokevirtual 128	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   357: invokeinterface 133 3 0
    //   362: aconst_null
    //   363: areturn
    //   364: astore_1
    //   365: aconst_null
    //   366: astore_2
    //   367: aload_2
    //   368: ifnull +37 -> 405
    //   371: invokestatic 101	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   374: invokevirtual 111	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   377: ldc 113
    //   379: new 115	java/lang/StringBuilder
    //   382: dup
    //   383: ldc -111
    //   385: invokespecial 120	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   388: aload_2
    //   389: ldc -109
    //   391: invokevirtual 150	com/crashlytics/android/internal/bw:a	(Ljava/lang/String;)Ljava/lang/String;
    //   394: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   397: invokevirtual 128	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   400: invokeinterface 133 3 0
    //   405: aload_1
    //   406: athrow
    //   407: astore_1
    //   408: goto -41 -> 367
    //   411: astore_1
    //   412: goto -123 -> 289
    //   415: aconst_null
    //   416: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	417	0	this	ao
    //   0	417	1	parambb	bb
    //   79	310	2	localObject1	Object
    //   111	235	3	localObject2	Object
    //   104	180	4	localObject3	Object
    //   7	209	5	localHashMap	java.util.HashMap
    // Exception table:
    //   from	to	target	type
    //   0	75	286	java/lang/Exception
    //   75	98	286	java/lang/Exception
    //   98	106	286	java/lang/Exception
    //   0	75	364	finally
    //   75	98	364	finally
    //   98	106	364	finally
    //   112	158	407	finally
    //   162	194	407	finally
    //   198	228	407	finally
    //   232	245	407	finally
    //   291	324	407	finally
    //   112	158	411	java/lang/Exception
    //   162	194	411	java/lang/Exception
    //   198	228	411	java/lang/Exception
    //   232	245	411	java/lang/Exception
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */