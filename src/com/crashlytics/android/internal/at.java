package com.crashlytics.android.internal;

import java.util.concurrent.atomic.AtomicReference;

public final class at
{
  private final AtomicReference<az> a = new AtomicReference();
  private ay b;
  private boolean c = false;
  
  public static at a()
  {
    return au.a();
  }
  
  /* Error */
  private static String a(String paramString1, String paramString2, android.content.Context paramContext)
  {
    // Byte code:
    //   0: aload_1
    //   1: ldc 37
    //   3: new 39	java/lang/StringBuffer
    //   6: dup
    //   7: new 41	java/lang/String
    //   10: dup
    //   11: iconst_3
    //   12: newarray <illegal type>
    //   14: dup
    //   15: iconst_0
    //   16: ldc 42
    //   18: castore
    //   19: dup
    //   20: iconst_1
    //   21: ldc 43
    //   23: castore
    //   24: dup
    //   25: iconst_2
    //   26: ldc 44
    //   28: castore
    //   29: invokespecial 47	java/lang/String:<init>	([C)V
    //   32: invokespecial 50	java/lang/StringBuffer:<init>	(Ljava/lang/String;)V
    //   35: invokevirtual 54	java/lang/StringBuffer:reverse	()Ljava/lang/StringBuffer;
    //   38: invokevirtual 58	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   41: invokevirtual 62	java/lang/String:replaceAll	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   44: astore_1
    //   45: iconst_1
    //   46: new 64	java/lang/StringBuilder
    //   49: dup
    //   50: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   53: aload_0
    //   54: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: aload_1
    //   58: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   61: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   64: invokestatic 75	com/crashlytics/android/internal/bd:a	(Ljava/lang/String;)Ljava/lang/String;
    //   67: invokestatic 78	com/crashlytics/android/internal/bd:b	(ILjava/lang/String;)Ljavax/crypto/Cipher;
    //   70: astore_0
    //   71: new 80	org/json/JSONObject
    //   74: dup
    //   75: invokespecial 81	org/json/JSONObject:<init>	()V
    //   78: astore_1
    //   79: new 83	com/crashlytics/android/internal/bo
    //   82: dup
    //   83: aload_2
    //   84: invokespecial 86	com/crashlytics/android/internal/bo:<init>	(Landroid/content/Context;)V
    //   87: astore_2
    //   88: aload_1
    //   89: ldc 88
    //   91: getstatic 94	java/util/Locale:US	Ljava/util/Locale;
    //   94: invokevirtual 98	java/lang/String:toLowerCase	(Ljava/util/Locale;)Ljava/lang/String;
    //   97: aload_2
    //   98: invokevirtual 100	com/crashlytics/android/internal/bo:b	()Ljava/lang/String;
    //   101: invokevirtual 104	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   104: pop
    //   105: aload_2
    //   106: invokevirtual 108	com/crashlytics/android/internal/bo:f	()Ljava/util/Map;
    //   109: invokeinterface 114 1 0
    //   114: invokeinterface 120 1 0
    //   119: astore_3
    //   120: aload_3
    //   121: invokeinterface 126 1 0
    //   126: ifeq +136 -> 262
    //   129: aload_3
    //   130: invokeinterface 130 1 0
    //   135: checkcast 132	java/util/Map$Entry
    //   138: astore 4
    //   140: aload_1
    //   141: aload 4
    //   143: invokeinterface 135 1 0
    //   148: checkcast 137	com/crashlytics/android/internal/ap
    //   151: invokevirtual 140	com/crashlytics/android/internal/ap:name	()Ljava/lang/String;
    //   154: getstatic 94	java/util/Locale:US	Ljava/util/Locale;
    //   157: invokevirtual 98	java/lang/String:toLowerCase	(Ljava/util/Locale;)Ljava/lang/String;
    //   160: aload 4
    //   162: invokeinterface 143 1 0
    //   167: invokevirtual 104	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   170: pop
    //   171: goto -51 -> 120
    //   174: astore 5
    //   176: invokestatic 148	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   179: invokevirtual 151	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   182: ldc -103
    //   184: new 64	java/lang/StringBuilder
    //   187: dup
    //   188: ldc -101
    //   190: invokespecial 156	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   193: aload 4
    //   195: invokeinterface 135 1 0
    //   200: checkcast 137	com/crashlytics/android/internal/ap
    //   203: invokevirtual 140	com/crashlytics/android/internal/ap:name	()Ljava/lang/String;
    //   206: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   209: invokevirtual 70	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   212: aload 5
    //   214: invokeinterface 161 4 0
    //   219: goto -99 -> 120
    //   222: astore_0
    //   223: invokestatic 148	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   226: invokevirtual 151	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   229: ldc -103
    //   231: ldc -93
    //   233: aload_0
    //   234: invokeinterface 161 4 0
    //   239: ldc -91
    //   241: areturn
    //   242: astore_3
    //   243: invokestatic 148	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   246: invokevirtual 151	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   249: ldc -103
    //   251: ldc -89
    //   253: aload_3
    //   254: invokeinterface 161 4 0
    //   259: goto -154 -> 105
    //   262: aload_1
    //   263: ldc -87
    //   265: aload_2
    //   266: invokevirtual 171	com/crashlytics/android/internal/bo:c	()Ljava/lang/String;
    //   269: invokevirtual 104	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   272: pop
    //   273: aload_1
    //   274: ldc -83
    //   276: aload_2
    //   277: invokevirtual 176	com/crashlytics/android/internal/bo:d	()Ljava/lang/String;
    //   280: invokevirtual 104	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   283: pop
    //   284: aload_1
    //   285: invokevirtual 180	org/json/JSONObject:length	()I
    //   288: ifle -49 -> 239
    //   291: aload_0
    //   292: aload_1
    //   293: invokevirtual 181	org/json/JSONObject:toString	()Ljava/lang/String;
    //   296: invokevirtual 185	java/lang/String:getBytes	()[B
    //   299: invokevirtual 191	javax/crypto/Cipher:doFinal	([B)[B
    //   302: invokestatic 194	com/crashlytics/android/internal/bd:a	([B)Ljava/lang/String;
    //   305: astore_0
    //   306: aload_0
    //   307: areturn
    //   308: astore_3
    //   309: invokestatic 148	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   312: invokevirtual 151	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   315: ldc -103
    //   317: ldc -60
    //   319: aload_3
    //   320: invokeinterface 161 4 0
    //   325: goto -52 -> 273
    //   328: astore_2
    //   329: invokestatic 148	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   332: invokevirtual 151	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   335: ldc -103
    //   337: ldc -58
    //   339: aload_2
    //   340: invokeinterface 161 4 0
    //   345: goto -61 -> 284
    //   348: astore_0
    //   349: invokestatic 148	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   352: invokevirtual 151	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   355: ldc -103
    //   357: ldc -56
    //   359: aload_0
    //   360: invokeinterface 161 4 0
    //   365: ldc -91
    //   367: areturn
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	368	0	paramString1	String
    //   0	368	1	paramString2	String
    //   0	368	2	paramContext	android.content.Context
    //   119	11	3	localIterator	java.util.Iterator
    //   242	12	3	localException1	Exception
    //   308	12	3	localException2	Exception
    //   138	56	4	localEntry	java.util.Map.Entry
    //   174	39	5	localException3	Exception
    // Exception table:
    //   from	to	target	type
    //   140	171	174	java/lang/Exception
    //   0	71	222	java/security/GeneralSecurityException
    //   88	105	242	java/lang/Exception
    //   262	273	308	java/lang/Exception
    //   273	284	328	java/lang/Exception
    //   291	306	348	java/security/GeneralSecurityException
  }
  
  /* Error */
  public final at a(android.content.Context paramContext, bu parambu, String paramString1, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 22	com/crashlytics/android/internal/at:c	Z
    //   6: istore 6
    //   8: iload 6
    //   10: ifeq +7 -> 17
    //   13: aload_0
    //   14: monitorexit
    //   15: aload_0
    //   16: areturn
    //   17: aload_0
    //   18: getfield 203	com/crashlytics/android/internal/at:b	Lcom/crashlytics/android/internal/ay;
    //   21: ifnonnull +150 -> 171
    //   24: aload_1
    //   25: iconst_0
    //   26: invokestatic 208	com/crashlytics/android/internal/cj:a	(Landroid/content/Context;Z)Ljava/lang/String;
    //   29: astore 7
    //   31: aload_1
    //   32: invokevirtual 213	android/content/Context:getPackageName	()Ljava/lang/String;
    //   35: astore 8
    //   37: aload_1
    //   38: invokevirtual 217	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   41: aload 8
    //   43: invokevirtual 222	android/content/pm/PackageManager:getInstallerPackageName	(Ljava/lang/String;)Ljava/lang/String;
    //   46: astore 9
    //   48: new 224	com/crashlytics/android/internal/bi
    //   51: dup
    //   52: invokespecial 225	com/crashlytics/android/internal/bi:<init>	()V
    //   55: astore 10
    //   57: new 227	com/crashlytics/android/internal/ba
    //   60: dup
    //   61: invokespecial 228	com/crashlytics/android/internal/ba:<init>	()V
    //   64: astore 11
    //   66: new 230	com/crashlytics/android/internal/an
    //   69: dup
    //   70: invokespecial 231	com/crashlytics/android/internal/an:<init>	()V
    //   73: astore 12
    //   75: aload_1
    //   76: invokestatic 235	com/crashlytics/android/internal/bd:g	(Landroid/content/Context;)Ljava/lang/String;
    //   79: astore 13
    //   81: new 237	com/crashlytics/android/internal/ao
    //   84: dup
    //   85: aload 5
    //   87: getstatic 94	java/util/Locale:US	Ljava/util/Locale;
    //   90: ldc -17
    //   92: iconst_1
    //   93: anewarray 4	java/lang/Object
    //   96: dup
    //   97: iconst_0
    //   98: aload 8
    //   100: aastore
    //   101: invokestatic 243	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   104: aload_2
    //   105: invokespecial 246	com/crashlytics/android/internal/ao:<init>	(Ljava/lang/String;Ljava/lang/String;Lcom/crashlytics/android/internal/bu;)V
    //   108: astore_2
    //   109: aload_0
    //   110: new 248	com/crashlytics/android/internal/ay
    //   113: dup
    //   114: new 250	com/crashlytics/android/internal/bb
    //   117: dup
    //   118: aload 7
    //   120: aload 7
    //   122: aload 8
    //   124: aload_1
    //   125: invokestatic 252	com/crashlytics/android/internal/at:a	(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    //   128: iconst_1
    //   129: anewarray 41	java/lang/String
    //   132: dup
    //   133: iconst_0
    //   134: aload_1
    //   135: invokestatic 255	com/crashlytics/android/internal/bd:i	(Landroid/content/Context;)Ljava/lang/String;
    //   138: aastore
    //   139: invokestatic 258	com/crashlytics/android/internal/bd:a	([Ljava/lang/String;)Ljava/lang/String;
    //   142: aload 4
    //   144: aload_3
    //   145: aload 9
    //   147: invokestatic 263	com/crashlytics/android/internal/ai:a	(Ljava/lang/String;)Lcom/crashlytics/android/internal/ai;
    //   150: invokevirtual 265	com/crashlytics/android/internal/ai:a	()I
    //   153: aload 13
    //   155: invokespecial 268	com/crashlytics/android/internal/bb:<init>	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    //   158: aload 10
    //   160: aload 11
    //   162: aload 12
    //   164: aload_2
    //   165: invokespecial 271	com/crashlytics/android/internal/ay:<init>	(Lcom/crashlytics/android/internal/bb;Lcom/crashlytics/android/internal/bi;Lcom/crashlytics/android/internal/ba;Lcom/crashlytics/android/internal/an;Lcom/crashlytics/android/internal/bz;)V
    //   168: putfield 203	com/crashlytics/android/internal/at:b	Lcom/crashlytics/android/internal/ay;
    //   171: aload_0
    //   172: iconst_1
    //   173: putfield 22	com/crashlytics/android/internal/at:c	Z
    //   176: goto -163 -> 13
    //   179: astore_1
    //   180: aload_0
    //   181: monitorexit
    //   182: aload_1
    //   183: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	184	0	this	at
    //   0	184	1	paramContext	android.content.Context
    //   0	184	2	parambu	bu
    //   0	184	3	paramString1	String
    //   0	184	4	paramString2	String
    //   0	184	5	paramString3	String
    //   6	3	6	bool	boolean
    //   29	92	7	str1	String
    //   35	88	8	str2	String
    //   46	100	9	str3	String
    //   55	104	10	localbi	bi
    //   64	97	11	localba	ba
    //   73	90	12	localan	an
    //   79	75	13	str4	String
    // Exception table:
    //   from	to	target	type
    //   2	8	179	finally
    //   17	171	179	finally
    //   171	176	179	finally
  }
  
  public final <T> T a(aw<T> paramaw, T paramT)
  {
    az localaz = (az)a.get();
    if (localaz == null) {
      return paramT;
    }
    return (T)paramaw.a(localaz);
  }
  
  public final az b()
  {
    return (az)a.get();
  }
  
  /* Error */
  public final boolean c()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 203	com/crashlytics/android/internal/at:b	Lcom/crashlytics/android/internal/ay;
    //   6: invokevirtual 287	com/crashlytics/android/internal/ay:a	()Lcom/crashlytics/android/internal/az;
    //   9: astore_2
    //   10: aload_0
    //   11: getfield 20	com/crashlytics/android/internal/at:a	Ljava/util/concurrent/atomic/AtomicReference;
    //   14: aload_2
    //   15: invokevirtual 291	java/util/concurrent/atomic/AtomicReference:set	(Ljava/lang/Object;)V
    //   18: aload_2
    //   19: ifnull +9 -> 28
    //   22: iconst_1
    //   23: istore_1
    //   24: aload_0
    //   25: monitorexit
    //   26: iload_1
    //   27: ireturn
    //   28: iconst_0
    //   29: istore_1
    //   30: goto -6 -> 24
    //   33: astore_2
    //   34: aload_0
    //   35: monitorexit
    //   36: aload_2
    //   37: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	38	0	this	at
    //   23	7	1	bool	boolean
    //   9	10	2	localaz	az
    //   33	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	18	33	finally
  }
  
  /* Error */
  public final boolean d()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 203	com/crashlytics/android/internal/at:b	Lcom/crashlytics/android/internal/ay;
    //   6: getstatic 296	com/crashlytics/android/internal/aV:b	Lcom/crashlytics/android/internal/aV;
    //   9: invokevirtual 299	com/crashlytics/android/internal/ay:a	(Lcom/crashlytics/android/internal/aV;)Lcom/crashlytics/android/internal/az;
    //   12: astore_2
    //   13: aload_0
    //   14: getfield 20	com/crashlytics/android/internal/at:a	Ljava/util/concurrent/atomic/AtomicReference;
    //   17: aload_2
    //   18: invokevirtual 291	java/util/concurrent/atomic/AtomicReference:set	(Ljava/lang/Object;)V
    //   21: aload_2
    //   22: ifnonnull +20 -> 42
    //   25: invokestatic 148	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   28: invokevirtual 151	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   31: ldc -103
    //   33: ldc_w 301
    //   36: aconst_null
    //   37: invokeinterface 161 4 0
    //   42: aload_2
    //   43: ifnull +9 -> 52
    //   46: iconst_1
    //   47: istore_1
    //   48: aload_0
    //   49: monitorexit
    //   50: iload_1
    //   51: ireturn
    //   52: iconst_0
    //   53: istore_1
    //   54: goto -6 -> 48
    //   57: astore_2
    //   58: aload_0
    //   59: monitorexit
    //   60: aload_2
    //   61: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	62	0	this	at
    //   47	7	1	bool	boolean
    //   12	31	2	localaz	az
    //   57	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	21	57	finally
    //   25	42	57	finally
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */