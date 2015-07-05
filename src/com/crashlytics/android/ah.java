package com.crashlytics.android;

import com.crashlytics.android.internal.bc;

final class ah
  extends bc
{
  private final float a;
  
  ah(af paramaf, float paramFloat)
  {
    a = paramFloat;
  }
  
  /* Error */
  public final void a()
  {
    // Byte code:
    //   0: invokestatic 27	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   3: invokevirtual 30	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   6: ldc 32
    //   8: new 34	java/lang/StringBuilder
    //   11: dup
    //   12: ldc 36
    //   14: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   17: aload_0
    //   18: getfield 17	com/crashlytics/android/ah:a	F
    //   21: invokevirtual 43	java/lang/StringBuilder:append	(F)Ljava/lang/StringBuilder;
    //   24: ldc 45
    //   26: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   29: invokevirtual 52	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   32: invokeinterface 57 3 0
    //   37: aload_0
    //   38: getfield 17	com/crashlytics/android/ah:a	F
    //   41: fstore_1
    //   42: fload_1
    //   43: fconst_0
    //   44: fcmpl
    //   45: ifle +14 -> 59
    //   48: aload_0
    //   49: getfield 17	com/crashlytics/android/ah:a	F
    //   52: ldc 58
    //   54: fmul
    //   55: f2l
    //   56: invokestatic 64	java/lang/Thread:sleep	(J)V
    //   59: invokestatic 69	com/crashlytics/android/d:a	()Lcom/crashlytics/android/d;
    //   62: astore 6
    //   64: aload 6
    //   66: invokevirtual 73	com/crashlytics/android/d:o	()Lcom/crashlytics/android/bb;
    //   69: astore 7
    //   71: aload_0
    //   72: getfield 12	com/crashlytics/android/ah:b	Lcom/crashlytics/android/af;
    //   75: invokevirtual 78	com/crashlytics/android/af:a	()Ljava/util/List;
    //   78: astore 5
    //   80: aload 7
    //   82: invokevirtual 83	com/crashlytics/android/bb:a	()Z
    //   85: ifne +116 -> 201
    //   88: aload 5
    //   90: invokeinterface 88 1 0
    //   95: ifne +336 -> 431
    //   98: aload 6
    //   100: invokevirtual 91	com/crashlytics/android/d:s	()Z
    //   103: ifne +328 -> 431
    //   106: invokestatic 27	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   109: invokevirtual 30	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   112: ldc 32
    //   114: new 34	java/lang/StringBuilder
    //   117: dup
    //   118: ldc 93
    //   120: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   123: aload 5
    //   125: invokeinterface 97 1 0
    //   130: invokevirtual 100	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   133: ldc 102
    //   135: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   138: invokevirtual 52	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   141: invokeinterface 57 3 0
    //   146: aload 5
    //   148: invokeinterface 106 1 0
    //   153: astore 5
    //   155: aload 5
    //   157: invokeinterface 111 1 0
    //   162: ifeq +39 -> 201
    //   165: aload 5
    //   167: invokeinterface 115 1 0
    //   172: checkcast 117	com/crashlytics/android/ad
    //   175: invokevirtual 118	com/crashlytics/android/ad:a	()Z
    //   178: pop
    //   179: goto -24 -> 155
    //   182: astore 5
    //   184: invokestatic 27	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   187: invokevirtual 30	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   190: ldc 32
    //   192: ldc 120
    //   194: aload 5
    //   196: invokeinterface 123 4 0
    //   201: aload_0
    //   202: getfield 12	com/crashlytics/android/ah:b	Lcom/crashlytics/android/af;
    //   205: aconst_null
    //   206: invokestatic 126	com/crashlytics/android/af:a	(Lcom/crashlytics/android/af;Ljava/lang/Thread;)Ljava/lang/Thread;
    //   209: pop
    //   210: return
    //   211: astore 5
    //   213: invokestatic 130	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   216: invokevirtual 133	java/lang/Thread:interrupt	()V
    //   219: goto -18 -> 201
    //   222: aload 5
    //   224: invokeinterface 88 1 0
    //   229: ifne -28 -> 201
    //   232: invokestatic 69	com/crashlytics/android/d:a	()Lcom/crashlytics/android/d;
    //   235: invokevirtual 73	com/crashlytics/android/d:o	()Lcom/crashlytics/android/bb;
    //   238: invokevirtual 83	com/crashlytics/android/bb:a	()Z
    //   241: ifne -40 -> 201
    //   244: invokestatic 27	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   247: invokevirtual 30	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   250: ldc 32
    //   252: new 34	java/lang/StringBuilder
    //   255: dup
    //   256: ldc -121
    //   258: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   261: aload 5
    //   263: invokeinterface 97 1 0
    //   268: invokevirtual 100	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   271: ldc -119
    //   273: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   276: invokevirtual 52	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   279: invokeinterface 57 3 0
    //   284: aload 5
    //   286: invokeinterface 106 1 0
    //   291: astore 5
    //   293: aload 5
    //   295: invokeinterface 111 1 0
    //   300: ifeq +28 -> 328
    //   303: aload 5
    //   305: invokeinterface 115 1 0
    //   310: checkcast 117	com/crashlytics/android/ad
    //   313: astore 6
    //   315: aload_0
    //   316: getfield 12	com/crashlytics/android/ah:b	Lcom/crashlytics/android/af;
    //   319: aload 6
    //   321: invokevirtual 140	com/crashlytics/android/af:a	(Lcom/crashlytics/android/ad;)Z
    //   324: pop
    //   325: goto -32 -> 293
    //   328: aload_0
    //   329: getfield 12	com/crashlytics/android/ah:b	Lcom/crashlytics/android/af;
    //   332: invokevirtual 78	com/crashlytics/android/af:a	()Ljava/util/List;
    //   335: astore 6
    //   337: aload 6
    //   339: astore 5
    //   341: aload 6
    //   343: invokeinterface 88 1 0
    //   348: ifne -126 -> 222
    //   351: invokestatic 143	com/crashlytics/android/af:b	()[S
    //   354: iload_2
    //   355: invokestatic 143	com/crashlytics/android/af:b	()[S
    //   358: arraylength
    //   359: iconst_1
    //   360: isub
    //   361: invokestatic 149	java/lang/Math:min	(II)I
    //   364: saload
    //   365: i2l
    //   366: lstore_3
    //   367: invokestatic 27	com/crashlytics/android/internal/cl:a	()Lcom/crashlytics/android/internal/cl;
    //   370: invokevirtual 30	com/crashlytics/android/internal/cl:b	()Lcom/crashlytics/android/internal/ci;
    //   373: ldc 32
    //   375: new 34	java/lang/StringBuilder
    //   378: dup
    //   379: ldc -105
    //   381: invokespecial 39	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   384: lload_3
    //   385: invokevirtual 154	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   388: ldc -100
    //   390: invokevirtual 48	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   393: invokevirtual 52	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   396: invokeinterface 57 3 0
    //   401: lload_3
    //   402: ldc2_w 157
    //   405: lmul
    //   406: invokestatic 64	java/lang/Thread:sleep	(J)V
    //   409: iload_2
    //   410: iconst_1
    //   411: iadd
    //   412: istore_2
    //   413: aload 6
    //   415: astore 5
    //   417: goto -195 -> 222
    //   420: astore 5
    //   422: invokestatic 130	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   425: invokevirtual 133	java/lang/Thread:interrupt	()V
    //   428: goto -227 -> 201
    //   431: iconst_0
    //   432: istore_2
    //   433: goto -211 -> 222
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	436	0	this	ah
    //   41	2	1	f	float
    //   354	79	2	i	int
    //   366	36	3	l	long
    //   78	88	5	localObject1	Object
    //   182	13	5	localException	Exception
    //   211	74	5	localInterruptedException1	InterruptedException
    //   291	125	5	localObject2	Object
    //   420	1	5	localInterruptedException2	InterruptedException
    //   62	352	6	localObject3	Object
    //   69	12	7	localbb	bb
    // Exception table:
    //   from	to	target	type
    //   0	42	182	java/lang/Exception
    //   48	59	182	java/lang/Exception
    //   59	155	182	java/lang/Exception
    //   155	179	182	java/lang/Exception
    //   213	219	182	java/lang/Exception
    //   222	293	182	java/lang/Exception
    //   293	325	182	java/lang/Exception
    //   328	337	182	java/lang/Exception
    //   341	401	182	java/lang/Exception
    //   401	409	182	java/lang/Exception
    //   422	428	182	java/lang/Exception
    //   48	59	211	java/lang/InterruptedException
    //   401	409	420	java/lang/InterruptedException
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */