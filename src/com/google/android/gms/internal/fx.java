package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.RemoteException;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.request.i.a;
import com.google.android.gms.ads.internal.request.j;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;

@fv
public final class fx
  extends i.a
{
  private static final Object a = new Object();
  private static fx b;
  private final Context c;
  private final fw d;
  private final ah e;
  private final db f;
  
  fx(Context paramContext, ah paramah, fw paramfw)
  {
    c = paramContext;
    d = paramfw;
    e = paramah;
    if (paramContext.getApplicationContext() != null) {
      paramContext = paramContext.getApplicationContext();
    }
    for (;;)
    {
      f = new db(paramContext, new VersionInfoParcel(8487000, 8487000, true), paramah.a(), new db.b()new db.c
      {
        public void a(cy paramAnonymouscy)
        {
          paramAnonymouscy.a("/log", by.i);
        }
      }, new db.c());
      return;
    }
  }
  
  /* Error */
  private static AdResponseParcel a(final Context paramContext, db paramdb, final ah paramah, fw paramfw, final AdRequestInfoParcel paramAdRequestInfoParcel)
  {
    // Byte code:
    //   0: ldc 96
    //   2: invokestatic 101	com/google/android/gms/internal/gz:a	(Ljava/lang/String;)V
    //   5: aload_0
    //   6: invokestatic 106	com/google/android/gms/internal/ao:a	(Landroid/content/Context;)V
    //   9: new 108	com/google/android/gms/internal/ax
    //   12: dup
    //   13: getstatic 112	com/google/android/gms/internal/ao:G	Lcom/google/android/gms/internal/ak;
    //   16: invokevirtual 117	com/google/android/gms/internal/ak:c	()Ljava/lang/Object;
    //   19: checkcast 119	java/lang/Boolean
    //   22: invokevirtual 123	java/lang/Boolean:booleanValue	()Z
    //   25: ldc 125
    //   27: aload 4
    //   29: getfield 130	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:d	Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    //   32: getfield 135	com/google/android/gms/ads/internal/client/AdSizeParcel:b	Ljava/lang/String;
    //   35: invokespecial 138	com/google/android/gms/internal/ax:<init>	(ZLjava/lang/String;Ljava/lang/String;)V
    //   38: astore 9
    //   40: aload 4
    //   42: getfield 141	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:a	I
    //   45: bipush 10
    //   47: if_icmple +40 -> 87
    //   50: aload 4
    //   52: getfield 145	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:B	J
    //   55: ldc2_w 146
    //   58: lcmp
    //   59: ifeq +28 -> 87
    //   62: aload 9
    //   64: aload 9
    //   66: aload 4
    //   68: getfield 145	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:B	J
    //   71: invokevirtual 150	com/google/android/gms/internal/ax:a	(J)Lcom/google/android/gms/internal/au;
    //   74: iconst_1
    //   75: anewarray 152	java/lang/String
    //   78: dup
    //   79: iconst_0
    //   80: ldc -102
    //   82: aastore
    //   83: invokevirtual 157	com/google/android/gms/internal/ax:a	(Lcom/google/android/gms/internal/au;[Ljava/lang/String;)Z
    //   86: pop
    //   87: aload 9
    //   89: invokevirtual 160	com/google/android/gms/internal/ax:a	()Lcom/google/android/gms/internal/au;
    //   92: astore 10
    //   94: aload 4
    //   96: getfield 141	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:a	I
    //   99: iconst_4
    //   100: if_icmplt +897 -> 997
    //   103: aload 4
    //   105: getfield 164	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:o	Landroid/os/Bundle;
    //   108: ifnull +889 -> 997
    //   111: aload 4
    //   113: getfield 164	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:o	Landroid/os/Bundle;
    //   116: astore 6
    //   118: getstatic 167	com/google/android/gms/internal/ao:P	Lcom/google/android/gms/internal/ak;
    //   121: invokevirtual 117	com/google/android/gms/internal/ak:c	()Ljava/lang/Object;
    //   124: checkcast 119	java/lang/Boolean
    //   127: invokevirtual 123	java/lang/Boolean:booleanValue	()Z
    //   130: ifeq +857 -> 987
    //   133: aload_3
    //   134: getfield 173	com/google/android/gms/internal/fw:i	Lcom/google/android/gms/internal/gb;
    //   137: ifnull +850 -> 987
    //   140: aload 6
    //   142: astore 5
    //   144: aload 6
    //   146: ifnonnull +36 -> 182
    //   149: aload 6
    //   151: astore 5
    //   153: getstatic 176	com/google/android/gms/internal/ao:Q	Lcom/google/android/gms/internal/ak;
    //   156: invokevirtual 117	com/google/android/gms/internal/ak:c	()Ljava/lang/Object;
    //   159: checkcast 119	java/lang/Boolean
    //   162: invokevirtual 123	java/lang/Boolean:booleanValue	()Z
    //   165: ifeq +17 -> 182
    //   168: ldc -78
    //   170: invokestatic 180	com/google/android/gms/internal/gz:e	(Ljava/lang/String;)V
    //   173: new 182	android/os/Bundle
    //   176: dup
    //   177: invokespecial 183	android/os/Bundle:<init>	()V
    //   180: astore 5
    //   182: aload 5
    //   184: ifnull +797 -> 981
    //   187: new 6	com/google/android/gms/internal/fx$1
    //   190: dup
    //   191: aload_3
    //   192: aload_0
    //   193: aload 4
    //   195: aload 5
    //   197: invokespecial 186	com/google/android/gms/internal/fx$1:<init>	(Lcom/google/android/gms/internal/fw;Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/os/Bundle;)V
    //   200: invokestatic 191	com/google/android/gms/internal/hc:a	(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/hs;
    //   203: astore 6
    //   205: aload_3
    //   206: getfield 194	com/google/android/gms/internal/fw:d	Lcom/google/android/gms/internal/df;
    //   209: invokeinterface 198 1 0
    //   214: invokestatic 204	com/google/android/gms/ads/internal/s:k	()Lcom/google/android/gms/internal/ge;
    //   217: aload_0
    //   218: invokevirtual 209	com/google/android/gms/internal/ge:a	(Landroid/content/Context;)Lcom/google/android/gms/internal/gd;
    //   221: astore 12
    //   223: aload 12
    //   225: getfield 214	com/google/android/gms/internal/gd:m	I
    //   228: iconst_m1
    //   229: if_icmpne +17 -> 246
    //   232: ldc -40
    //   234: invokestatic 101	com/google/android/gms/internal/gz:a	(Ljava/lang/String;)V
    //   237: new 218	com/google/android/gms/ads/internal/request/AdResponseParcel
    //   240: dup
    //   241: iconst_2
    //   242: invokespecial 221	com/google/android/gms/ads/internal/request/AdResponseParcel:<init>	(I)V
    //   245: areturn
    //   246: aload 4
    //   248: getfield 141	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:a	I
    //   251: bipush 7
    //   253: if_icmplt +69 -> 322
    //   256: aload 4
    //   258: getfield 224	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:w	Ljava/lang/String;
    //   261: astore 7
    //   263: new 226	com/google/android/gms/internal/fz
    //   266: dup
    //   267: aload 7
    //   269: aload 4
    //   271: getfield 229	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:f	Landroid/content/pm/ApplicationInfo;
    //   274: getfield 234	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   277: invokespecial 237	com/google/android/gms/internal/fz:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   280: astore 11
    //   282: aload 4
    //   284: getfield 240	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:c	Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    //   287: getfield 244	com/google/android/gms/ads/internal/client/AdRequestParcel:c	Landroid/os/Bundle;
    //   290: ifnull +43 -> 333
    //   293: aload 4
    //   295: getfield 240	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:c	Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    //   298: getfield 244	com/google/android/gms/ads/internal/client/AdRequestParcel:c	Landroid/os/Bundle;
    //   301: ldc -10
    //   303: invokevirtual 250	android/os/Bundle:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   306: astore 8
    //   308: aload 8
    //   310: ifnull +23 -> 333
    //   313: aload_0
    //   314: aload 4
    //   316: aload 8
    //   318: invokestatic 255	com/google/android/gms/internal/fy:a	(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    //   321: areturn
    //   322: invokestatic 261	java/util/UUID:randomUUID	()Ljava/util/UUID;
    //   325: invokevirtual 264	java/util/UUID:toString	()Ljava/lang/String;
    //   328: astore 7
    //   330: goto -67 -> 263
    //   333: aload_3
    //   334: getfield 194	com/google/android/gms/internal/fw:d	Lcom/google/android/gms/internal/df;
    //   337: ldc2_w 265
    //   340: invokeinterface 269 3 0
    //   345: astore 13
    //   347: aload_3
    //   348: getfield 272	com/google/android/gms/internal/fw:e	Lcom/google/android/gms/internal/et;
    //   351: aload_0
    //   352: aload 4
    //   354: getfield 274	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:e	Ljava/lang/String;
    //   357: aload 4
    //   359: getfield 278	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:g	Landroid/content/pm/PackageInfo;
    //   362: getfield 281	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   365: invokeinterface 286 4 0
    //   370: astore 8
    //   372: aload_3
    //   373: getfield 289	com/google/android/gms/internal/fw:b	Lcom/google/android/gms/internal/aj;
    //   376: aload 4
    //   378: invokeinterface 294 2 0
    //   383: astore 14
    //   385: aload_3
    //   386: getfield 297	com/google/android/gms/internal/fw:f	Lcom/google/android/gms/internal/gq;
    //   389: aload 4
    //   391: invokeinterface 302 2 0
    //   396: astore 15
    //   398: aload_3
    //   399: getfield 305	com/google/android/gms/internal/fw:g	Lcom/google/android/gms/internal/gh;
    //   402: aload_0
    //   403: invokeinterface 310 2 0
    //   408: astore 16
    //   410: aload 6
    //   412: ifnull +38 -> 450
    //   415: ldc_w 312
    //   418: invokestatic 180	com/google/android/gms/internal/gz:e	(Ljava/lang/String;)V
    //   421: aload 6
    //   423: getstatic 315	com/google/android/gms/internal/ao:R	Lcom/google/android/gms/internal/ak;
    //   426: invokevirtual 117	com/google/android/gms/internal/ak:c	()Ljava/lang/Object;
    //   429: checkcast 317	java/lang/Long
    //   432: invokevirtual 321	java/lang/Long:longValue	()J
    //   435: getstatic 327	java/util/concurrent/TimeUnit:MILLISECONDS	Ljava/util/concurrent/TimeUnit;
    //   438: invokeinterface 333 4 0
    //   443: pop
    //   444: ldc_w 335
    //   447: invokestatic 180	com/google/android/gms/internal/gz:e	(Ljava/lang/String;)V
    //   450: aload_0
    //   451: aload 4
    //   453: aload 12
    //   455: aload 16
    //   457: aload 13
    //   459: aload_2
    //   460: aload 8
    //   462: aload 15
    //   464: aload 14
    //   466: aload 5
    //   468: invokestatic 338	com/google/android/gms/internal/fy:a	(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/gd;Lcom/google/android/gms/internal/gh$a;Landroid/location/Location;Lcom/google/android/gms/internal/ah;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;)Lorg/json/JSONObject;
    //   471: astore 5
    //   473: aload 4
    //   475: getfield 141	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:a	I
    //   478: bipush 7
    //   480: if_icmpge +14 -> 494
    //   483: aload 5
    //   485: ldc_w 340
    //   488: aload 7
    //   490: invokevirtual 346	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   493: pop
    //   494: aload 5
    //   496: ifnonnull +36 -> 532
    //   499: new 218	com/google/android/gms/ads/internal/request/AdResponseParcel
    //   502: dup
    //   503: iconst_0
    //   504: invokespecial 221	com/google/android/gms/ads/internal/request/AdResponseParcel:<init>	(I)V
    //   507: areturn
    //   508: astore 6
    //   510: ldc_w 348
    //   513: aload 6
    //   515: invokestatic 351	com/google/android/gms/internal/gz:d	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   518: goto -68 -> 450
    //   521: astore 6
    //   523: ldc_w 353
    //   526: invokestatic 101	com/google/android/gms/internal/gz:a	(Ljava/lang/String;)V
    //   529: goto -79 -> 450
    //   532: aload 5
    //   534: invokevirtual 354	org/json/JSONObject:toString	()Ljava/lang/String;
    //   537: astore 5
    //   539: aload 9
    //   541: aload 10
    //   543: iconst_1
    //   544: anewarray 152	java/lang/String
    //   547: dup
    //   548: iconst_0
    //   549: ldc_w 356
    //   552: aastore
    //   553: invokevirtual 157	com/google/android/gms/internal/ax:a	(Lcom/google/android/gms/internal/au;[Ljava/lang/String;)Z
    //   556: pop
    //   557: aload 9
    //   559: invokevirtual 160	com/google/android/gms/internal/ax:a	()Lcom/google/android/gms/internal/au;
    //   562: astore 6
    //   564: getstatic 358	com/google/android/gms/internal/ao:c	Lcom/google/android/gms/internal/ak;
    //   567: invokevirtual 117	com/google/android/gms/internal/ak:c	()Ljava/lang/Object;
    //   570: checkcast 119	java/lang/Boolean
    //   573: invokevirtual 123	java/lang/Boolean:booleanValue	()Z
    //   576: ifeq +83 -> 659
    //   579: getstatic 363	com/google/android/gms/internal/hd:a	Landroid/os/Handler;
    //   582: new 8	com/google/android/gms/internal/fx$2
    //   585: dup
    //   586: aload_1
    //   587: aload 11
    //   589: aload 9
    //   591: aload 6
    //   593: aload 5
    //   595: invokespecial 366	com/google/android/gms/internal/fx$2:<init>	(Lcom/google/android/gms/internal/db;Lcom/google/android/gms/internal/fz;Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/au;Ljava/lang/String;)V
    //   598: invokevirtual 372	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   601: pop
    //   602: aload 11
    //   604: invokevirtual 375	com/google/android/gms/internal/fz:b	()Ljava/util/concurrent/Future;
    //   607: ldc2_w 376
    //   610: getstatic 380	java/util/concurrent/TimeUnit:SECONDS	Ljava/util/concurrent/TimeUnit;
    //   613: invokeinterface 333 4 0
    //   618: checkcast 382	com/google/android/gms/internal/gc
    //   621: astore 5
    //   623: aload 5
    //   625: ifnonnull +95 -> 720
    //   628: new 218	com/google/android/gms/ads/internal/request/AdResponseParcel
    //   631: dup
    //   632: iconst_0
    //   633: invokespecial 221	com/google/android/gms/ads/internal/request/AdResponseParcel:<init>	(I)V
    //   636: astore_1
    //   637: getstatic 363	com/google/android/gms/internal/hd:a	Landroid/os/Handler;
    //   640: new 16	com/google/android/gms/internal/fx$4
    //   643: dup
    //   644: aload_3
    //   645: aload_0
    //   646: aload 11
    //   648: aload 4
    //   650: invokespecial 385	com/google/android/gms/internal/fx$4:<init>	(Lcom/google/android/gms/internal/fw;Landroid/content/Context;Lcom/google/android/gms/internal/fz;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V
    //   653: invokevirtual 372	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   656: pop
    //   657: aload_1
    //   658: areturn
    //   659: getstatic 363	com/google/android/gms/internal/hd:a	Landroid/os/Handler;
    //   662: new 14	com/google/android/gms/internal/fx$3
    //   665: dup
    //   666: aload_0
    //   667: aload 4
    //   669: aload 11
    //   671: aload 9
    //   673: aload 6
    //   675: aload 5
    //   677: aload_2
    //   678: invokespecial 388	com/google/android/gms/internal/fx$3:<init>	(Landroid/content/Context;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Lcom/google/android/gms/internal/fz;Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/au;Ljava/lang/String;Lcom/google/android/gms/internal/ah;)V
    //   681: invokevirtual 372	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   684: pop
    //   685: goto -83 -> 602
    //   688: astore_1
    //   689: new 218	com/google/android/gms/ads/internal/request/AdResponseParcel
    //   692: dup
    //   693: iconst_0
    //   694: invokespecial 221	com/google/android/gms/ads/internal/request/AdResponseParcel:<init>	(I)V
    //   697: astore_1
    //   698: getstatic 363	com/google/android/gms/internal/hd:a	Landroid/os/Handler;
    //   701: new 16	com/google/android/gms/internal/fx$4
    //   704: dup
    //   705: aload_3
    //   706: aload_0
    //   707: aload 11
    //   709: aload 4
    //   711: invokespecial 385	com/google/android/gms/internal/fx$4:<init>	(Lcom/google/android/gms/internal/fw;Landroid/content/Context;Lcom/google/android/gms/internal/fz;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V
    //   714: invokevirtual 372	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   717: pop
    //   718: aload_1
    //   719: areturn
    //   720: aload 5
    //   722: invokevirtual 391	com/google/android/gms/internal/gc:a	()I
    //   725: bipush -2
    //   727: if_icmpeq +38 -> 765
    //   730: new 218	com/google/android/gms/ads/internal/request/AdResponseParcel
    //   733: dup
    //   734: aload 5
    //   736: invokevirtual 391	com/google/android/gms/internal/gc:a	()I
    //   739: invokespecial 221	com/google/android/gms/ads/internal/request/AdResponseParcel:<init>	(I)V
    //   742: astore_1
    //   743: getstatic 363	com/google/android/gms/internal/hd:a	Landroid/os/Handler;
    //   746: new 16	com/google/android/gms/internal/fx$4
    //   749: dup
    //   750: aload_3
    //   751: aload_0
    //   752: aload 11
    //   754: aload 4
    //   756: invokespecial 385	com/google/android/gms/internal/fx$4:<init>	(Lcom/google/android/gms/internal/fw;Landroid/content/Context;Lcom/google/android/gms/internal/fz;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V
    //   759: invokevirtual 372	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   762: pop
    //   763: aload_1
    //   764: areturn
    //   765: aload 9
    //   767: invokevirtual 393	com/google/android/gms/internal/ax:e	()Lcom/google/android/gms/internal/au;
    //   770: ifnull +24 -> 794
    //   773: aload 9
    //   775: aload 9
    //   777: invokevirtual 393	com/google/android/gms/internal/ax:e	()Lcom/google/android/gms/internal/au;
    //   780: iconst_1
    //   781: anewarray 152	java/lang/String
    //   784: dup
    //   785: iconst_0
    //   786: ldc_w 395
    //   789: aastore
    //   790: invokevirtual 157	com/google/android/gms/internal/ax:a	(Lcom/google/android/gms/internal/au;[Ljava/lang/String;)Z
    //   793: pop
    //   794: aconst_null
    //   795: astore_1
    //   796: aload 5
    //   798: invokevirtual 397	com/google/android/gms/internal/gc:f	()Z
    //   801: ifeq +21 -> 822
    //   804: aload_3
    //   805: getfield 400	com/google/android/gms/internal/fw:a	Lcom/google/android/gms/internal/gn;
    //   808: aload 4
    //   810: getfield 278	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:g	Landroid/content/pm/PackageInfo;
    //   813: getfield 281	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   816: invokeinterface 404 2 0
    //   821: astore_1
    //   822: aload 4
    //   824: getfield 407	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:k	Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    //   827: getfield 408	com/google/android/gms/ads/internal/util/client/VersionInfoParcel:b	Ljava/lang/String;
    //   830: astore 6
    //   832: aload 5
    //   834: invokevirtual 410	com/google/android/gms/internal/gc:d	()Ljava/lang/String;
    //   837: astore 7
    //   839: aload 5
    //   841: invokevirtual 413	com/google/android/gms/internal/gc:h	()Z
    //   844: ifeq +99 -> 943
    //   847: aload 8
    //   849: astore_2
    //   850: aload 4
    //   852: aload_0
    //   853: aload 6
    //   855: aload 7
    //   857: aload_1
    //   858: aload_2
    //   859: aload 5
    //   861: aload 9
    //   863: aload_3
    //   864: invokestatic 416	com/google/android/gms/internal/fx:a	(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/gc;Lcom/google/android/gms/internal/ax;Lcom/google/android/gms/internal/fw;)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    //   867: astore_1
    //   868: aload_1
    //   869: getfield 419	com/google/android/gms/ads/internal/request/AdResponseParcel:x	I
    //   872: iconst_1
    //   873: if_icmpne +21 -> 894
    //   876: aload_3
    //   877: getfield 272	com/google/android/gms/internal/fw:e	Lcom/google/android/gms/internal/et;
    //   880: aload_0
    //   881: aload 4
    //   883: getfield 278	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:g	Landroid/content/pm/PackageInfo;
    //   886: getfield 281	android/content/pm/PackageInfo:packageName	Ljava/lang/String;
    //   889: invokeinterface 422 3 0
    //   894: aload 9
    //   896: aload 10
    //   898: iconst_1
    //   899: anewarray 152	java/lang/String
    //   902: dup
    //   903: iconst_0
    //   904: ldc_w 424
    //   907: aastore
    //   908: invokevirtual 157	com/google/android/gms/internal/ax:a	(Lcom/google/android/gms/internal/au;[Ljava/lang/String;)Z
    //   911: pop
    //   912: aload_1
    //   913: aload 9
    //   915: invokevirtual 426	com/google/android/gms/internal/ax:c	()Ljava/lang/String;
    //   918: putfield 429	com/google/android/gms/ads/internal/request/AdResponseParcel:z	Ljava/lang/String;
    //   921: getstatic 363	com/google/android/gms/internal/hd:a	Landroid/os/Handler;
    //   924: new 16	com/google/android/gms/internal/fx$4
    //   927: dup
    //   928: aload_3
    //   929: aload_0
    //   930: aload 11
    //   932: aload 4
    //   934: invokespecial 385	com/google/android/gms/internal/fx$4:<init>	(Lcom/google/android/gms/internal/fw;Landroid/content/Context;Lcom/google/android/gms/internal/fz;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V
    //   937: invokevirtual 372	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   940: pop
    //   941: aload_1
    //   942: areturn
    //   943: aconst_null
    //   944: astore_2
    //   945: goto -95 -> 850
    //   948: astore_1
    //   949: getstatic 363	com/google/android/gms/internal/hd:a	Landroid/os/Handler;
    //   952: new 16	com/google/android/gms/internal/fx$4
    //   955: dup
    //   956: aload_3
    //   957: aload_0
    //   958: aload 11
    //   960: aload 4
    //   962: invokespecial 385	com/google/android/gms/internal/fx$4:<init>	(Lcom/google/android/gms/internal/fw;Landroid/content/Context;Lcom/google/android/gms/internal/fz;Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V
    //   965: invokevirtual 372	android/os/Handler:post	(Ljava/lang/Runnable;)Z
    //   968: pop
    //   969: aload_1
    //   970: athrow
    //   971: astore 6
    //   973: goto -479 -> 494
    //   976: astore 6
    //   978: goto -468 -> 510
    //   981: aconst_null
    //   982: astore 6
    //   984: goto -779 -> 205
    //   987: aload 6
    //   989: astore 5
    //   991: aconst_null
    //   992: astore 6
    //   994: goto -789 -> 205
    //   997: aconst_null
    //   998: astore 6
    //   1000: goto -882 -> 118
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1003	0	paramContext	Context
    //   0	1003	1	paramdb	db
    //   0	1003	2	paramah	ah
    //   0	1003	3	paramfw	fw
    //   0	1003	4	paramAdRequestInfoParcel	AdRequestInfoParcel
    //   142	848	5	localObject1	Object
    //   116	306	6	localObject2	Object
    //   508	6	6	localInterruptedException	InterruptedException
    //   521	1	6	localTimeoutException	java.util.concurrent.TimeoutException
    //   562	292	6	localObject3	Object
    //   971	1	6	localJSONException	org.json.JSONException
    //   976	1	6	localExecutionException	java.util.concurrent.ExecutionException
    //   982	17	6	localObject4	Object
    //   261	595	7	str1	String
    //   306	542	8	str2	String
    //   38	876	9	localax	ax
    //   92	805	10	localau	au
    //   280	679	11	localfz	fz
    //   221	233	12	localgd	gd
    //   345	113	13	localLocation	android.location.Location
    //   383	82	14	localList	List
    //   396	67	15	str3	String
    //   408	48	16	locala	gh.a
    // Exception table:
    //   from	to	target	type
    //   415	450	508	java/lang/InterruptedException
    //   415	450	521	java/util/concurrent/TimeoutException
    //   602	623	688	java/lang/Exception
    //   602	623	948	finally
    //   628	637	948	finally
    //   689	698	948	finally
    //   720	743	948	finally
    //   765	794	948	finally
    //   796	822	948	finally
    //   822	847	948	finally
    //   850	894	948	finally
    //   894	921	948	finally
    //   483	494	971	org/json/JSONException
    //   415	450	976	java/util/concurrent/ExecutionException
  }
  
  /* Error */
  public static AdResponseParcel a(AdRequestInfoParcel paramAdRequestInfoParcel, Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, gc paramgc, ax paramax, fw paramfw)
  {
    // Byte code:
    //   0: aload 7
    //   2: ifnull +346 -> 348
    //   5: aload 7
    //   7: invokevirtual 160	com/google/android/gms/internal/ax:a	()Lcom/google/android/gms/internal/au;
    //   10: astore 13
    //   12: new 433	com/google/android/gms/internal/ga
    //   15: dup
    //   16: aload_0
    //   17: invokespecial 436	com/google/android/gms/internal/ga:<init>	(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V
    //   20: astore 15
    //   22: new 438	java/lang/StringBuilder
    //   25: dup
    //   26: invokespecial 439	java/lang/StringBuilder:<init>	()V
    //   29: ldc_w 441
    //   32: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   35: aload_3
    //   36: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   39: invokevirtual 446	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   42: invokestatic 101	com/google/android/gms/internal/gz:a	(Ljava/lang/String;)V
    //   45: new 448	java/net/URL
    //   48: dup
    //   49: aload_3
    //   50: invokespecial 450	java/net/URL:<init>	(Ljava/lang/String;)V
    //   53: astore_0
    //   54: invokestatic 453	com/google/android/gms/ads/internal/s:i	()Lcom/google/android/gms/internal/jt;
    //   57: invokeinterface 457 1 0
    //   62: lstore 11
    //   64: iconst_0
    //   65: istore 9
    //   67: aload 8
    //   69: ifnull +13 -> 82
    //   72: aload 8
    //   74: getfield 460	com/google/android/gms/internal/fw:h	Lcom/google/android/gms/internal/gg;
    //   77: invokeinterface 463 1 0
    //   82: aload_0
    //   83: invokevirtual 467	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   86: checkcast 469	java/net/HttpURLConnection
    //   89: astore 14
    //   91: invokestatic 472	com/google/android/gms/ads/internal/s:e	()Lcom/google/android/gms/internal/hd;
    //   94: aload_1
    //   95: aload_2
    //   96: iconst_0
    //   97: aload 14
    //   99: invokevirtual 475	com/google/android/gms/internal/hd:a	(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V
    //   102: aload 4
    //   104: invokestatic 481	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   107: ifne +13 -> 120
    //   110: aload 14
    //   112: ldc_w 483
    //   115: aload 4
    //   117: invokevirtual 486	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   120: aload 5
    //   122: invokestatic 481	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   125: ifne +32 -> 157
    //   128: aload 14
    //   130: ldc_w 488
    //   133: new 438	java/lang/StringBuilder
    //   136: dup
    //   137: invokespecial 439	java/lang/StringBuilder:<init>	()V
    //   140: ldc_w 490
    //   143: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   146: aload 5
    //   148: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   151: invokevirtual 446	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   154: invokevirtual 486	java/net/HttpURLConnection:addRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   157: aload 6
    //   159: ifnull +61 -> 220
    //   162: aload 6
    //   164: invokevirtual 491	com/google/android/gms/internal/gc:c	()Ljava/lang/String;
    //   167: invokestatic 481	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   170: ifne +50 -> 220
    //   173: aload 14
    //   175: iconst_1
    //   176: invokevirtual 495	java/net/HttpURLConnection:setDoOutput	(Z)V
    //   179: aload 6
    //   181: invokevirtual 491	com/google/android/gms/internal/gc:c	()Ljava/lang/String;
    //   184: invokevirtual 499	java/lang/String:getBytes	()[B
    //   187: astore 16
    //   189: aload 14
    //   191: aload 16
    //   193: arraylength
    //   194: invokevirtual 502	java/net/HttpURLConnection:setFixedLengthStreamingMode	(I)V
    //   197: new 504	java/io/BufferedOutputStream
    //   200: dup
    //   201: aload 14
    //   203: invokevirtual 508	java/net/HttpURLConnection:getOutputStream	()Ljava/io/OutputStream;
    //   206: invokespecial 511	java/io/BufferedOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   209: astore_3
    //   210: aload_3
    //   211: aload 16
    //   213: invokevirtual 515	java/io/BufferedOutputStream:write	([B)V
    //   216: aload_3
    //   217: invokestatic 520	com/google/android/gms/internal/kb:a	(Ljava/io/Closeable;)V
    //   220: aload 14
    //   222: invokevirtual 523	java/net/HttpURLConnection:getResponseCode	()I
    //   225: istore 10
    //   227: aload 14
    //   229: invokevirtual 527	java/net/HttpURLConnection:getHeaderFields	()Ljava/util/Map;
    //   232: astore_3
    //   233: iload 10
    //   235: sipush 200
    //   238: if_icmplt +193 -> 431
    //   241: iload 10
    //   243: sipush 300
    //   246: if_icmpge +185 -> 431
    //   249: aload_0
    //   250: invokevirtual 528	java/net/URL:toString	()Ljava/lang/String;
    //   253: astore_0
    //   254: new 530	java/io/InputStreamReader
    //   257: dup
    //   258: aload 14
    //   260: invokevirtual 534	java/net/HttpURLConnection:getInputStream	()Ljava/io/InputStream;
    //   263: invokespecial 537	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   266: astore_1
    //   267: invokestatic 472	com/google/android/gms/ads/internal/s:e	()Lcom/google/android/gms/internal/hd;
    //   270: aload_1
    //   271: invokevirtual 540	com/google/android/gms/internal/hd:a	(Ljava/io/InputStreamReader;)Ljava/lang/String;
    //   274: astore_2
    //   275: aload_1
    //   276: invokestatic 520	com/google/android/gms/internal/kb:a	(Ljava/io/Closeable;)V
    //   279: aload_0
    //   280: aload_3
    //   281: aload_2
    //   282: iload 10
    //   284: invokestatic 543	com/google/android/gms/internal/fx:a	(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    //   287: aload 15
    //   289: aload_0
    //   290: aload_3
    //   291: aload_2
    //   292: invokevirtual 546	com/google/android/gms/internal/ga:a	(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    //   295: aload 7
    //   297: ifnull +21 -> 318
    //   300: aload 7
    //   302: aload 13
    //   304: iconst_1
    //   305: anewarray 152	java/lang/String
    //   308: dup
    //   309: iconst_0
    //   310: ldc_w 548
    //   313: aastore
    //   314: invokevirtual 157	com/google/android/gms/internal/ax:a	(Lcom/google/android/gms/internal/au;[Ljava/lang/String;)Z
    //   317: pop
    //   318: aload 15
    //   320: lload 11
    //   322: invokevirtual 551	com/google/android/gms/internal/ga:a	(J)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    //   325: astore_0
    //   326: aload 14
    //   328: invokevirtual 554	java/net/HttpURLConnection:disconnect	()V
    //   331: aload 8
    //   333: ifnull +13 -> 346
    //   336: aload 8
    //   338: getfield 460	com/google/android/gms/internal/fw:h	Lcom/google/android/gms/internal/gg;
    //   341: invokeinterface 556 1 0
    //   346: aload_0
    //   347: areturn
    //   348: aconst_null
    //   349: astore 13
    //   351: goto -339 -> 12
    //   354: astore_0
    //   355: aconst_null
    //   356: astore_1
    //   357: aload_1
    //   358: invokestatic 520	com/google/android/gms/internal/kb:a	(Ljava/io/Closeable;)V
    //   361: aload_0
    //   362: athrow
    //   363: astore_0
    //   364: aload 14
    //   366: invokevirtual 554	java/net/HttpURLConnection:disconnect	()V
    //   369: aload 8
    //   371: ifnull +13 -> 384
    //   374: aload 8
    //   376: getfield 460	com/google/android/gms/internal/fw:h	Lcom/google/android/gms/internal/gg;
    //   379: invokeinterface 556 1 0
    //   384: aload_0
    //   385: athrow
    //   386: astore_0
    //   387: new 438	java/lang/StringBuilder
    //   390: dup
    //   391: invokespecial 439	java/lang/StringBuilder:<init>	()V
    //   394: ldc_w 558
    //   397: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   400: aload_0
    //   401: invokevirtual 561	java/io/IOException:getMessage	()Ljava/lang/String;
    //   404: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   407: invokevirtual 446	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   410: invokestatic 563	com/google/android/gms/internal/gz:d	(Ljava/lang/String;)V
    //   413: new 218	com/google/android/gms/ads/internal/request/AdResponseParcel
    //   416: dup
    //   417: iconst_2
    //   418: invokespecial 221	com/google/android/gms/ads/internal/request/AdResponseParcel:<init>	(I)V
    //   421: areturn
    //   422: astore_0
    //   423: aconst_null
    //   424: astore_1
    //   425: aload_1
    //   426: invokestatic 520	com/google/android/gms/internal/kb:a	(Ljava/io/Closeable;)V
    //   429: aload_0
    //   430: athrow
    //   431: aload_0
    //   432: invokevirtual 528	java/net/URL:toString	()Ljava/lang/String;
    //   435: aload_3
    //   436: aconst_null
    //   437: iload 10
    //   439: invokestatic 543	com/google/android/gms/internal/fx:a	(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    //   442: iload 10
    //   444: sipush 300
    //   447: if_icmplt +122 -> 569
    //   450: iload 10
    //   452: sipush 400
    //   455: if_icmpge +114 -> 569
    //   458: aload 14
    //   460: ldc_w 565
    //   463: invokevirtual 568	java/net/HttpURLConnection:getHeaderField	(Ljava/lang/String;)Ljava/lang/String;
    //   466: astore_0
    //   467: aload_0
    //   468: invokestatic 481	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   471: ifeq +40 -> 511
    //   474: ldc_w 570
    //   477: invokestatic 563	com/google/android/gms/internal/gz:d	(Ljava/lang/String;)V
    //   480: new 218	com/google/android/gms/ads/internal/request/AdResponseParcel
    //   483: dup
    //   484: iconst_0
    //   485: invokespecial 221	com/google/android/gms/ads/internal/request/AdResponseParcel:<init>	(I)V
    //   488: astore_0
    //   489: aload 14
    //   491: invokevirtual 554	java/net/HttpURLConnection:disconnect	()V
    //   494: aload 8
    //   496: ifnull +13 -> 509
    //   499: aload 8
    //   501: getfield 460	com/google/android/gms/internal/fw:h	Lcom/google/android/gms/internal/gg;
    //   504: invokeinterface 556 1 0
    //   509: aload_0
    //   510: areturn
    //   511: new 448	java/net/URL
    //   514: dup
    //   515: aload_0
    //   516: invokespecial 450	java/net/URL:<init>	(Ljava/lang/String;)V
    //   519: astore_0
    //   520: iload 9
    //   522: iconst_1
    //   523: iadd
    //   524: istore 9
    //   526: iload 9
    //   528: iconst_5
    //   529: if_icmple +95 -> 624
    //   532: ldc_w 572
    //   535: invokestatic 563	com/google/android/gms/internal/gz:d	(Ljava/lang/String;)V
    //   538: new 218	com/google/android/gms/ads/internal/request/AdResponseParcel
    //   541: dup
    //   542: iconst_0
    //   543: invokespecial 221	com/google/android/gms/ads/internal/request/AdResponseParcel:<init>	(I)V
    //   546: astore_0
    //   547: aload 14
    //   549: invokevirtual 554	java/net/HttpURLConnection:disconnect	()V
    //   552: aload 8
    //   554: ifnull +13 -> 567
    //   557: aload 8
    //   559: getfield 460	com/google/android/gms/internal/fw:h	Lcom/google/android/gms/internal/gg;
    //   562: invokeinterface 556 1 0
    //   567: aload_0
    //   568: areturn
    //   569: new 438	java/lang/StringBuilder
    //   572: dup
    //   573: invokespecial 439	java/lang/StringBuilder:<init>	()V
    //   576: ldc_w 574
    //   579: invokevirtual 445	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   582: iload 10
    //   584: invokevirtual 577	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   587: invokevirtual 446	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   590: invokestatic 563	com/google/android/gms/internal/gz:d	(Ljava/lang/String;)V
    //   593: new 218	com/google/android/gms/ads/internal/request/AdResponseParcel
    //   596: dup
    //   597: iconst_0
    //   598: invokespecial 221	com/google/android/gms/ads/internal/request/AdResponseParcel:<init>	(I)V
    //   601: astore_0
    //   602: aload 14
    //   604: invokevirtual 554	java/net/HttpURLConnection:disconnect	()V
    //   607: aload 8
    //   609: ifnull +13 -> 622
    //   612: aload 8
    //   614: getfield 460	com/google/android/gms/internal/fw:h	Lcom/google/android/gms/internal/gg;
    //   617: invokeinterface 556 1 0
    //   622: aload_0
    //   623: areturn
    //   624: aload 15
    //   626: aload_3
    //   627: invokevirtual 580	com/google/android/gms/internal/ga:a	(Ljava/util/Map;)V
    //   630: aload 14
    //   632: invokevirtual 554	java/net/HttpURLConnection:disconnect	()V
    //   635: aload 8
    //   637: ifnull +13 -> 650
    //   640: aload 8
    //   642: getfield 460	com/google/android/gms/internal/fw:h	Lcom/google/android/gms/internal/gg;
    //   645: invokeinterface 556 1 0
    //   650: goto -583 -> 67
    //   653: astore_0
    //   654: goto -229 -> 425
    //   657: astore_0
    //   658: aload_3
    //   659: astore_1
    //   660: goto -303 -> 357
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	663	0	paramAdRequestInfoParcel	AdRequestInfoParcel
    //   0	663	1	paramContext	Context
    //   0	663	2	paramString1	String
    //   0	663	3	paramString2	String
    //   0	663	4	paramString3	String
    //   0	663	5	paramString4	String
    //   0	663	6	paramgc	gc
    //   0	663	7	paramax	ax
    //   0	663	8	paramfw	fw
    //   65	465	9	i	int
    //   225	358	10	j	int
    //   62	259	11	l	long
    //   10	340	13	localau	au
    //   89	542	14	localHttpURLConnection	java.net.HttpURLConnection
    //   20	605	15	localga	ga
    //   187	25	16	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   197	210	354	finally
    //   91	120	363	finally
    //   120	157	363	finally
    //   162	197	363	finally
    //   216	220	363	finally
    //   220	233	363	finally
    //   249	254	363	finally
    //   275	295	363	finally
    //   300	318	363	finally
    //   318	326	363	finally
    //   357	363	363	finally
    //   425	431	363	finally
    //   431	442	363	finally
    //   458	489	363	finally
    //   511	520	363	finally
    //   532	547	363	finally
    //   569	602	363	finally
    //   624	630	363	finally
    //   12	64	386	java/io/IOException
    //   72	82	386	java/io/IOException
    //   82	91	386	java/io/IOException
    //   326	331	386	java/io/IOException
    //   336	346	386	java/io/IOException
    //   364	369	386	java/io/IOException
    //   374	384	386	java/io/IOException
    //   384	386	386	java/io/IOException
    //   489	494	386	java/io/IOException
    //   499	509	386	java/io/IOException
    //   547	552	386	java/io/IOException
    //   557	567	386	java/io/IOException
    //   602	607	386	java/io/IOException
    //   612	622	386	java/io/IOException
    //   630	635	386	java/io/IOException
    //   640	650	386	java/io/IOException
    //   254	267	422	finally
    //   267	275	653	finally
    //   210	216	657	finally
  }
  
  public static fx a(Context paramContext, ah paramah, fw paramfw)
  {
    synchronized (a)
    {
      if (b == null)
      {
        Context localContext = paramContext;
        if (paramContext.getApplicationContext() != null) {
          localContext = paramContext.getApplicationContext();
        }
        b = new fx(localContext, paramah, paramfw);
      }
      paramContext = b;
      return paramContext;
    }
  }
  
  private static void a(String paramString1, Map<String, List<String>> paramMap, String paramString2, int paramInt)
  {
    if (gz.a(2))
    {
      gz.e("Http Response: {\n  URL:\n    " + paramString1 + "\n  Headers:");
      if (paramMap != null)
      {
        paramString1 = paramMap.keySet().iterator();
        while (paramString1.hasNext())
        {
          Object localObject = (String)paramString1.next();
          gz.e("    " + (String)localObject + ":");
          localObject = ((List)paramMap.get(localObject)).iterator();
          while (((Iterator)localObject).hasNext())
          {
            String str = (String)((Iterator)localObject).next();
            gz.e("      " + str);
          }
        }
      }
      gz.e("  Body:");
      if (paramString2 != null)
      {
        int i = 0;
        while (i < Math.min(paramString2.length(), 100000))
        {
          gz.e(paramString2.substring(i, Math.min(paramString2.length(), i + 1000)));
          i += 1000;
        }
      }
      gz.e("    null");
      gz.e("  Response Code:\n    " + paramInt + "\n}");
    }
  }
  
  private static ic.a b(final String paramString, ax paramax, final au paramau)
  {
    new ic.a()
    {
      public void a(ib paramAnonymousib, boolean paramAnonymousBoolean)
      {
        a.a(paramau, new String[] { "jsf" });
        a.b();
        paramAnonymousib.a("AFMA_buildAdURL", paramString);
      }
    };
  }
  
  public AdResponseParcel a(AdRequestInfoParcel paramAdRequestInfoParcel)
  {
    return a(c, f, e, d, paramAdRequestInfoParcel);
  }
  
  public void a(final AdRequestInfoParcel paramAdRequestInfoParcel, final j paramj)
  {
    s.h().a(c, k);
    hc.a(new Runnable()
    {
      public void run()
      {
        try
        {
          AdResponseParcel localAdResponseParcel1 = a(paramAdRequestInfoParcel);
          localAdResponseParcel2 = localAdResponseParcel1;
          if (localAdResponseParcel1 == null) {
            localAdResponseParcel2 = new AdResponseParcel(0);
          }
        }
        catch (Exception localException)
        {
          for (;;)
          {
            try
            {
              AdResponseParcel localAdResponseParcel2;
              paramj.a(localAdResponseParcel2);
              return;
            }
            catch (RemoteException localRemoteException)
            {
              Object localObject;
              gz.d("Fail to forward ad response.", localRemoteException);
            }
            localException = localException;
            s.h().a(localException, true);
            gz.d("Could not fetch ad response due to an Exception.", localException);
            localObject = null;
          }
        }
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */