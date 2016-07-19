package com.kahuna.sdk;

import android.os.Build.VERSION;
import android.util.Log;
import com.kahuna.sdk.location.KahunaIBeaconManager;
import com.kahuna.sdk.location.i;
import java.util.List;
import java.util.Map;
import java.util.TimerTask;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONArray;
import org.json.JSONObject;

class l$b
  extends TimerTask
{
  private JSONObject b = null;
  
  public l$b(l paraml, JSONObject paramJSONObject)
  {
    b = paramJSONObject;
  }
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   4: invokestatic 32	com/kahuna/sdk/l:p	(Lcom/kahuna/sdk/l;)Ljava/lang/Object;
    //   7: astore_3
    //   8: aload_3
    //   9: monitorenter
    //   10: aload_0
    //   11: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   14: iconst_1
    //   15: invokestatic 35	com/kahuna/sdk/l:b	(Lcom/kahuna/sdk/l;Z)Z
    //   18: pop
    //   19: aload_3
    //   20: monitorexit
    //   21: new 37	com/kahuna/sdk/RequestParams
    //   24: dup
    //   25: invokespecial 38	com/kahuna/sdk/RequestParams:<init>	()V
    //   28: astore 4
    //   30: aload 4
    //   32: ldc 40
    //   34: aload_0
    //   35: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   38: invokestatic 44	com/kahuna/sdk/l:h	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
    //   41: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   44: aload 4
    //   46: ldc 50
    //   48: aload_0
    //   49: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   52: invokestatic 53	com/kahuna/sdk/l:i	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
    //   55: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   58: aload 4
    //   60: ldc 55
    //   62: aload_0
    //   63: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   66: invokestatic 58	com/kahuna/sdk/l:q	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
    //   69: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   72: aload 4
    //   74: ldc 60
    //   76: aload_0
    //   77: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   80: invokestatic 63	com/kahuna/sdk/l:r	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
    //   83: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   86: aload 4
    //   88: ldc 65
    //   90: aload_0
    //   91: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   94: invokestatic 68	com/kahuna/sdk/l:s	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
    //   97: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   100: aload 4
    //   102: ldc 70
    //   104: aload_0
    //   105: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   108: invokestatic 73	com/kahuna/sdk/l:t	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
    //   111: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   114: aload 4
    //   116: ldc 75
    //   118: aload_0
    //   119: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   122: invokestatic 78	com/kahuna/sdk/l:u	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
    //   125: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   128: aload 4
    //   130: ldc 80
    //   132: new 82	java/lang/StringBuilder
    //   135: dup
    //   136: invokespecial 83	java/lang/StringBuilder:<init>	()V
    //   139: ldc 85
    //   141: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   144: invokestatic 95	java/lang/System:currentTimeMillis	()J
    //   147: ldc2_w 96
    //   150: ldiv
    //   151: invokevirtual 100	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   154: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   157: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   160: aload 4
    //   162: ldc 106
    //   164: ldc 108
    //   166: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   169: aload_0
    //   170: getfield 21	com/kahuna/sdk/l$b:b	Lorg/json/JSONObject;
    //   173: invokestatic 113	com/kahuna/sdk/w:a	(Lorg/json/JSONObject;)Z
    //   176: ifne +17 -> 193
    //   179: aload 4
    //   181: ldc 115
    //   183: aload_0
    //   184: getfield 21	com/kahuna/sdk/l$b:b	Lorg/json/JSONObject;
    //   187: invokevirtual 118	org/json/JSONObject:toString	()Ljava/lang/String;
    //   190: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   193: aload_0
    //   194: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   197: invokestatic 121	com/kahuna/sdk/l:v	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
    //   200: invokestatic 124	com/kahuna/sdk/w:a	(Ljava/lang/String;)Z
    //   203: ifne +17 -> 220
    //   206: aload 4
    //   208: ldc 126
    //   210: aload_0
    //   211: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   214: invokestatic 121	com/kahuna/sdk/l:v	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
    //   217: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   220: aload_0
    //   221: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   224: invokestatic 129	com/kahuna/sdk/l:a	(Lcom/kahuna/sdk/l;)Landroid/content/Context;
    //   227: invokestatic 135	com/kahuna/sdk/s:d	(Landroid/content/Context;)Ljava/lang/String;
    //   230: invokestatic 124	com/kahuna/sdk/w:a	(Ljava/lang/String;)Z
    //   233: ifne +20 -> 253
    //   236: aload 4
    //   238: ldc -119
    //   240: aload_0
    //   241: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   244: invokestatic 129	com/kahuna/sdk/l:a	(Lcom/kahuna/sdk/l;)Landroid/content/Context;
    //   247: invokestatic 135	com/kahuna/sdk/s:d	(Landroid/content/Context;)Ljava/lang/String;
    //   250: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   253: aload_0
    //   254: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   257: invokestatic 141	com/kahuna/sdk/l:w	(Lcom/kahuna/sdk/l;)J
    //   260: lconst_0
    //   261: lcmp
    //   262: ifle +20 -> 282
    //   265: aload 4
    //   267: ldc -113
    //   269: aload_0
    //   270: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   273: invokestatic 141	com/kahuna/sdk/l:w	(Lcom/kahuna/sdk/l;)J
    //   276: invokestatic 149	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   279: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   282: aload_0
    //   283: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   286: invokestatic 152	com/kahuna/sdk/l:x	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
    //   289: invokestatic 124	com/kahuna/sdk/w:a	(Ljava/lang/String;)Z
    //   292: ifne +44 -> 336
    //   295: aload_0
    //   296: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   299: invokestatic 155	com/kahuna/sdk/l:y	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
    //   302: invokestatic 124	com/kahuna/sdk/w:a	(Ljava/lang/String;)Z
    //   305: ifne +31 -> 336
    //   308: aload 4
    //   310: ldc -99
    //   312: aload_0
    //   313: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   316: invokestatic 152	com/kahuna/sdk/l:x	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
    //   319: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   322: aload 4
    //   324: ldc -97
    //   326: aload_0
    //   327: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   330: invokestatic 155	com/kahuna/sdk/l:y	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
    //   333: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   336: aload_0
    //   337: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   340: invokestatic 163	com/kahuna/sdk/l:j	(Lcom/kahuna/sdk/l;)Z
    //   343: ifeq +439 -> 782
    //   346: ldc -92
    //   348: astore_3
    //   349: aload 4
    //   351: ldc -90
    //   353: aload_3
    //   354: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   357: aload 4
    //   359: ldc -88
    //   361: new 82	java/lang/StringBuilder
    //   364: dup
    //   365: invokespecial 83	java/lang/StringBuilder:<init>	()V
    //   368: ldc 85
    //   370: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   373: aload_0
    //   374: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   377: invokestatic 172	com/kahuna/sdk/l:z	(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/t;
    //   380: invokevirtual 176	com/kahuna/sdk/t:a	()J
    //   383: invokevirtual 100	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   386: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   389: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   392: new 178	org/json/JSONArray
    //   395: dup
    //   396: invokespecial 179	org/json/JSONArray:<init>	()V
    //   399: astore_3
    //   400: invokestatic 182	com/kahuna/sdk/l:w	()Z
    //   403: ifeq +10 -> 413
    //   406: aload_3
    //   407: ldc -72
    //   409: invokevirtual 187	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   412: pop
    //   413: invokestatic 189	com/kahuna/sdk/l:x	()Z
    //   416: ifeq +10 -> 426
    //   419: aload_3
    //   420: ldc -65
    //   422: invokevirtual 187	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   425: pop
    //   426: invokestatic 193	com/kahuna/sdk/l:y	()Z
    //   429: ifeq +372 -> 801
    //   432: invokestatic 197	com/kahuna/sdk/location/i:a	()Z
    //   435: ifeq +366 -> 801
    //   438: aload_3
    //   439: ldc -57
    //   441: invokevirtual 187	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   444: pop
    //   445: aload_0
    //   446: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   449: invokestatic 202	com/kahuna/sdk/location/i:b	(Lcom/kahuna/sdk/l;)Ljava/util/Set;
    //   452: astore 6
    //   454: aload 6
    //   456: invokeinterface 208 1 0
    //   461: ifle +340 -> 801
    //   464: new 178	org/json/JSONArray
    //   467: dup
    //   468: invokespecial 179	org/json/JSONArray:<init>	()V
    //   471: astore 5
    //   473: aload 6
    //   475: invokeinterface 212 1 0
    //   480: astore 6
    //   482: aload 6
    //   484: invokeinterface 217 1 0
    //   489: ifeq +300 -> 789
    //   492: aload 5
    //   494: aload 6
    //   496: invokeinterface 221 1 0
    //   501: checkcast 145	java/lang/String
    //   504: invokevirtual 187	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   507: pop
    //   508: goto -26 -> 482
    //   511: astore 5
    //   513: aload_3
    //   514: invokestatic 224	com/kahuna/sdk/w:a	(Lorg/json/JSONArray;)Z
    //   517: ifne +14 -> 531
    //   520: aload 4
    //   522: ldc -30
    //   524: aload_3
    //   525: invokevirtual 227	org/json/JSONArray:toString	()Ljava/lang/String;
    //   528: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   531: new 178	org/json/JSONArray
    //   534: dup
    //   535: invokespecial 179	org/json/JSONArray:<init>	()V
    //   538: astore 5
    //   540: aload_0
    //   541: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   544: new 229	java/util/ArrayList
    //   547: dup
    //   548: invokespecial 230	java/util/ArrayList:<init>	()V
    //   551: invokestatic 233	com/kahuna/sdk/l:b	(Lcom/kahuna/sdk/l;Ljava/util/List;)Ljava/util/List;
    //   554: pop
    //   555: aload_0
    //   556: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   559: invokestatic 235	com/kahuna/sdk/l:d	(Lcom/kahuna/sdk/l;)Ljava/lang/Object;
    //   562: astore_3
    //   563: aload_3
    //   564: monitorenter
    //   565: aload_0
    //   566: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   569: invokestatic 239	com/kahuna/sdk/l:A	(Lcom/kahuna/sdk/l;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   572: invokevirtual 244	java/util/concurrent/atomic/AtomicInteger:get	()I
    //   575: ifgt +25 -> 600
    //   578: aload_0
    //   579: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   582: invokestatic 239	com/kahuna/sdk/l:A	(Lcom/kahuna/sdk/l;)Ljava/util/concurrent/atomic/AtomicInteger;
    //   585: aload_0
    //   586: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   589: invokestatic 248	com/kahuna/sdk/l:e	(Lcom/kahuna/sdk/l;)Ljava/util/List;
    //   592: invokeinterface 251 1 0
    //   597: invokevirtual 255	java/util/concurrent/atomic/AtomicInteger:set	(I)V
    //   600: aload_0
    //   601: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   604: invokestatic 172	com/kahuna/sdk/l:z	(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/t;
    //   607: invokevirtual 257	com/kahuna/sdk/t:q	()I
    //   610: istore_1
    //   611: iload_1
    //   612: aload_0
    //   613: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   616: invokestatic 248	com/kahuna/sdk/l:e	(Lcom/kahuna/sdk/l;)Ljava/util/List;
    //   619: invokeinterface 251 1 0
    //   624: if_icmpge +297 -> 921
    //   627: goto +957 -> 1584
    //   630: iload_2
    //   631: iload_1
    //   632: if_icmpge +305 -> 937
    //   635: aload_0
    //   636: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   639: invokestatic 248	com/kahuna/sdk/l:e	(Lcom/kahuna/sdk/l;)Ljava/util/List;
    //   642: iload_2
    //   643: invokeinterface 260 2 0
    //   648: checkcast 262	com/kahuna/sdk/Event
    //   651: astore 6
    //   653: aload_0
    //   654: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   657: invokestatic 265	com/kahuna/sdk/l:B	(Lcom/kahuna/sdk/l;)Ljava/util/List;
    //   660: aload 6
    //   662: invokeinterface 269 2 0
    //   667: pop
    //   668: aload 6
    //   670: invokevirtual 273	com/kahuna/sdk/Event:l	()Lorg/json/JSONObject;
    //   673: astore 6
    //   675: aload 6
    //   677: ifnull +11 -> 688
    //   680: aload 5
    //   682: aload 6
    //   684: invokevirtual 187	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   687: pop
    //   688: iload_2
    //   689: iconst_1
    //   690: iadd
    //   691: istore_2
    //   692: goto -62 -> 630
    //   695: astore 4
    //   697: aload_3
    //   698: monitorexit
    //   699: aload 4
    //   701: athrow
    //   702: astore_3
    //   703: getstatic 276	com/kahuna/sdk/l:a	Z
    //   706: ifeq +34 -> 740
    //   709: ldc_w 278
    //   712: new 82	java/lang/StringBuilder
    //   715: dup
    //   716: invokespecial 83	java/lang/StringBuilder:<init>	()V
    //   719: ldc_w 280
    //   722: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   725: aload_3
    //   726: invokevirtual 283	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   729: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   732: invokestatic 288	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   735: pop
    //   736: aload_3
    //   737: invokevirtual 291	java/lang/Exception:printStackTrace	()V
    //   740: aload_0
    //   741: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   744: invokestatic 294	com/kahuna/sdk/l:C	(Lcom/kahuna/sdk/l;)Ljava/lang/Object;
    //   747: astore_3
    //   748: aload_3
    //   749: monitorenter
    //   750: aload_0
    //   751: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   754: invokestatic 298	com/kahuna/sdk/l:D	(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/l$a;
    //   757: ifnull +22 -> 779
    //   760: aload_0
    //   761: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   764: invokestatic 298	com/kahuna/sdk/l:D	(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/l$a;
    //   767: invokevirtual 303	com/kahuna/sdk/l$a:cancel	()V
    //   770: aload_0
    //   771: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   774: aconst_null
    //   775: invokestatic 306	com/kahuna/sdk/l:a	(Lcom/kahuna/sdk/l;Lcom/kahuna/sdk/l$a;)Lcom/kahuna/sdk/l$a;
    //   778: pop
    //   779: aload_3
    //   780: monitorexit
    //   781: return
    //   782: ldc_w 307
    //   785: astore_3
    //   786: goto -437 -> 349
    //   789: aload 4
    //   791: ldc -57
    //   793: aload 5
    //   795: invokevirtual 227	org/json/JSONArray:toString	()Ljava/lang/String;
    //   798: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   801: getstatic 313	android/os/Build$VERSION:SDK_INT	I
    //   804: bipush 18
    //   806: if_icmplt -293 -> 513
    //   809: invokestatic 315	com/kahuna/sdk/l:z	()Z
    //   812: ifeq -299 -> 513
    //   815: invokestatic 318	com/kahuna/sdk/location/c:a	()Z
    //   818: ifeq -305 -> 513
    //   821: aload_0
    //   822: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   825: invokestatic 322	com/kahuna/sdk/location/KahunaIBeaconManager:a	(Lcom/kahuna/sdk/l;)Z
    //   828: ifeq -315 -> 513
    //   831: aload_3
    //   832: ldc_w 324
    //   835: invokevirtual 187	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   838: pop
    //   839: aload_0
    //   840: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   843: invokestatic 325	com/kahuna/sdk/location/KahunaIBeaconManager:b	(Lcom/kahuna/sdk/l;)Ljava/util/Set;
    //   846: astore 6
    //   848: aload 6
    //   850: invokeinterface 208 1 0
    //   855: ifle -342 -> 513
    //   858: new 178	org/json/JSONArray
    //   861: dup
    //   862: invokespecial 179	org/json/JSONArray:<init>	()V
    //   865: astore 5
    //   867: aload 6
    //   869: invokeinterface 212 1 0
    //   874: astore 6
    //   876: aload 6
    //   878: invokeinterface 217 1 0
    //   883: ifeq +22 -> 905
    //   886: aload 5
    //   888: aload 6
    //   890: invokeinterface 221 1 0
    //   895: checkcast 145	java/lang/String
    //   898: invokevirtual 187	org/json/JSONArray:put	(Ljava/lang/Object;)Lorg/json/JSONArray;
    //   901: pop
    //   902: goto -26 -> 876
    //   905: aload 4
    //   907: ldc_w 324
    //   910: aload 5
    //   912: invokevirtual 227	org/json/JSONArray:toString	()Ljava/lang/String;
    //   915: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   918: goto -405 -> 513
    //   921: aload_0
    //   922: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   925: invokestatic 248	com/kahuna/sdk/l:e	(Lcom/kahuna/sdk/l;)Ljava/util/List;
    //   928: invokeinterface 251 1 0
    //   933: istore_1
    //   934: goto +650 -> 1584
    //   937: aload_3
    //   938: monitorexit
    //   939: invokestatic 329	com/kahuna/sdk/c:a	()V
    //   942: aload_0
    //   943: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   946: invokestatic 265	com/kahuna/sdk/l:B	(Lcom/kahuna/sdk/l;)Ljava/util/List;
    //   949: invokeinterface 251 1 0
    //   954: ifne +87 -> 1041
    //   957: aload_0
    //   958: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   961: invokestatic 32	com/kahuna/sdk/l:p	(Lcom/kahuna/sdk/l;)Ljava/lang/Object;
    //   964: astore_3
    //   965: aload_3
    //   966: monitorenter
    //   967: aload_0
    //   968: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   971: iconst_0
    //   972: invokestatic 35	com/kahuna/sdk/l:b	(Lcom/kahuna/sdk/l;Z)Z
    //   975: pop
    //   976: aload_3
    //   977: monitorexit
    //   978: aload_0
    //   979: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   982: invokestatic 294	com/kahuna/sdk/l:C	(Lcom/kahuna/sdk/l;)Ljava/lang/Object;
    //   985: astore_3
    //   986: aload_3
    //   987: monitorenter
    //   988: aload_0
    //   989: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   992: invokestatic 298	com/kahuna/sdk/l:D	(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/l$a;
    //   995: ifnull +22 -> 1017
    //   998: aload_0
    //   999: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   1002: invokestatic 298	com/kahuna/sdk/l:D	(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/l$a;
    //   1005: invokevirtual 303	com/kahuna/sdk/l$a:cancel	()V
    //   1008: aload_0
    //   1009: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   1012: aconst_null
    //   1013: invokestatic 306	com/kahuna/sdk/l:a	(Lcom/kahuna/sdk/l;Lcom/kahuna/sdk/l$a;)Lcom/kahuna/sdk/l$a;
    //   1016: pop
    //   1017: aload_3
    //   1018: monitorexit
    //   1019: return
    //   1020: astore 4
    //   1022: aload_3
    //   1023: monitorexit
    //   1024: aload 4
    //   1026: athrow
    //   1027: astore 4
    //   1029: aload_3
    //   1030: monitorexit
    //   1031: aload 4
    //   1033: athrow
    //   1034: astore 4
    //   1036: aload_3
    //   1037: monitorexit
    //   1038: aload 4
    //   1040: athrow
    //   1041: aload 5
    //   1043: invokevirtual 227	org/json/JSONArray:toString	()Ljava/lang/String;
    //   1046: astore_3
    //   1047: aload 4
    //   1049: ldc_w 331
    //   1052: aload_3
    //   1053: ldc_w 333
    //   1056: iconst_0
    //   1057: invokestatic 336	com/kahuna/sdk/w:a	(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    //   1060: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1063: aload 4
    //   1065: ldc_w 338
    //   1068: aload_3
    //   1069: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1072: aload_0
    //   1073: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   1076: invokestatic 341	com/kahuna/sdk/l:E	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
    //   1079: invokestatic 124	com/kahuna/sdk/w:a	(Ljava/lang/String;)Z
    //   1082: ifne +18 -> 1100
    //   1085: aload 4
    //   1087: ldc_w 343
    //   1090: aload_0
    //   1091: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   1094: invokestatic 341	com/kahuna/sdk/l:E	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
    //   1097: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1100: aload_0
    //   1101: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   1104: invokestatic 347	com/kahuna/sdk/l:F	(Lcom/kahuna/sdk/l;)Lorg/json/JSONArray;
    //   1107: invokestatic 224	com/kahuna/sdk/w:a	(Lorg/json/JSONArray;)Z
    //   1110: ifne +21 -> 1131
    //   1113: aload 4
    //   1115: ldc_w 349
    //   1118: aload_0
    //   1119: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   1122: invokestatic 347	com/kahuna/sdk/l:F	(Lcom/kahuna/sdk/l;)Lorg/json/JSONArray;
    //   1125: invokevirtual 227	org/json/JSONArray:toString	()Ljava/lang/String;
    //   1128: invokevirtual 48	com/kahuna/sdk/RequestParams:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1131: aload 4
    //   1133: invokevirtual 353	com/kahuna/sdk/RequestParams:getUrlParams	()Ljava/util/Map;
    //   1136: invokestatic 358	com/kahuna/sdk/m:a	(Ljava/util/Map;)Ljava/lang/String;
    //   1139: ldc_w 333
    //   1142: iconst_0
    //   1143: invokestatic 336	com/kahuna/sdk/w:a	(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    //   1146: astore_3
    //   1147: getstatic 276	com/kahuna/sdk/l:a	Z
    //   1150: ifeq +30 -> 1180
    //   1153: ldc_w 278
    //   1156: new 82	java/lang/StringBuilder
    //   1159: dup
    //   1160: invokespecial 83	java/lang/StringBuilder:<init>	()V
    //   1163: ldc_w 360
    //   1166: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1169: aload_3
    //   1170: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1173: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1176: invokestatic 288	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   1179: pop
    //   1180: new 362	com/kahuna/sdk/b
    //   1183: dup
    //   1184: ldc_w 364
    //   1187: aload_3
    //   1188: invokespecial 366	com/kahuna/sdk/b:<init>	(Ljava/lang/String;Ljava/lang/String;)V
    //   1191: astore_3
    //   1192: getstatic 276	com/kahuna/sdk/l:a	Z
    //   1195: ifeq +299 -> 1494
    //   1198: aload_0
    //   1199: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   1202: invokestatic 129	com/kahuna/sdk/l:a	(Lcom/kahuna/sdk/l;)Landroid/content/Context;
    //   1205: invokestatic 371	com/kahuna/sdk/q:b	(Landroid/content/Context;)Z
    //   1208: ifeq +338 -> 1546
    //   1211: ldc_w 278
    //   1214: ldc_w 373
    //   1217: invokestatic 288	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   1220: pop
    //   1221: aload 4
    //   1223: invokevirtual 353	com/kahuna/sdk/RequestParams:getUrlParams	()Ljava/util/Map;
    //   1226: astore 5
    //   1228: new 82	java/lang/StringBuilder
    //   1231: dup
    //   1232: invokespecial 83	java/lang/StringBuilder:<init>	()V
    //   1235: astore 6
    //   1237: aload 5
    //   1239: invokeinterface 379 1 0
    //   1244: invokeinterface 212 1 0
    //   1249: astore 7
    //   1251: aload 7
    //   1253: invokeinterface 217 1 0
    //   1258: ifeq +205 -> 1463
    //   1261: aload 7
    //   1263: invokeinterface 221 1 0
    //   1268: checkcast 145	java/lang/String
    //   1271: astore 8
    //   1273: ldc 40
    //   1275: aload 8
    //   1277: invokevirtual 382	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1280: ifne -29 -> 1251
    //   1283: aload 6
    //   1285: invokevirtual 385	java/lang/StringBuilder:length	()I
    //   1288: ifle +12 -> 1300
    //   1291: aload 6
    //   1293: ldc_w 387
    //   1296: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1299: pop
    //   1300: ldc_w 338
    //   1303: aload 8
    //   1305: invokevirtual 382	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   1308: ifeq +110 -> 1418
    //   1311: aload 6
    //   1313: new 82	java/lang/StringBuilder
    //   1316: dup
    //   1317: invokespecial 83	java/lang/StringBuilder:<init>	()V
    //   1320: aload 8
    //   1322: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1325: ldc_w 389
    //   1328: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1331: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1334: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1337: pop
    //   1338: aload_0
    //   1339: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   1342: invokestatic 265	com/kahuna/sdk/l:B	(Lcom/kahuna/sdk/l;)Ljava/util/List;
    //   1345: invokeinterface 251 1 0
    //   1350: istore_2
    //   1351: iconst_0
    //   1352: istore_1
    //   1353: iload_1
    //   1354: iload_2
    //   1355: if_icmpge +51 -> 1406
    //   1358: aload_0
    //   1359: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   1362: invokestatic 265	com/kahuna/sdk/l:B	(Lcom/kahuna/sdk/l;)Ljava/util/List;
    //   1365: iload_1
    //   1366: invokeinterface 260 2 0
    //   1371: checkcast 262	com/kahuna/sdk/Event
    //   1374: invokevirtual 273	com/kahuna/sdk/Event:l	()Lorg/json/JSONObject;
    //   1377: astore 8
    //   1379: aload 8
    //   1381: ldc_w 391
    //   1384: invokevirtual 395	org/json/JSONObject:remove	(Ljava/lang/String;)Ljava/lang/Object;
    //   1387: pop
    //   1388: aload 6
    //   1390: aload 8
    //   1392: invokevirtual 118	org/json/JSONObject:toString	()Ljava/lang/String;
    //   1395: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1398: pop
    //   1399: iload_1
    //   1400: iconst_1
    //   1401: iadd
    //   1402: istore_1
    //   1403: goto -50 -> 1353
    //   1406: aload 6
    //   1408: ldc_w 397
    //   1411: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1414: pop
    //   1415: goto -164 -> 1251
    //   1418: aload 6
    //   1420: new 82	java/lang/StringBuilder
    //   1423: dup
    //   1424: invokespecial 83	java/lang/StringBuilder:<init>	()V
    //   1427: aload 8
    //   1429: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1432: ldc_w 399
    //   1435: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1438: aload 5
    //   1440: aload 8
    //   1442: invokeinterface 402 2 0
    //   1447: checkcast 145	java/lang/String
    //   1450: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1453: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1456: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1459: pop
    //   1460: goto -209 -> 1251
    //   1463: ldc_w 278
    //   1466: new 82	java/lang/StringBuilder
    //   1469: dup
    //   1470: invokespecial 83	java/lang/StringBuilder:<init>	()V
    //   1473: ldc_w 404
    //   1476: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1479: aload 6
    //   1481: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1484: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1487: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1490: invokestatic 288	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   1493: pop
    //   1494: aload_0
    //   1495: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   1498: invokestatic 407	com/kahuna/sdk/l:I	(Lcom/kahuna/sdk/l;)Lcom/kahuna/sdk/m;
    //   1501: astore 5
    //   1503: aload_0
    //   1504: getfield 16	com/kahuna/sdk/l$b:a	Lcom/kahuna/sdk/l;
    //   1507: invokestatic 410	com/kahuna/sdk/l:G	(Lcom/kahuna/sdk/l;)Ljava/lang/String;
    //   1510: astore 6
    //   1512: new 9	com/kahuna/sdk/l$b$1
    //   1515: dup
    //   1516: aload_0
    //   1517: invokespecial 413	com/kahuna/sdk/l$b$1:<init>	(Lcom/kahuna/sdk/l$b;)V
    //   1520: astore 7
    //   1522: aload 5
    //   1524: aconst_null
    //   1525: aload 6
    //   1527: iconst_1
    //   1528: anewarray 415	com/kahuna/sdk/g
    //   1531: dup
    //   1532: iconst_0
    //   1533: aload_3
    //   1534: aastore
    //   1535: aload 4
    //   1537: ldc_w 417
    //   1540: aload 7
    //   1542: invokevirtual 420	com/kahuna/sdk/m:a	(Landroid/content/Context;Ljava/lang/String;[Lcom/kahuna/sdk/g;Lcom/kahuna/sdk/RequestParams;Ljava/lang/String;Lcom/kahuna/sdk/n;)V
    //   1545: return
    //   1546: ldc_w 278
    //   1549: new 82	java/lang/StringBuilder
    //   1552: dup
    //   1553: invokespecial 83	java/lang/StringBuilder:<init>	()V
    //   1556: ldc_w 404
    //   1559: invokevirtual 89	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1562: aload 4
    //   1564: invokevirtual 283	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1567: invokevirtual 104	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1570: invokestatic 288	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   1573: pop
    //   1574: goto -80 -> 1494
    //   1577: astore 4
    //   1579: aload_3
    //   1580: monitorexit
    //   1581: aload 4
    //   1583: athrow
    //   1584: iconst_0
    //   1585: istore_2
    //   1586: goto -956 -> 630
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1589	0	this	b
    //   610	793	1	i	int
    //   630	956	2	j	int
    //   702	35	3	localException	Exception
    //   28	493	4	localRequestParams1	RequestParams
    //   695	211	4	localObject3	Object
    //   1020	5	4	localObject4	Object
    //   1027	5	4	localObject5	Object
    //   1034	529	4	localRequestParams2	RequestParams
    //   1577	5	4	localObject6	Object
    //   471	22	5	localJSONArray	JSONArray
    //   511	1	5	localThrowable	Throwable
    //   538	985	5	localObject7	Object
    //   452	1074	6	localObject8	Object
    //   1249	292	7	localObject9	Object
    //   1271	170	8	localObject10	Object
    // Exception table:
    //   from	to	target	type
    //   426	482	511	java/lang/Throwable
    //   482	508	511	java/lang/Throwable
    //   789	801	511	java/lang/Throwable
    //   801	876	511	java/lang/Throwable
    //   876	902	511	java/lang/Throwable
    //   905	918	511	java/lang/Throwable
    //   10	21	695	finally
    //   697	699	695	finally
    //   0	10	702	java/lang/Exception
    //   21	193	702	java/lang/Exception
    //   193	220	702	java/lang/Exception
    //   220	253	702	java/lang/Exception
    //   253	282	702	java/lang/Exception
    //   282	336	702	java/lang/Exception
    //   336	346	702	java/lang/Exception
    //   349	413	702	java/lang/Exception
    //   413	426	702	java/lang/Exception
    //   426	482	702	java/lang/Exception
    //   482	508	702	java/lang/Exception
    //   513	531	702	java/lang/Exception
    //   531	565	702	java/lang/Exception
    //   699	702	702	java/lang/Exception
    //   789	801	702	java/lang/Exception
    //   801	876	702	java/lang/Exception
    //   876	902	702	java/lang/Exception
    //   905	918	702	java/lang/Exception
    //   939	967	702	java/lang/Exception
    //   978	988	702	java/lang/Exception
    //   1024	1027	702	java/lang/Exception
    //   1031	1034	702	java/lang/Exception
    //   1038	1041	702	java/lang/Exception
    //   1041	1100	702	java/lang/Exception
    //   1100	1131	702	java/lang/Exception
    //   1131	1180	702	java/lang/Exception
    //   1180	1251	702	java/lang/Exception
    //   1251	1300	702	java/lang/Exception
    //   1300	1351	702	java/lang/Exception
    //   1358	1399	702	java/lang/Exception
    //   1406	1415	702	java/lang/Exception
    //   1418	1460	702	java/lang/Exception
    //   1463	1494	702	java/lang/Exception
    //   1494	1545	702	java/lang/Exception
    //   1546	1574	702	java/lang/Exception
    //   988	1017	1020	finally
    //   1017	1019	1020	finally
    //   1022	1024	1020	finally
    //   565	600	1027	finally
    //   600	627	1027	finally
    //   635	675	1027	finally
    //   680	688	1027	finally
    //   921	934	1027	finally
    //   937	939	1027	finally
    //   1029	1031	1027	finally
    //   967	978	1034	finally
    //   1036	1038	1034	finally
    //   750	779	1577	finally
    //   779	781	1577	finally
    //   1579	1581	1577	finally
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.l.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */