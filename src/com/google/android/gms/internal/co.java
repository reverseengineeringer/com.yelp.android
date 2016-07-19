package com.google.android.gms.internal;

import android.content.Context;
import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@fv
public class co
  extends cl
{
  private static final Set<String> d = Collections.synchronizedSet(new HashSet());
  private static final DecimalFormat e = new DecimalFormat("#,###");
  private File f;
  private boolean g;
  
  public co(ib paramib)
  {
    super(paramib);
    paramib = a.getCacheDir();
    if (paramib == null) {
      gz.d("Context.getCacheDir() returned null");
    }
    do
    {
      return;
      f = new File(paramib, "admobVideoStreams");
      if ((!f.isDirectory()) && (!f.mkdirs()))
      {
        gz.d("Could not create preload cache directory at " + f.getAbsolutePath());
        f = null;
        return;
      }
    } while ((f.setReadable(true, false)) && (f.setExecutable(true, false)));
    gz.d("Could not set cache file permissions at " + f.getAbsolutePath());
    f = null;
  }
  
  private File a(File paramFile)
  {
    return new File(f, paramFile.getName() + ".done");
  }
  
  private static void b(File paramFile)
  {
    if (paramFile.isFile())
    {
      paramFile.setLastModified(System.currentTimeMillis());
      return;
    }
    try
    {
      paramFile.createNewFile();
      return;
    }
    catch (IOException paramFile) {}
  }
  
  public void a()
  {
    g = true;
  }
  
  /* Error */
  public boolean a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 67	com/google/android/gms/internal/co:f	Ljava/io/File;
    //   4: ifnonnull +14 -> 18
    //   7: aload_0
    //   8: aload_1
    //   9: aconst_null
    //   10: ldc -122
    //   12: aconst_null
    //   13: invokevirtual 137	com/google/android/gms/internal/co:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   16: iconst_0
    //   17: ireturn
    //   18: aload_0
    //   19: invokevirtual 140	com/google/android/gms/internal/co:b	()I
    //   22: getstatic 146	com/google/android/gms/internal/ao:o	Lcom/google/android/gms/internal/ak;
    //   25: invokevirtual 152	com/google/android/gms/internal/ak:c	()Ljava/lang/Object;
    //   28: checkcast 154	java/lang/Integer
    //   31: invokevirtual 157	java/lang/Integer:intValue	()I
    //   34: if_icmple +26 -> 60
    //   37: aload_0
    //   38: invokevirtual 159	com/google/android/gms/internal/co:c	()Z
    //   41: ifne -23 -> 18
    //   44: ldc -95
    //   46: invokestatic 58	com/google/android/gms/internal/gz:d	(Ljava/lang/String;)V
    //   49: aload_0
    //   50: aload_1
    //   51: aconst_null
    //   52: ldc -93
    //   54: aconst_null
    //   55: invokevirtual 137	com/google/android/gms/internal/co:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   58: iconst_0
    //   59: ireturn
    //   60: aload_0
    //   61: aload_1
    //   62: invokevirtual 166	com/google/android/gms/internal/co:b	(Ljava/lang/String;)Ljava/lang/String;
    //   65: astore 10
    //   67: new 60	java/io/File
    //   70: dup
    //   71: aload_0
    //   72: getfield 67	com/google/android/gms/internal/co:f	Ljava/io/File;
    //   75: aload 10
    //   77: invokespecial 65	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   80: astore 16
    //   82: aload_0
    //   83: aload 16
    //   85: invokespecial 168	com/google/android/gms/internal/co:a	(Ljava/io/File;)Ljava/io/File;
    //   88: astore 11
    //   90: aload 16
    //   92: invokevirtual 112	java/io/File:isFile	()Z
    //   95: ifeq +53 -> 148
    //   98: aload 11
    //   100: invokevirtual 112	java/io/File:isFile	()Z
    //   103: ifeq +45 -> 148
    //   106: aload 16
    //   108: invokevirtual 171	java/io/File:length	()J
    //   111: l2i
    //   112: istore_2
    //   113: new 76	java/lang/StringBuilder
    //   116: dup
    //   117: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   120: ldc -83
    //   122: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   125: aload_1
    //   126: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   129: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   132: invokestatic 175	com/google/android/gms/internal/gz:a	(Ljava/lang/String;)V
    //   135: aload_0
    //   136: aload_1
    //   137: aload 16
    //   139: invokevirtual 87	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   142: iload_2
    //   143: invokevirtual 178	com/google/android/gms/internal/co:a	(Ljava/lang/String;Ljava/lang/String;I)V
    //   146: iconst_1
    //   147: ireturn
    //   148: new 76	java/lang/StringBuilder
    //   151: dup
    //   152: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   155: aload_0
    //   156: getfield 67	com/google/android/gms/internal/co:f	Ljava/io/File;
    //   159: invokevirtual 87	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   162: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   165: aload_1
    //   166: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   169: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   172: astore 17
    //   174: getstatic 29	com/google/android/gms/internal/co:d	Ljava/util/Set;
    //   177: astore 10
    //   179: aload 10
    //   181: monitorenter
    //   182: getstatic 29	com/google/android/gms/internal/co:d	Ljava/util/Set;
    //   185: aload 17
    //   187: invokeinterface 184 2 0
    //   192: ifeq +49 -> 241
    //   195: new 76	java/lang/StringBuilder
    //   198: dup
    //   199: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   202: ldc -70
    //   204: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   207: aload_1
    //   208: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   211: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   214: invokestatic 58	com/google/android/gms/internal/gz:d	(Ljava/lang/String;)V
    //   217: aload_0
    //   218: aload_1
    //   219: aload 16
    //   221: invokevirtual 87	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   224: ldc -68
    //   226: aconst_null
    //   227: invokevirtual 137	com/google/android/gms/internal/co:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   230: aload 10
    //   232: monitorexit
    //   233: iconst_0
    //   234: ireturn
    //   235: astore_1
    //   236: aload 10
    //   238: monitorexit
    //   239: aload_1
    //   240: athrow
    //   241: getstatic 29	com/google/android/gms/internal/co:d	Ljava/util/Set;
    //   244: aload 17
    //   246: invokeinterface 191 2 0
    //   251: pop
    //   252: aload 10
    //   254: monitorexit
    //   255: aconst_null
    //   256: astore 13
    //   258: new 193	java/net/URL
    //   261: dup
    //   262: aload_1
    //   263: invokespecial 194	java/net/URL:<init>	(Ljava/lang/String;)V
    //   266: invokevirtual 198	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   269: astore 10
    //   271: getstatic 201	com/google/android/gms/internal/ao:t	Lcom/google/android/gms/internal/ak;
    //   274: invokevirtual 152	com/google/android/gms/internal/ak:c	()Ljava/lang/Object;
    //   277: checkcast 154	java/lang/Integer
    //   280: invokevirtual 157	java/lang/Integer:intValue	()I
    //   283: istore_2
    //   284: aload 10
    //   286: iload_2
    //   287: invokevirtual 207	java/net/URLConnection:setConnectTimeout	(I)V
    //   290: aload 10
    //   292: iload_2
    //   293: invokevirtual 210	java/net/URLConnection:setReadTimeout	(I)V
    //   296: aload 10
    //   298: instanceof 212
    //   301: ifeq +211 -> 512
    //   304: aload 10
    //   306: checkcast 212	java/net/HttpURLConnection
    //   309: invokevirtual 215	java/net/HttpURLConnection:getResponseCode	()I
    //   312: istore_2
    //   313: iload_2
    //   314: sipush 400
    //   317: if_icmplt +195 -> 512
    //   320: ldc -39
    //   322: astore 12
    //   324: new 76	java/lang/StringBuilder
    //   327: dup
    //   328: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   331: ldc -37
    //   333: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   336: iload_2
    //   337: invokestatic 222	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   340: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   343: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   346: astore 11
    //   348: new 109	java/io/IOException
    //   351: dup
    //   352: new 76	java/lang/StringBuilder
    //   355: dup
    //   356: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   359: ldc -32
    //   361: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   364: iload_2
    //   365: invokevirtual 227	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   368: ldc -27
    //   370: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   373: aload_1
    //   374: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   377: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   380: invokespecial 230	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   383: athrow
    //   384: astore 10
    //   386: aload 10
    //   388: instanceof 130
    //   391: ifeq +12 -> 403
    //   394: invokestatic 236	com/google/android/gms/ads/internal/s:h	()Lcom/google/android/gms/internal/gt;
    //   397: aload 10
    //   399: iconst_1
    //   400: invokevirtual 241	com/google/android/gms/internal/gt:a	(Ljava/lang/Throwable;Z)V
    //   403: aload 13
    //   405: invokevirtual 246	java/io/FileOutputStream:close	()V
    //   408: aload_0
    //   409: getfield 127	com/google/android/gms/internal/co:g	Z
    //   412: ifeq +802 -> 1214
    //   415: new 76	java/lang/StringBuilder
    //   418: dup
    //   419: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   422: ldc -8
    //   424: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   427: aload_1
    //   428: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   431: ldc -6
    //   433: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   436: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   439: invokestatic 252	com/google/android/gms/internal/gz:c	(Ljava/lang/String;)V
    //   442: aload 16
    //   444: invokevirtual 255	java/io/File:exists	()Z
    //   447: ifeq +38 -> 485
    //   450: aload 16
    //   452: invokevirtual 258	java/io/File:delete	()Z
    //   455: ifne +30 -> 485
    //   458: new 76	java/lang/StringBuilder
    //   461: dup
    //   462: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   465: ldc_w 260
    //   468: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   471: aload 16
    //   473: invokevirtual 87	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   476: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   479: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   482: invokestatic 58	com/google/android/gms/internal/gz:d	(Ljava/lang/String;)V
    //   485: aload_0
    //   486: aload_1
    //   487: aload 16
    //   489: invokevirtual 87	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   492: aload 12
    //   494: aload 11
    //   496: invokevirtual 137	com/google/android/gms/internal/co:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   499: getstatic 29	com/google/android/gms/internal/co:d	Ljava/util/Set;
    //   502: aload 17
    //   504: invokeinterface 263 2 0
    //   509: pop
    //   510: iconst_0
    //   511: ireturn
    //   512: aload 10
    //   514: invokevirtual 266	java/net/URLConnection:getContentLength	()I
    //   517: istore 4
    //   519: iload 4
    //   521: ifge +53 -> 574
    //   524: new 76	java/lang/StringBuilder
    //   527: dup
    //   528: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   531: ldc_w 268
    //   534: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   537: aload_1
    //   538: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   541: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   544: invokestatic 58	com/google/android/gms/internal/gz:d	(Ljava/lang/String;)V
    //   547: aload_0
    //   548: aload_1
    //   549: aload 16
    //   551: invokevirtual 87	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   554: ldc_w 270
    //   557: aconst_null
    //   558: invokevirtual 137	com/google/android/gms/internal/co:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   561: getstatic 29	com/google/android/gms/internal/co:d	Ljava/util/Set;
    //   564: aload 17
    //   566: invokeinterface 263 2 0
    //   571: pop
    //   572: iconst_0
    //   573: ireturn
    //   574: getstatic 38	com/google/android/gms/internal/co:e	Ljava/text/DecimalFormat;
    //   577: iload 4
    //   579: i2l
    //   580: invokevirtual 274	java/text/DecimalFormat:format	(J)Ljava/lang/String;
    //   583: astore 12
    //   585: getstatic 277	com/google/android/gms/internal/ao:p	Lcom/google/android/gms/internal/ak;
    //   588: invokevirtual 152	com/google/android/gms/internal/ak:c	()Ljava/lang/Object;
    //   591: checkcast 154	java/lang/Integer
    //   594: invokevirtual 157	java/lang/Integer:intValue	()I
    //   597: istore 5
    //   599: iload 4
    //   601: iload 5
    //   603: if_icmple +88 -> 691
    //   606: new 76	java/lang/StringBuilder
    //   609: dup
    //   610: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   613: ldc_w 279
    //   616: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   619: aload 12
    //   621: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   624: ldc_w 281
    //   627: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   630: aload_1
    //   631: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   634: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   637: invokestatic 58	com/google/android/gms/internal/gz:d	(Ljava/lang/String;)V
    //   640: new 76	java/lang/StringBuilder
    //   643: dup
    //   644: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   647: ldc_w 283
    //   650: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   653: aload 12
    //   655: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   658: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   661: astore 10
    //   663: aload_0
    //   664: aload_1
    //   665: aload 16
    //   667: invokevirtual 87	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   670: ldc_w 285
    //   673: aload 10
    //   675: invokevirtual 137	com/google/android/gms/internal/co:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    //   678: getstatic 29	com/google/android/gms/internal/co:d	Ljava/util/Set;
    //   681: aload 17
    //   683: invokeinterface 263 2 0
    //   688: pop
    //   689: iconst_0
    //   690: ireturn
    //   691: new 76	java/lang/StringBuilder
    //   694: dup
    //   695: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   698: ldc_w 287
    //   701: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   704: aload 12
    //   706: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   709: ldc_w 289
    //   712: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   715: aload_1
    //   716: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   719: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   722: invokestatic 175	com/google/android/gms/internal/gz:a	(Ljava/lang/String;)V
    //   725: aload 10
    //   727: invokevirtual 293	java/net/URLConnection:getInputStream	()Ljava/io/InputStream;
    //   730: invokestatic 299	java/nio/channels/Channels:newChannel	(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;
    //   733: astore 12
    //   735: new 243	java/io/FileOutputStream
    //   738: dup
    //   739: aload 16
    //   741: invokespecial 301	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   744: astore 10
    //   746: aload 10
    //   748: invokevirtual 305	java/io/FileOutputStream:getChannel	()Ljava/nio/channels/FileChannel;
    //   751: astore 13
    //   753: ldc_w 306
    //   756: invokestatic 312	java/nio/ByteBuffer:allocate	(I)Ljava/nio/ByteBuffer;
    //   759: astore 14
    //   761: invokestatic 316	com/google/android/gms/ads/internal/s:i	()Lcom/google/android/gms/internal/jt;
    //   764: astore 15
    //   766: iconst_0
    //   767: istore_2
    //   768: aload 15
    //   770: invokeinterface 320 1 0
    //   775: lstore 6
    //   777: new 322	com/google/android/gms/internal/hl
    //   780: dup
    //   781: getstatic 325	com/google/android/gms/internal/ao:s	Lcom/google/android/gms/internal/ak;
    //   784: invokevirtual 152	com/google/android/gms/internal/ak:c	()Ljava/lang/Object;
    //   787: checkcast 327	java/lang/Long
    //   790: invokevirtual 330	java/lang/Long:longValue	()J
    //   793: invokespecial 333	com/google/android/gms/internal/hl:<init>	(J)V
    //   796: astore 18
    //   798: getstatic 336	com/google/android/gms/internal/ao:r	Lcom/google/android/gms/internal/ak;
    //   801: invokevirtual 152	com/google/android/gms/internal/ak:c	()Ljava/lang/Object;
    //   804: checkcast 327	java/lang/Long
    //   807: invokevirtual 330	java/lang/Long:longValue	()J
    //   810: lstore 8
    //   812: aload 12
    //   814: aload 14
    //   816: invokeinterface 342 2 0
    //   821: istore_3
    //   822: iload_3
    //   823: iflt +298 -> 1121
    //   826: iload_2
    //   827: iload_3
    //   828: iadd
    //   829: istore_3
    //   830: iload_3
    //   831: iload 5
    //   833: if_icmple +85 -> 918
    //   836: ldc_w 285
    //   839: astore 11
    //   841: aload 11
    //   843: astore 12
    //   845: aload 11
    //   847: astore 13
    //   849: new 76	java/lang/StringBuilder
    //   852: dup
    //   853: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   856: ldc_w 283
    //   859: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   862: iload_3
    //   863: invokestatic 222	java/lang/Integer:toString	(I)Ljava/lang/String;
    //   866: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   869: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   872: astore 14
    //   874: aload 14
    //   876: astore 13
    //   878: aload 11
    //   880: astore 12
    //   882: aload 11
    //   884: astore 15
    //   886: new 109	java/io/IOException
    //   889: dup
    //   890: ldc_w 344
    //   893: invokespecial 230	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   896: athrow
    //   897: astore 11
    //   899: aload 10
    //   901: astore 14
    //   903: aload 11
    //   905: astore 10
    //   907: aload 13
    //   909: astore 11
    //   911: aload 14
    //   913: astore 13
    //   915: goto -529 -> 386
    //   918: aload 14
    //   920: invokevirtual 348	java/nio/ByteBuffer:flip	()Ljava/nio/Buffer;
    //   923: pop
    //   924: aload 13
    //   926: aload 14
    //   928: invokevirtual 353	java/nio/channels/FileChannel:write	(Ljava/nio/ByteBuffer;)I
    //   931: ifgt -7 -> 924
    //   934: aload 14
    //   936: invokevirtual 356	java/nio/ByteBuffer:clear	()Ljava/nio/Buffer;
    //   939: pop
    //   940: aload 15
    //   942: invokeinterface 320 1 0
    //   947: lload 6
    //   949: lsub
    //   950: ldc2_w 357
    //   953: lload 8
    //   955: lmul
    //   956: lcmp
    //   957: ifle +92 -> 1049
    //   960: ldc_w 360
    //   963: astore 11
    //   965: aload 11
    //   967: astore 12
    //   969: aload 11
    //   971: astore 13
    //   973: new 76	java/lang/StringBuilder
    //   976: dup
    //   977: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   980: ldc_w 362
    //   983: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   986: lload 8
    //   988: invokestatic 364	java/lang/Long:toString	(J)Ljava/lang/String;
    //   991: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   994: ldc_w 366
    //   997: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1000: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1003: astore 14
    //   1005: aload 14
    //   1007: astore 13
    //   1009: aload 11
    //   1011: astore 12
    //   1013: aload 11
    //   1015: astore 15
    //   1017: new 109	java/io/IOException
    //   1020: dup
    //   1021: ldc_w 368
    //   1024: invokespecial 230	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   1027: athrow
    //   1028: astore 11
    //   1030: aload 10
    //   1032: astore 13
    //   1034: aload 11
    //   1036: astore 10
    //   1038: aload 14
    //   1040: astore 11
    //   1042: aload 15
    //   1044: astore 12
    //   1046: goto -660 -> 386
    //   1049: aload_0
    //   1050: getfield 127	com/google/android/gms/internal/co:g	Z
    //   1053: ifeq +39 -> 1092
    //   1056: ldc_w 370
    //   1059: astore 13
    //   1061: aload 13
    //   1063: astore 12
    //   1065: new 109	java/io/IOException
    //   1068: dup
    //   1069: ldc_w 372
    //   1072: invokespecial 230	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   1075: athrow
    //   1076: astore 14
    //   1078: aconst_null
    //   1079: astore 11
    //   1081: aload 10
    //   1083: astore 13
    //   1085: aload 14
    //   1087: astore 10
    //   1089: goto -703 -> 386
    //   1092: iload_3
    //   1093: istore_2
    //   1094: aload 18
    //   1096: invokevirtual 374	com/google/android/gms/internal/hl:a	()Z
    //   1099: ifeq -287 -> 812
    //   1102: aload_0
    //   1103: aload_1
    //   1104: aload 16
    //   1106: invokevirtual 87	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   1109: iload_3
    //   1110: iload 4
    //   1112: iconst_0
    //   1113: invokevirtual 377	com/google/android/gms/internal/co:a	(Ljava/lang/String;Ljava/lang/String;IIZ)V
    //   1116: iload_3
    //   1117: istore_2
    //   1118: goto -306 -> 812
    //   1121: aload 10
    //   1123: invokevirtual 246	java/io/FileOutputStream:close	()V
    //   1126: iconst_3
    //   1127: invokestatic 380	com/google/android/gms/internal/gz:a	(I)Z
    //   1130: ifeq +47 -> 1177
    //   1133: getstatic 38	com/google/android/gms/internal/co:e	Ljava/text/DecimalFormat;
    //   1136: iload_2
    //   1137: i2l
    //   1138: invokevirtual 274	java/text/DecimalFormat:format	(J)Ljava/lang/String;
    //   1141: astore 12
    //   1143: new 76	java/lang/StringBuilder
    //   1146: dup
    //   1147: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   1150: ldc_w 382
    //   1153: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1156: aload 12
    //   1158: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1161: ldc_w 289
    //   1164: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1167: aload_1
    //   1168: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1171: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1174: invokestatic 175	com/google/android/gms/internal/gz:a	(Ljava/lang/String;)V
    //   1177: aload 16
    //   1179: iconst_1
    //   1180: iconst_0
    //   1181: invokevirtual 94	java/io/File:setReadable	(ZZ)Z
    //   1184: pop
    //   1185: aload 11
    //   1187: invokestatic 384	com/google/android/gms/internal/co:b	(Ljava/io/File;)V
    //   1190: aload_0
    //   1191: aload_1
    //   1192: aload 16
    //   1194: invokevirtual 87	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   1197: iload_2
    //   1198: invokevirtual 178	com/google/android/gms/internal/co:a	(Ljava/lang/String;Ljava/lang/String;I)V
    //   1201: getstatic 29	com/google/android/gms/internal/co:d	Ljava/util/Set;
    //   1204: aload 17
    //   1206: invokeinterface 263 2 0
    //   1211: pop
    //   1212: iconst_1
    //   1213: ireturn
    //   1214: new 76	java/lang/StringBuilder
    //   1217: dup
    //   1218: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   1221: ldc_w 386
    //   1224: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1227: aload_1
    //   1228: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1231: ldc -6
    //   1233: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1236: invokevirtual 90	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1239: aload 10
    //   1241: invokestatic 389	com/google/android/gms/internal/gz:d	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1244: goto -802 -> 442
    //   1247: astore 13
    //   1249: goto -841 -> 408
    //   1252: astore 13
    //   1254: goto -846 -> 408
    //   1257: astore 10
    //   1259: aconst_null
    //   1260: astore 11
    //   1262: ldc_w 391
    //   1265: astore 12
    //   1267: goto -881 -> 386
    //   1270: astore 10
    //   1272: aconst_null
    //   1273: astore 11
    //   1275: goto -889 -> 386
    //   1278: astore 10
    //   1280: goto -894 -> 386
    //   1283: astore 14
    //   1285: aconst_null
    //   1286: astore 11
    //   1288: ldc_w 391
    //   1291: astore 12
    //   1293: aload 10
    //   1295: astore 13
    //   1297: aload 14
    //   1299: astore 10
    //   1301: goto -915 -> 386
    //   1304: astore 12
    //   1306: aconst_null
    //   1307: astore 11
    //   1309: aload 10
    //   1311: astore 14
    //   1313: aload 12
    //   1315: astore 10
    //   1317: aload 13
    //   1319: astore 12
    //   1321: aload 14
    //   1323: astore 13
    //   1325: goto -939 -> 386
    //   1328: astore 10
    //   1330: aconst_null
    //   1331: astore 11
    //   1333: ldc_w 391
    //   1336: astore 12
    //   1338: goto -952 -> 386
    //   1341: astore 10
    //   1343: aconst_null
    //   1344: astore 11
    //   1346: goto -960 -> 386
    //   1349: astore 14
    //   1351: aconst_null
    //   1352: astore 11
    //   1354: ldc_w 391
    //   1357: astore 12
    //   1359: aload 10
    //   1361: astore 13
    //   1363: aload 14
    //   1365: astore 10
    //   1367: goto -981 -> 386
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1370	0	this	co
    //   0	1370	1	paramString	String
    //   112	1086	2	i	int
    //   821	296	3	j	int
    //   517	594	4	k	int
    //   597	237	5	m	int
    //   775	173	6	l1	long
    //   810	177	8	l2	long
    //   65	240	10	localObject1	Object
    //   384	129	10	localIOException1	IOException
    //   661	579	10	localObject2	Object
    //   1257	1	10	localRuntimeException1	RuntimeException
    //   1270	1	10	localRuntimeException2	RuntimeException
    //   1278	16	10	localRuntimeException3	RuntimeException
    //   1299	17	10	localObject3	Object
    //   1328	1	10	localIOException2	IOException
    //   1341	19	10	localIOException3	IOException
    //   1365	1	10	localObject4	Object
    //   88	795	11	localObject5	Object
    //   897	7	11	localIOException4	IOException
    //   909	105	11	localObject6	Object
    //   1028	7	11	localRuntimeException4	RuntimeException
    //   1040	313	11	localObject7	Object
    //   322	970	12	localObject8	Object
    //   1304	10	12	localRuntimeException5	RuntimeException
    //   1319	39	12	localObject9	Object
    //   256	828	13	localObject10	Object
    //   1247	1	13	localIOException5	IOException
    //   1252	1	13	localNullPointerException	NullPointerException
    //   1295	67	13	localObject11	Object
    //   759	280	14	localObject12	Object
    //   1076	10	14	localIOException6	IOException
    //   1283	15	14	localRuntimeException6	RuntimeException
    //   1311	11	14	localObject13	Object
    //   1349	15	14	localIOException7	IOException
    //   764	279	15	localObject14	Object
    //   80	1113	16	localFile	File
    //   172	1033	17	str	String
    //   796	299	18	localhl	hl
    // Exception table:
    //   from	to	target	type
    //   182	233	235	finally
    //   236	239	235	finally
    //   241	255	235	finally
    //   348	384	384	java/io/IOException
    //   886	897	897	java/io/IOException
    //   1017	1028	897	java/io/IOException
    //   886	897	1028	java/lang/RuntimeException
    //   1017	1028	1028	java/lang/RuntimeException
    //   849	874	1076	java/io/IOException
    //   973	1005	1076	java/io/IOException
    //   1065	1076	1076	java/io/IOException
    //   403	408	1247	java/io/IOException
    //   403	408	1252	java/lang/NullPointerException
    //   258	313	1257	java/lang/RuntimeException
    //   512	519	1257	java/lang/RuntimeException
    //   524	572	1257	java/lang/RuntimeException
    //   574	599	1257	java/lang/RuntimeException
    //   606	689	1257	java/lang/RuntimeException
    //   691	746	1257	java/lang/RuntimeException
    //   324	348	1270	java/lang/RuntimeException
    //   348	384	1278	java/lang/RuntimeException
    //   746	766	1283	java/lang/RuntimeException
    //   768	812	1283	java/lang/RuntimeException
    //   812	822	1283	java/lang/RuntimeException
    //   918	924	1283	java/lang/RuntimeException
    //   924	960	1283	java/lang/RuntimeException
    //   1049	1056	1283	java/lang/RuntimeException
    //   1094	1116	1283	java/lang/RuntimeException
    //   1121	1177	1283	java/lang/RuntimeException
    //   1177	1212	1283	java/lang/RuntimeException
    //   849	874	1304	java/lang/RuntimeException
    //   973	1005	1304	java/lang/RuntimeException
    //   1065	1076	1304	java/lang/RuntimeException
    //   258	313	1328	java/io/IOException
    //   512	519	1328	java/io/IOException
    //   524	572	1328	java/io/IOException
    //   574	599	1328	java/io/IOException
    //   606	689	1328	java/io/IOException
    //   691	746	1328	java/io/IOException
    //   324	348	1341	java/io/IOException
    //   746	766	1349	java/io/IOException
    //   768	812	1349	java/io/IOException
    //   812	822	1349	java/io/IOException
    //   918	924	1349	java/io/IOException
    //   924	960	1349	java/io/IOException
    //   1049	1056	1349	java/io/IOException
    //   1094	1116	1349	java/io/IOException
    //   1121	1177	1349	java/io/IOException
    //   1177	1212	1349	java/io/IOException
  }
  
  public int b()
  {
    int i = 0;
    int k = 0;
    if (f == null) {
      return k;
    }
    File[] arrayOfFile = f.listFiles();
    int m = arrayOfFile.length;
    int j = 0;
    for (;;)
    {
      k = i;
      if (j >= m) {
        break;
      }
      k = i;
      if (!arrayOfFile[j].getName().endsWith(".done")) {
        k = i + 1;
      }
      j += 1;
      i = k;
    }
  }
  
  public boolean c()
  {
    if (f == null) {
      return false;
    }
    Object localObject = null;
    long l1 = Long.MAX_VALUE;
    File[] arrayOfFile = f.listFiles();
    int j = arrayOfFile.length;
    int i = 0;
    if (i < j)
    {
      File localFile = arrayOfFile[i];
      if (localFile.getName().endsWith(".done")) {
        break label134;
      }
      long l2 = localFile.lastModified();
      if (l2 >= l1) {
        break label134;
      }
      localObject = localFile;
      l1 = l2;
    }
    label134:
    for (;;)
    {
      i += 1;
      break;
      boolean bool2;
      if (localObject != null)
      {
        bool2 = ((File)localObject).delete();
        localObject = a((File)localObject);
        bool1 = bool2;
        if (!((File)localObject).isFile()) {}
      }
      for (boolean bool1 = bool2 & ((File)localObject).delete();; bool1 = false) {
        return bool1;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.co
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */