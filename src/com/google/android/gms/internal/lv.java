package com.google.android.gms.internal;

import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.Map;
import java.util.TreeMap;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.StatusLine;
import org.apache.http.impl.cookie.DateUtils;

public class lv
  implements dv
{
  protected static final boolean a = li.b;
  private static int d = 3000;
  private static int e = 4096;
  protected final ma b;
  protected final lw c;
  
  public lv(ma paramma)
  {
    this(paramma, new lw(e));
  }
  
  public lv(ma paramma, lw paramlw)
  {
    b = paramma;
    c = paramlw;
  }
  
  protected static Map<String, String> a(Header[] paramArrayOfHeader)
  {
    TreeMap localTreeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
    int i = 0;
    while (i < paramArrayOfHeader.length)
    {
      localTreeMap.put(paramArrayOfHeader[i].getName(), paramArrayOfHeader[i].getValue());
      i += 1;
    }
    return localTreeMap;
  }
  
  private void a(long paramLong, zzk<?> paramzzk, byte[] paramArrayOfByte, StatusLine paramStatusLine)
  {
    if ((a) || (paramLong > d)) {
      if (paramArrayOfByte == null) {
        break label82;
      }
    }
    label82:
    for (paramArrayOfByte = Integer.valueOf(paramArrayOfByte.length);; paramArrayOfByte = "null")
    {
      li.b("HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]", new Object[] { paramzzk, Long.valueOf(paramLong), paramArrayOfByte, Integer.valueOf(paramStatusLine.getStatusCode()), Integer.valueOf(paramzzk.s().b()) });
      return;
    }
  }
  
  private static void a(String paramString, zzk<?> paramzzk, zzr paramzzr)
    throws zzr
  {
    kl localkl = paramzzk.s();
    int i = paramzzk.r();
    try
    {
      localkl.a(paramzzr);
      paramzzk.b(String.format("%s-retry [timeout=%s]", new Object[] { paramString, Integer.valueOf(i) }));
      return;
    }
    catch (zzr paramzzr)
    {
      paramzzk.b(String.format("%s-timeout-giveup [timeout=%s]", new Object[] { paramString, Integer.valueOf(i) }));
      throw paramzzr;
    }
  }
  
  private void a(Map<String, String> paramMap, u.a parama)
  {
    if (parama == null) {}
    do
    {
      return;
      if (b != null) {
        paramMap.put("If-None-Match", b);
      }
    } while (d <= 0L);
    paramMap.put("If-Modified-Since", DateUtils.formatDate(new Date(d)));
  }
  
  private byte[] a(HttpEntity paramHttpEntity)
    throws IOException, zzp
  {
    a locala = new a(c, (int)paramHttpEntity.getContentLength());
    Object localObject2 = null;
    Object localObject1 = localObject2;
    Object localObject4;
    try
    {
      localObject4 = paramHttpEntity.getContent();
      if (localObject4 == null)
      {
        localObject1 = localObject2;
        throw new zzp();
      }
    }
    finally {}
    try
    {
      paramHttpEntity.consumeContent();
      c.a((byte[])localObject1);
      locala.close();
      throw ((Throwable)localObject3);
      localObject1 = localObject3;
      byte[] arrayOfByte = c.a(1024);
      for (;;)
      {
        localObject1 = arrayOfByte;
        int i = ((InputStream)localObject4).read(arrayOfByte);
        if (i == -1) {
          break;
        }
        localObject1 = arrayOfByte;
        locala.write(arrayOfByte, 0, i);
      }
      localObject1 = arrayOfByte;
      localObject4 = locala.toByteArray();
      try
      {
        paramHttpEntity.consumeContent();
        c.a(arrayOfByte);
        locala.close();
        return (byte[])localObject4;
      }
      catch (IOException paramHttpEntity)
      {
        for (;;)
        {
          li.a("Error occured when calling consumingContent", new Object[0]);
        }
      }
    }
    catch (IOException paramHttpEntity)
    {
      for (;;)
      {
        li.a("Error occured when calling consumingContent", new Object[0]);
      }
    }
  }
  
  /* Error */
  public gm a(zzk<?> paramzzk)
    throws zzr
  {
    // Byte code:
    //   0: invokestatic 219	android/os/SystemClock:elapsedRealtime	()J
    //   3: lstore_3
    //   4: aconst_null
    //   5: astore 9
    //   7: invokestatic 225	java/util/Collections:emptyMap	()Ljava/util/Map;
    //   10: astore 7
    //   12: new 227	java/util/HashMap
    //   15: dup
    //   16: invokespecial 228	java/util/HashMap:<init>	()V
    //   19: astore 5
    //   21: aload_0
    //   22: aload 5
    //   24: aload_1
    //   25: invokevirtual 232	com/google/android/gms/internal/zzk:f	()Lcom/google/android/gms/internal/u$a;
    //   28: invokespecial 234	com/google/android/gms/internal/lv:a	(Ljava/util/Map;Lcom/google/android/gms/internal/u$a;)V
    //   31: aload_0
    //   32: getfield 42	com/google/android/gms/internal/lv:b	Lcom/google/android/gms/internal/ma;
    //   35: aload_1
    //   36: aload 5
    //   38: invokeinterface 239 3 0
    //   43: astore 6
    //   45: aload 7
    //   47: astore 5
    //   49: aload 6
    //   51: invokeinterface 245 1 0
    //   56: astore 8
    //   58: aload 7
    //   60: astore 5
    //   62: aload 8
    //   64: invokeinterface 93 1 0
    //   69: istore_2
    //   70: aload 7
    //   72: astore 5
    //   74: aload 6
    //   76: invokeinterface 249 1 0
    //   81: invokestatic 251	com/google/android/gms/internal/lv:a	([Lorg/apache/http/Header;)Ljava/util/Map;
    //   84: astore 9
    //   86: iload_2
    //   87: sipush 304
    //   90: if_icmpne +89 -> 179
    //   93: aload 9
    //   95: astore 5
    //   97: aload_1
    //   98: invokevirtual 232	com/google/android/gms/internal/zzk:f	()Lcom/google/android/gms/internal/u$a;
    //   101: astore 7
    //   103: aload 7
    //   105: ifnonnull +27 -> 132
    //   108: aload 9
    //   110: astore 5
    //   112: new 253	com/google/android/gms/internal/gm
    //   115: dup
    //   116: sipush 304
    //   119: aconst_null
    //   120: aload 9
    //   122: iconst_1
    //   123: invokestatic 219	android/os/SystemClock:elapsedRealtime	()J
    //   126: lload_3
    //   127: lsub
    //   128: invokespecial 256	com/google/android/gms/internal/gm:<init>	(I[BLjava/util/Map;ZJ)V
    //   131: areturn
    //   132: aload 9
    //   134: astore 5
    //   136: aload 7
    //   138: getfield 260	com/google/android/gms/internal/u$a:g	Ljava/util/Map;
    //   141: aload 9
    //   143: invokeinterface 264 2 0
    //   148: aload 9
    //   150: astore 5
    //   152: new 253	com/google/android/gms/internal/gm
    //   155: dup
    //   156: sipush 304
    //   159: aload 7
    //   161: getfield 267	com/google/android/gms/internal/u$a:a	[B
    //   164: aload 7
    //   166: getfield 260	com/google/android/gms/internal/u$a:g	Ljava/util/Map;
    //   169: iconst_1
    //   170: invokestatic 219	android/os/SystemClock:elapsedRealtime	()J
    //   173: lload_3
    //   174: lsub
    //   175: invokespecial 256	com/google/android/gms/internal/gm:<init>	(I[BLjava/util/Map;ZJ)V
    //   178: areturn
    //   179: aload 9
    //   181: astore 5
    //   183: aload 6
    //   185: invokeinterface 271 1 0
    //   190: ifnull +79 -> 269
    //   193: aload 9
    //   195: astore 5
    //   197: aload_0
    //   198: aload 6
    //   200: invokeinterface 271 1 0
    //   205: invokespecial 273	com/google/android/gms/internal/lv:a	(Lorg/apache/http/HttpEntity;)[B
    //   208: astore 7
    //   210: aload 7
    //   212: astore 5
    //   214: aload_0
    //   215: invokestatic 219	android/os/SystemClock:elapsedRealtime	()J
    //   218: lload_3
    //   219: lsub
    //   220: aload_1
    //   221: aload 5
    //   223: aload 8
    //   225: invokespecial 275	com/google/android/gms/internal/lv:a	(JLcom/google/android/gms/internal/zzk;[BLorg/apache/http/StatusLine;)V
    //   228: iload_2
    //   229: sipush 200
    //   232: if_icmplt +10 -> 242
    //   235: iload_2
    //   236: sipush 299
    //   239: if_icmple +46 -> 285
    //   242: new 159	java/io/IOException
    //   245: dup
    //   246: invokespecial 276	java/io/IOException:<init>	()V
    //   249: athrow
    //   250: astore 5
    //   252: ldc_w 278
    //   255: aload_1
    //   256: new 280	com/google/android/gms/internal/zzq
    //   259: dup
    //   260: invokespecial 281	com/google/android/gms/internal/zzq:<init>	()V
    //   263: invokestatic 283	com/google/android/gms/internal/lv:a	(Ljava/lang/String;Lcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzr;)V
    //   266: goto -262 -> 4
    //   269: aload 9
    //   271: astore 5
    //   273: iconst_0
    //   274: newarray <illegal type>
    //   276: astore 7
    //   278: aload 7
    //   280: astore 5
    //   282: goto -68 -> 214
    //   285: new 253	com/google/android/gms/internal/gm
    //   288: dup
    //   289: iload_2
    //   290: aload 5
    //   292: aload 9
    //   294: iconst_0
    //   295: invokestatic 219	android/os/SystemClock:elapsedRealtime	()J
    //   298: lload_3
    //   299: lsub
    //   300: invokespecial 256	com/google/android/gms/internal/gm:<init>	(I[BLjava/util/Map;ZJ)V
    //   303: astore 7
    //   305: aload 7
    //   307: areturn
    //   308: astore 5
    //   310: ldc_w 285
    //   313: aload_1
    //   314: new 280	com/google/android/gms/internal/zzq
    //   317: dup
    //   318: invokespecial 281	com/google/android/gms/internal/zzq:<init>	()V
    //   321: invokestatic 283	com/google/android/gms/internal/lv:a	(Ljava/lang/String;Lcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzr;)V
    //   324: goto -320 -> 4
    //   327: astore 5
    //   329: new 287	java/lang/RuntimeException
    //   332: dup
    //   333: new 289	java/lang/StringBuilder
    //   336: dup
    //   337: invokespecial 290	java/lang/StringBuilder:<init>	()V
    //   340: ldc_w 292
    //   343: invokevirtual 296	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   346: aload_1
    //   347: invokevirtual 298	com/google/android/gms/internal/zzk:d	()Ljava/lang/String;
    //   350: invokevirtual 296	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   353: invokevirtual 301	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   356: aload 5
    //   358: invokespecial 304	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   361: athrow
    //   362: astore 6
    //   364: aconst_null
    //   365: astore 8
    //   367: aload 7
    //   369: astore 5
    //   371: aload 9
    //   373: astore 7
    //   375: aload 7
    //   377: ifnull +98 -> 475
    //   380: aload 7
    //   382: invokeinterface 245 1 0
    //   387: invokeinterface 93 1 0
    //   392: istore_2
    //   393: ldc_w 306
    //   396: iconst_2
    //   397: anewarray 4	java/lang/Object
    //   400: dup
    //   401: iconst_0
    //   402: iload_2
    //   403: invokestatic 80	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   406: aastore
    //   407: dup
    //   408: iconst_1
    //   409: aload_1
    //   410: invokevirtual 298	com/google/android/gms/internal/zzk:d	()Ljava/lang/String;
    //   413: aastore
    //   414: invokestatic 308	com/google/android/gms/internal/li:c	(Ljava/lang/String;[Ljava/lang/Object;)V
    //   417: aload 8
    //   419: ifnull +76 -> 495
    //   422: new 253	com/google/android/gms/internal/gm
    //   425: dup
    //   426: iload_2
    //   427: aload 8
    //   429: aload 5
    //   431: iconst_0
    //   432: invokestatic 219	android/os/SystemClock:elapsedRealtime	()J
    //   435: lload_3
    //   436: lsub
    //   437: invokespecial 256	com/google/android/gms/internal/gm:<init>	(I[BLjava/util/Map;ZJ)V
    //   440: astore 5
    //   442: iload_2
    //   443: sipush 401
    //   446: if_icmpeq +10 -> 456
    //   449: iload_2
    //   450: sipush 403
    //   453: if_icmpne +32 -> 485
    //   456: ldc_w 310
    //   459: aload_1
    //   460: new 312	com/google/android/gms/internal/zza
    //   463: dup
    //   464: aload 5
    //   466: invokespecial 315	com/google/android/gms/internal/zza:<init>	(Lcom/google/android/gms/internal/gm;)V
    //   469: invokestatic 283	com/google/android/gms/internal/lv:a	(Ljava/lang/String;Lcom/google/android/gms/internal/zzk;Lcom/google/android/gms/internal/zzr;)V
    //   472: goto -468 -> 4
    //   475: new 317	com/google/android/gms/internal/zzj
    //   478: dup
    //   479: aload 6
    //   481: invokespecial 320	com/google/android/gms/internal/zzj:<init>	(Ljava/lang/Throwable;)V
    //   484: athrow
    //   485: new 161	com/google/android/gms/internal/zzp
    //   488: dup
    //   489: aload 5
    //   491: invokespecial 321	com/google/android/gms/internal/zzp:<init>	(Lcom/google/android/gms/internal/gm;)V
    //   494: athrow
    //   495: new 323	com/google/android/gms/internal/zzh
    //   498: dup
    //   499: aconst_null
    //   500: invokespecial 324	com/google/android/gms/internal/zzh:<init>	(Lcom/google/android/gms/internal/gm;)V
    //   503: athrow
    //   504: astore 9
    //   506: aconst_null
    //   507: astore 8
    //   509: aload 6
    //   511: astore 7
    //   513: aload 9
    //   515: astore 6
    //   517: goto -142 -> 375
    //   520: astore 8
    //   522: aload 6
    //   524: astore 7
    //   526: aload 8
    //   528: astore 6
    //   530: aload 5
    //   532: astore 8
    //   534: aload 9
    //   536: astore 5
    //   538: goto -163 -> 375
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	541	0	this	lv
    //   0	541	1	paramzzk	zzk<?>
    //   69	385	2	i	int
    //   3	433	3	l	long
    //   19	203	5	localObject1	Object
    //   250	1	5	localSocketTimeoutException	java.net.SocketTimeoutException
    //   271	20	5	localObject2	Object
    //   308	1	5	localConnectTimeoutException	org.apache.http.conn.ConnectTimeoutException
    //   327	30	5	localMalformedURLException	java.net.MalformedURLException
    //   369	168	5	localObject3	Object
    //   43	156	6	localHttpResponse	org.apache.http.HttpResponse
    //   362	148	6	localIOException1	IOException
    //   515	14	6	localObject4	Object
    //   10	515	7	localObject5	Object
    //   56	452	8	localStatusLine	StatusLine
    //   520	7	8	localIOException2	IOException
    //   532	1	8	localObject6	Object
    //   5	367	9	localMap	Map
    //   504	31	9	localIOException3	IOException
    // Exception table:
    //   from	to	target	type
    //   12	45	250	java/net/SocketTimeoutException
    //   49	58	250	java/net/SocketTimeoutException
    //   62	70	250	java/net/SocketTimeoutException
    //   74	86	250	java/net/SocketTimeoutException
    //   97	103	250	java/net/SocketTimeoutException
    //   112	132	250	java/net/SocketTimeoutException
    //   136	148	250	java/net/SocketTimeoutException
    //   152	179	250	java/net/SocketTimeoutException
    //   183	193	250	java/net/SocketTimeoutException
    //   197	210	250	java/net/SocketTimeoutException
    //   214	228	250	java/net/SocketTimeoutException
    //   242	250	250	java/net/SocketTimeoutException
    //   273	278	250	java/net/SocketTimeoutException
    //   285	305	250	java/net/SocketTimeoutException
    //   12	45	308	org/apache/http/conn/ConnectTimeoutException
    //   49	58	308	org/apache/http/conn/ConnectTimeoutException
    //   62	70	308	org/apache/http/conn/ConnectTimeoutException
    //   74	86	308	org/apache/http/conn/ConnectTimeoutException
    //   97	103	308	org/apache/http/conn/ConnectTimeoutException
    //   112	132	308	org/apache/http/conn/ConnectTimeoutException
    //   136	148	308	org/apache/http/conn/ConnectTimeoutException
    //   152	179	308	org/apache/http/conn/ConnectTimeoutException
    //   183	193	308	org/apache/http/conn/ConnectTimeoutException
    //   197	210	308	org/apache/http/conn/ConnectTimeoutException
    //   214	228	308	org/apache/http/conn/ConnectTimeoutException
    //   242	250	308	org/apache/http/conn/ConnectTimeoutException
    //   273	278	308	org/apache/http/conn/ConnectTimeoutException
    //   285	305	308	org/apache/http/conn/ConnectTimeoutException
    //   12	45	327	java/net/MalformedURLException
    //   49	58	327	java/net/MalformedURLException
    //   62	70	327	java/net/MalformedURLException
    //   74	86	327	java/net/MalformedURLException
    //   97	103	327	java/net/MalformedURLException
    //   112	132	327	java/net/MalformedURLException
    //   136	148	327	java/net/MalformedURLException
    //   152	179	327	java/net/MalformedURLException
    //   183	193	327	java/net/MalformedURLException
    //   197	210	327	java/net/MalformedURLException
    //   214	228	327	java/net/MalformedURLException
    //   242	250	327	java/net/MalformedURLException
    //   273	278	327	java/net/MalformedURLException
    //   285	305	327	java/net/MalformedURLException
    //   12	45	362	java/io/IOException
    //   49	58	504	java/io/IOException
    //   62	70	504	java/io/IOException
    //   74	86	504	java/io/IOException
    //   97	103	504	java/io/IOException
    //   112	132	504	java/io/IOException
    //   136	148	504	java/io/IOException
    //   152	179	504	java/io/IOException
    //   183	193	504	java/io/IOException
    //   197	210	504	java/io/IOException
    //   273	278	504	java/io/IOException
    //   214	228	520	java/io/IOException
    //   242	250	520	java/io/IOException
    //   285	305	520	java/io/IOException
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */