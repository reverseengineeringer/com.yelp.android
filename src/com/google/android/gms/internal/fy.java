package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Color;
import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.SearchAdRequestParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.reward.mediation.client.RewardItemParcel;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@fv
public final class fy
{
  private static final SimpleDateFormat a = new SimpleDateFormat("yyyyMMdd", Locale.US);
  
  public static AdResponseParcel a(Context paramContext, AdRequestInfoParcel paramAdRequestInfoParcel, String paramString)
  {
    Object localObject1;
    String str1;
    boolean bool1;
    long l1;
    label107:
    Object localObject2;
    int i;
    label180:
    label200:
    label249:
    label265:
    label297:
    label329:
    int j;
    try
    {
      JSONObject localJSONObject = new JSONObject(paramString);
      localObject1 = localJSONObject.optString("ad_base_url", null);
      str1 = localJSONObject.optString("ad_url", null);
      String str2 = localJSONObject.optString("ad_size", null);
      if ((paramAdRequestInfoParcel == null) || (m == 0)) {
        break label783;
      }
      bool1 = true;
      long l2;
      String str3;
      if (bool1)
      {
        paramString = localJSONObject.optString("ad_json", null);
        l2 = -1L;
        str3 = localJSONObject.optString("debug_dialog", null);
        if (!localJSONObject.has("interstitial_timeout")) {
          break label789;
        }
        l1 = (localJSONObject.getDouble("interstitial_timeout") * 1000.0D);
        localObject2 = localJSONObject.optString("orientation", null);
        i = -1;
        if (!"portrait".equals(localObject2)) {
          break label180;
        }
        i = s.g().b();
      }
      for (;;)
      {
        localObject2 = null;
        if (TextUtils.isEmpty(paramString)) {
          break label200;
        }
        if (!TextUtils.isEmpty((CharSequence)localObject1)) {
          break label774;
        }
        gz.d("Could not parse the mediation config: Missing required ad_base_url field");
        return new AdResponseParcel(0);
        paramString = localJSONObject.optString("ad_html", null);
        break;
        if ("landscape".equals(localObject2)) {
          i = s.g().a();
        }
      }
      if (!TextUtils.isEmpty(str1))
      {
        localObject2 = fx.a(paramAdRequestInfoParcel, paramContext, k.b, str1, null, null, null, null, null);
        paramString = b;
        str1 = c;
        l2 = n;
        Object localObject3 = localJSONObject.optJSONArray("click_urls");
        if (localObject2 != null) {
          break label741;
        }
        paramContext = null;
        localObject1 = paramContext;
        if (localObject3 != null) {
          localObject1 = a((JSONArray)localObject3, paramContext);
        }
        Object localObject4 = localJSONObject.optJSONArray("impression_urls");
        if (localObject2 != null) {
          break label750;
        }
        paramContext = null;
        localObject3 = paramContext;
        if (localObject4 != null) {
          localObject3 = a((JSONArray)localObject4, paramContext);
        }
        Object localObject5 = localJSONObject.optJSONArray("manual_impression_urls");
        if (localObject2 != null) {
          break label759;
        }
        paramContext = null;
        localObject4 = paramContext;
        if (localObject5 != null) {
          localObject4 = a((JSONArray)localObject5, paramContext);
        }
        j = i;
        if (localObject2 == null) {
          break label768;
        }
        if (l != -1) {
          i = l;
        }
        j = i;
        if (g <= 0L) {
          break label768;
        }
        l1 = g;
        label388:
        localObject2 = localJSONObject.optString("active_view");
        paramContext = null;
        boolean bool2 = localJSONObject.optBoolean("ad_is_javascript", false);
        if (bool2) {
          paramContext = localJSONObject.optString("ad_passback_url", null);
        }
        boolean bool3 = localJSONObject.optBoolean("mediation", false);
        boolean bool4 = localJSONObject.optBoolean("custom_render_allowed", false);
        boolean bool5 = localJSONObject.optBoolean("content_url_opted_out", true);
        boolean bool6 = localJSONObject.optBoolean("prefetch", false);
        j = localJSONObject.optInt("oauth2_token_status", 0);
        long l3 = localJSONObject.optLong("refresh_interval_milliseconds", -1L);
        long l4 = localJSONObject.optLong("mediation_config_cache_time_milliseconds", -1L);
        localObject5 = localJSONObject.optString("gws_query_id", "");
        boolean bool7 = "height".equals(localJSONObject.optString("fluid", ""));
        boolean bool8 = localJSONObject.optBoolean("native_express", false);
        List localList1 = a(localJSONObject.optJSONArray("video_start_urls"), null);
        List localList2 = a(localJSONObject.optJSONArray("video_complete_urls"), null);
        RewardItemParcel localRewardItemParcel = RewardItemParcel.a(localJSONObject.optJSONArray("rewards"));
        boolean bool9 = localJSONObject.optBoolean("use_displayed_impression", false);
        paramContext = new AdResponseParcel(paramAdRequestInfoParcel, paramString, str1, (List)localObject1, (List)localObject3, l1, bool3, l4, (List)localObject4, l3, i, str2, l2, str3, bool2, paramContext, (String)localObject2, bool4, bool1, p, bool5, bool6, j, (String)localObject5, bool7, bool8, localRewardItemParcel, localList1, localList2, bool9);
        return paramContext;
      }
    }
    catch (JSONException paramContext)
    {
      gz.d("Could not parse the mediation config: " + paramContext.getMessage());
      return new AdResponseParcel(0);
    }
    paramAdRequestInfoParcel = new StringBuilder().append("Could not parse the mediation config: Missing required ");
    if (bool1) {}
    for (paramContext = "ad_json";; paramContext = "ad_html")
    {
      gz.d(paramContext + " or " + "ad_url" + " field.");
      return new AdResponseParcel(0);
      label741:
      paramContext = d;
      break label265;
      label750:
      paramContext = f;
      break label297;
      label759:
      paramContext = j;
      break label329;
      label768:
      i = j;
      break label388;
      label774:
      str1 = paramString;
      paramString = (String)localObject1;
      break label249;
      label783:
      bool1 = false;
      break;
      label789:
      l1 = -1L;
      break label107;
    }
  }
  
  private static Integer a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 1;; i = 0) {
      return Integer.valueOf(i);
    }
  }
  
  private static String a(int paramInt)
  {
    return String.format(Locale.US, "#%06x", new Object[] { Integer.valueOf(0xFFFFFF & paramInt) });
  }
  
  private static String a(NativeAdOptionsParcel paramNativeAdOptionsParcel)
  {
    if (paramNativeAdOptionsParcel != null) {}
    for (int i = c;; i = 0) {
      switch (i)
      {
      default: 
        return "any";
      }
    }
    return "portrait";
    return "landscape";
  }
  
  private static List<String> a(JSONArray paramJSONArray, List<String> paramList)
    throws JSONException
  {
    if (paramJSONArray == null)
    {
      paramList = null;
      return paramList;
    }
    Object localObject = paramList;
    if (paramList == null) {
      localObject = new LinkedList();
    }
    int i = 0;
    for (;;)
    {
      paramList = (List<String>)localObject;
      if (i >= paramJSONArray.length()) {
        break;
      }
      ((List)localObject).add(paramJSONArray.getString(i));
      i += 1;
    }
  }
  
  /* Error */
  public static JSONObject a(Context paramContext, AdRequestInfoParcel paramAdRequestInfoParcel, gd paramgd, gh.a parama, Location paramLocation, ah paramah, String paramString1, String paramString2, List<String> paramList, Bundle paramBundle)
  {
    // Byte code:
    //   0: new 295	java/util/HashMap
    //   3: dup
    //   4: invokespecial 296	java/util/HashMap:<init>	()V
    //   7: astore_0
    //   8: aload 8
    //   10: invokeinterface 299 1 0
    //   15: ifle +19 -> 34
    //   18: aload_0
    //   19: ldc_w 301
    //   22: ldc_w 303
    //   25: aload 8
    //   27: invokestatic 307	android/text/TextUtils:join	(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    //   30: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   33: pop
    //   34: aload_1
    //   35: getfield 314	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:b	Landroid/os/Bundle;
    //   38: ifnull +15 -> 53
    //   41: aload_0
    //   42: ldc_w 316
    //   45: aload_1
    //   46: getfield 314	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:b	Landroid/os/Bundle;
    //   49: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   52: pop
    //   53: aload_0
    //   54: aload_1
    //   55: getfield 319	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:c	Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    //   58: invokestatic 322	com/google/android/gms/internal/fy:a	(Ljava/util/HashMap;Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    //   61: aload_0
    //   62: ldc_w 323
    //   65: aload_1
    //   66: getfield 326	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:d	Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    //   69: getfield 329	com/google/android/gms/ads/internal/client/AdSizeParcel:b	Ljava/lang/String;
    //   72: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   75: pop
    //   76: aload_1
    //   77: getfield 326	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:d	Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    //   80: getfield 331	com/google/android/gms/ads/internal/client/AdSizeParcel:f	I
    //   83: iconst_m1
    //   84: if_icmpne +14 -> 98
    //   87: aload_0
    //   88: ldc_w 333
    //   91: ldc_w 335
    //   94: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   97: pop
    //   98: aload_1
    //   99: getfield 326	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:d	Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    //   102: getfield 336	com/google/android/gms/ads/internal/client/AdSizeParcel:c	I
    //   105: bipush -2
    //   107: if_icmpne +14 -> 121
    //   110: aload_0
    //   111: ldc_w 338
    //   114: ldc_w 340
    //   117: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   120: pop
    //   121: aload_1
    //   122: getfield 326	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:d	Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    //   125: getfield 342	com/google/android/gms/ads/internal/client/AdSizeParcel:j	Z
    //   128: ifeq +12 -> 140
    //   131: aload_0
    //   132: ldc -59
    //   134: ldc -61
    //   136: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   139: pop
    //   140: aload_1
    //   141: getfield 326	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:d	Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    //   144: getfield 346	com/google/android/gms/ads/internal/client/AdSizeParcel:h	[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    //   147: ifnull +171 -> 318
    //   150: new 221	java/lang/StringBuilder
    //   153: dup
    //   154: invokespecial 223	java/lang/StringBuilder:<init>	()V
    //   157: astore 4
    //   159: aload_1
    //   160: getfield 326	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:d	Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    //   163: getfield 346	com/google/android/gms/ads/internal/client/AdSizeParcel:h	[Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    //   166: astore 5
    //   168: aload 5
    //   170: arraylength
    //   171: istore 12
    //   173: iconst_0
    //   174: istore 10
    //   176: iload 10
    //   178: iload 12
    //   180: if_icmpge +128 -> 308
    //   183: aload 5
    //   185: iload 10
    //   187: aaload
    //   188: astore 8
    //   190: aload 4
    //   192: invokevirtual 347	java/lang/StringBuilder:length	()I
    //   195: ifeq +12 -> 207
    //   198: aload 4
    //   200: ldc_w 349
    //   203: invokevirtual 229	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   206: pop
    //   207: aload 8
    //   209: getfield 331	com/google/android/gms/ads/internal/client/AdSizeParcel:f	I
    //   212: iconst_m1
    //   213: if_icmpne +75 -> 288
    //   216: aload 8
    //   218: getfield 351	com/google/android/gms/ads/internal/client/AdSizeParcel:g	I
    //   221: i2f
    //   222: aload_2
    //   223: getfield 357	com/google/android/gms/internal/gd:r	F
    //   226: fdiv
    //   227: f2i
    //   228: istore 11
    //   230: aload 4
    //   232: iload 11
    //   234: invokevirtual 360	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   237: pop
    //   238: aload 4
    //   240: ldc_w 362
    //   243: invokevirtual 229	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   246: pop
    //   247: aload 8
    //   249: getfield 336	com/google/android/gms/ads/internal/client/AdSizeParcel:c	I
    //   252: bipush -2
    //   254: if_icmpne +44 -> 298
    //   257: aload 8
    //   259: getfield 364	com/google/android/gms/ads/internal/client/AdSizeParcel:d	I
    //   262: i2f
    //   263: aload_2
    //   264: getfield 357	com/google/android/gms/internal/gd:r	F
    //   267: fdiv
    //   268: f2i
    //   269: istore 11
    //   271: aload 4
    //   273: iload 11
    //   275: invokevirtual 360	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   278: pop
    //   279: iload 10
    //   281: iconst_1
    //   282: iadd
    //   283: istore 10
    //   285: goto -109 -> 176
    //   288: aload 8
    //   290: getfield 331	com/google/android/gms/ads/internal/client/AdSizeParcel:f	I
    //   293: istore 11
    //   295: goto -65 -> 230
    //   298: aload 8
    //   300: getfield 336	com/google/android/gms/ads/internal/client/AdSizeParcel:c	I
    //   303: istore 11
    //   305: goto -34 -> 271
    //   308: aload_0
    //   309: ldc_w 366
    //   312: aload 4
    //   314: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   317: pop
    //   318: aload_1
    //   319: getfield 50	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:m	I
    //   322: ifeq +79 -> 401
    //   325: aload_0
    //   326: ldc_w 368
    //   329: aload_1
    //   330: getfield 50	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:m	I
    //   333: invokestatic 258	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   336: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   339: pop
    //   340: aload_1
    //   341: getfield 326	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:d	Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    //   344: getfield 370	com/google/android/gms/ads/internal/client/AdSizeParcel:k	Z
    //   347: ifne +54 -> 401
    //   350: aload_0
    //   351: ldc_w 372
    //   354: aload_1
    //   355: getfield 374	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:n	Ljava/util/List;
    //   358: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   361: pop
    //   362: aload_0
    //   363: ldc_w 376
    //   366: aload_1
    //   367: getfield 380	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:z	Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;
    //   370: invokestatic 382	com/google/android/gms/internal/fy:a	(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)Ljava/lang/String;
    //   373: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   376: pop
    //   377: aload_1
    //   378: getfield 385	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:A	Ljava/util/List;
    //   381: invokeinterface 388 1 0
    //   386: ifne +15 -> 401
    //   389: aload_0
    //   390: ldc_w 390
    //   393: aload_1
    //   394: getfield 385	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:A	Ljava/util/List;
    //   397: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   400: pop
    //   401: aload_0
    //   402: ldc_w 392
    //   405: aload_1
    //   406: getfield 395	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:e	Ljava/lang/String;
    //   409: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   412: pop
    //   413: aload_0
    //   414: ldc_w 397
    //   417: aload_1
    //   418: getfield 400	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:f	Landroid/content/pm/ApplicationInfo;
    //   421: getfield 405	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   424: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   427: pop
    //   428: aload_1
    //   429: getfield 408	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:g	Landroid/content/pm/PackageInfo;
    //   432: ifnull +21 -> 453
    //   435: aload_0
    //   436: ldc_w 410
    //   439: aload_1
    //   440: getfield 408	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:g	Landroid/content/pm/PackageInfo;
    //   443: getfield 415	android/content/pm/PackageInfo:versionCode	I
    //   446: invokestatic 258	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   449: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   452: pop
    //   453: aload_0
    //   454: ldc_w 417
    //   457: aload 7
    //   459: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   462: pop
    //   463: aload_0
    //   464: ldc_w 419
    //   467: aload_1
    //   468: getfield 422	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:i	Ljava/lang/String;
    //   471: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   474: pop
    //   475: aload_0
    //   476: ldc_w 424
    //   479: aload_1
    //   480: getfield 426	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:j	Ljava/lang/String;
    //   483: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   486: pop
    //   487: aload_0
    //   488: ldc_w 428
    //   491: aload_1
    //   492: getfield 118	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:k	Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    //   495: getfield 123	com/google/android/gms/ads/internal/util/client/VersionInfoParcel:b	Ljava/lang/String;
    //   498: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   501: pop
    //   502: aload_0
    //   503: aload_2
    //   504: aload_3
    //   505: invokestatic 431	com/google/android/gms/internal/fy:a	(Ljava/util/HashMap;Lcom/google/android/gms/internal/gd;Lcom/google/android/gms/internal/gh$a;)V
    //   508: aload_0
    //   509: ldc_w 433
    //   512: getstatic 438	android/os/Build:MANUFACTURER	Ljava/lang/String;
    //   515: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   518: pop
    //   519: aload_0
    //   520: ldc_w 440
    //   523: getstatic 443	android/os/Build:MODEL	Ljava/lang/String;
    //   526: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   529: pop
    //   530: aload_1
    //   531: getfield 319	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:c	Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    //   534: getfield 447	com/google/android/gms/ads/internal/client/AdRequestParcel:a	I
    //   537: iconst_2
    //   538: if_icmplt +24 -> 562
    //   541: aload_1
    //   542: getfield 319	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:c	Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    //   545: getfield 450	com/google/android/gms/ads/internal/client/AdRequestParcel:k	Landroid/location/Location;
    //   548: ifnull +14 -> 562
    //   551: aload_0
    //   552: aload_1
    //   553: getfield 319	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:c	Lcom/google/android/gms/ads/internal/client/AdRequestParcel;
    //   556: getfield 450	com/google/android/gms/ads/internal/client/AdRequestParcel:k	Landroid/location/Location;
    //   559: invokestatic 453	com/google/android/gms/internal/fy:a	(Ljava/util/HashMap;Landroid/location/Location;)V
    //   562: aload_1
    //   563: getfield 454	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:a	I
    //   566: iconst_2
    //   567: if_icmplt +15 -> 582
    //   570: aload_0
    //   571: ldc_w 456
    //   574: aload_1
    //   575: getfield 458	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:l	Landroid/os/Bundle;
    //   578: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   581: pop
    //   582: aload_1
    //   583: getfield 454	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:a	I
    //   586: iconst_4
    //   587: if_icmplt +25 -> 612
    //   590: aload_1
    //   591: getfield 216	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:p	Z
    //   594: ifeq +18 -> 612
    //   597: aload_0
    //   598: ldc_w 460
    //   601: aload_1
    //   602: getfield 216	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:p	Z
    //   605: invokestatic 465	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   608: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   611: pop
    //   612: aload 9
    //   614: ifnull +13 -> 627
    //   617: aload_0
    //   618: ldc_w 467
    //   621: aload 9
    //   623: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   626: pop
    //   627: aload_1
    //   628: getfield 454	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:a	I
    //   631: iconst_5
    //   632: if_icmplt +332 -> 964
    //   635: aload_0
    //   636: ldc_w 469
    //   639: aload_1
    //   640: getfield 472	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:t	F
    //   643: invokestatic 477	java/lang/Float:valueOf	(F)Ljava/lang/Float;
    //   646: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   649: pop
    //   650: aload_0
    //   651: ldc_w 479
    //   654: aload_1
    //   655: getfield 482	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:s	I
    //   658: invokestatic 258	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   661: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   664: pop
    //   665: aload_0
    //   666: ldc_w 484
    //   669: aload_1
    //   670: getfield 486	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:r	I
    //   673: invokestatic 258	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   676: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   679: pop
    //   680: aload_1
    //   681: getfield 454	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:a	I
    //   684: bipush 6
    //   686: if_icmplt +51 -> 737
    //   689: aload_1
    //   690: getfield 489	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:u	Ljava/lang/String;
    //   693: invokestatic 96	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   696: istore 13
    //   698: iload 13
    //   700: ifne +22 -> 722
    //   703: aload_0
    //   704: ldc_w 491
    //   707: new 31	org/json/JSONObject
    //   710: dup
    //   711: aload_1
    //   712: getfield 489	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:u	Ljava/lang/String;
    //   715: invokespecial 34	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   718: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   721: pop
    //   722: aload_0
    //   723: ldc_w 493
    //   726: aload_1
    //   727: getfield 496	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:v	J
    //   730: invokestatic 501	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   733: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   736: pop
    //   737: aload_1
    //   738: getfield 454	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:a	I
    //   741: bipush 7
    //   743: if_icmplt +15 -> 758
    //   746: aload_0
    //   747: ldc_w 503
    //   750: aload_1
    //   751: getfield 506	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:w	Ljava/lang/String;
    //   754: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   757: pop
    //   758: aload_1
    //   759: getfield 454	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:a	I
    //   762: bipush 11
    //   764: if_icmplt +25 -> 789
    //   767: aload_1
    //   768: getfield 510	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:C	Lcom/google/android/gms/ads/internal/request/CapabilityParcel;
    //   771: ifnull +18 -> 789
    //   774: aload_0
    //   775: ldc_w 512
    //   778: aload_1
    //   779: getfield 510	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:C	Lcom/google/android/gms/ads/internal/request/CapabilityParcel;
    //   782: invokevirtual 517	com/google/android/gms/ads/internal/request/CapabilityParcel:a	()Landroid/os/Bundle;
    //   785: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   788: pop
    //   789: aload_0
    //   790: aload 6
    //   792: invokestatic 520	com/google/android/gms/internal/fy:a	(Ljava/util/HashMap;Ljava/lang/String;)V
    //   795: aload_1
    //   796: getfield 454	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:a	I
    //   799: bipush 12
    //   801: if_icmplt +25 -> 826
    //   804: aload_1
    //   805: getfield 523	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:D	Ljava/lang/String;
    //   808: invokestatic 96	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   811: ifne +15 -> 826
    //   814: aload_0
    //   815: ldc_w 525
    //   818: aload_1
    //   819: getfield 523	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:D	Ljava/lang/String;
    //   822: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   825: pop
    //   826: aload_1
    //   827: getfield 454	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:a	I
    //   830: bipush 13
    //   832: if_icmplt +18 -> 850
    //   835: aload_0
    //   836: ldc_w 527
    //   839: aload_1
    //   840: getfield 530	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:E	F
    //   843: invokestatic 477	java/lang/Float:valueOf	(F)Ljava/lang/Float;
    //   846: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   849: pop
    //   850: aload_1
    //   851: getfield 454	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:a	I
    //   854: bipush 14
    //   856: if_icmplt +25 -> 881
    //   859: aload_1
    //   860: getfield 532	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:F	I
    //   863: ifle +18 -> 881
    //   866: aload_0
    //   867: ldc_w 534
    //   870: aload_1
    //   871: getfield 532	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:F	I
    //   874: invokestatic 258	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   877: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   880: pop
    //   881: aload_1
    //   882: getfield 454	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:a	I
    //   885: bipush 15
    //   887: if_icmplt +27 -> 914
    //   890: aload_1
    //   891: getfield 537	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:G	I
    //   894: iconst_m1
    //   895: if_icmpne +157 -> 1052
    //   898: iconst_m1
    //   899: istore 10
    //   901: aload_0
    //   902: ldc_w 539
    //   905: iload 10
    //   907: invokestatic 258	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   910: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   913: pop
    //   914: iconst_2
    //   915: invokestatic 542	com/google/android/gms/internal/gz:a	(I)Z
    //   918: ifeq +38 -> 956
    //   921: invokestatic 545	com/google/android/gms/ads/internal/s:e	()Lcom/google/android/gms/internal/hd;
    //   924: aload_0
    //   925: invokevirtual 550	com/google/android/gms/internal/hd:a	(Ljava/util/Map;)Lorg/json/JSONObject;
    //   928: iconst_2
    //   929: invokevirtual 552	org/json/JSONObject:toString	(I)Ljava/lang/String;
    //   932: astore_1
    //   933: new 221	java/lang/StringBuilder
    //   936: dup
    //   937: invokespecial 223	java/lang/StringBuilder:<init>	()V
    //   940: ldc_w 554
    //   943: invokevirtual 229	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   946: aload_1
    //   947: invokevirtual 229	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   950: invokevirtual 236	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   953: invokestatic 556	com/google/android/gms/internal/gz:e	(Ljava/lang/String;)V
    //   956: invokestatic 545	com/google/android/gms/ads/internal/s:e	()Lcom/google/android/gms/internal/hd;
    //   959: aload_0
    //   960: invokevirtual 550	com/google/android/gms/internal/hd:a	(Ljava/util/Map;)Lorg/json/JSONObject;
    //   963: areturn
    //   964: aload_0
    //   965: ldc_w 469
    //   968: aload_2
    //   969: getfield 357	com/google/android/gms/internal/gd:r	F
    //   972: invokestatic 477	java/lang/Float:valueOf	(F)Ljava/lang/Float;
    //   975: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   978: pop
    //   979: aload_0
    //   980: ldc_w 479
    //   983: aload_2
    //   984: getfield 558	com/google/android/gms/internal/gd:t	I
    //   987: invokestatic 258	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   990: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   993: pop
    //   994: aload_0
    //   995: ldc_w 484
    //   998: aload_2
    //   999: getfield 559	com/google/android/gms/internal/gd:s	I
    //   1002: invokestatic 258	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1005: invokevirtual 311	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   1008: pop
    //   1009: goto -329 -> 680
    //   1012: astore_0
    //   1013: new 221	java/lang/StringBuilder
    //   1016: dup
    //   1017: invokespecial 223	java/lang/StringBuilder:<init>	()V
    //   1020: ldc_w 561
    //   1023: invokevirtual 229	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1026: aload_0
    //   1027: invokevirtual 233	org/json/JSONException:getMessage	()Ljava/lang/String;
    //   1030: invokevirtual 229	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1033: invokevirtual 236	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1036: invokestatic 103	com/google/android/gms/internal/gz:d	(Ljava/lang/String;)V
    //   1039: aconst_null
    //   1040: areturn
    //   1041: astore_2
    //   1042: ldc_w 563
    //   1045: aload_2
    //   1046: invokestatic 566	com/google/android/gms/internal/gz:d	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   1049: goto -327 -> 722
    //   1052: aload_1
    //   1053: getfield 537	com/google/android/gms/ads/internal/request/AdRequestInfoParcel:G	I
    //   1056: istore 10
    //   1058: goto -157 -> 901
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	1061	0	paramContext	Context
    //   0	1061	1	paramAdRequestInfoParcel	AdRequestInfoParcel
    //   0	1061	2	paramgd	gd
    //   0	1061	3	parama	gh.a
    //   0	1061	4	paramLocation	Location
    //   0	1061	5	paramah	ah
    //   0	1061	6	paramString1	String
    //   0	1061	7	paramString2	String
    //   0	1061	8	paramList	List<String>
    //   0	1061	9	paramBundle	Bundle
    //   174	883	10	i	int
    //   228	76	11	j	int
    //   171	10	12	k	int
    //   696	3	13	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   0	34	1012	org/json/JSONException
    //   34	53	1012	org/json/JSONException
    //   53	98	1012	org/json/JSONException
    //   98	121	1012	org/json/JSONException
    //   121	140	1012	org/json/JSONException
    //   140	173	1012	org/json/JSONException
    //   190	207	1012	org/json/JSONException
    //   207	230	1012	org/json/JSONException
    //   230	271	1012	org/json/JSONException
    //   271	279	1012	org/json/JSONException
    //   288	295	1012	org/json/JSONException
    //   298	305	1012	org/json/JSONException
    //   308	318	1012	org/json/JSONException
    //   318	401	1012	org/json/JSONException
    //   401	453	1012	org/json/JSONException
    //   453	562	1012	org/json/JSONException
    //   562	582	1012	org/json/JSONException
    //   582	612	1012	org/json/JSONException
    //   617	627	1012	org/json/JSONException
    //   627	680	1012	org/json/JSONException
    //   680	698	1012	org/json/JSONException
    //   722	737	1012	org/json/JSONException
    //   737	758	1012	org/json/JSONException
    //   758	789	1012	org/json/JSONException
    //   789	826	1012	org/json/JSONException
    //   826	850	1012	org/json/JSONException
    //   850	881	1012	org/json/JSONException
    //   881	898	1012	org/json/JSONException
    //   901	914	1012	org/json/JSONException
    //   914	956	1012	org/json/JSONException
    //   956	964	1012	org/json/JSONException
    //   964	1009	1012	org/json/JSONException
    //   1042	1049	1012	org/json/JSONException
    //   1052	1058	1012	org/json/JSONException
    //   703	722	1041	org/json/JSONException
  }
  
  private static void a(HashMap<String, Object> paramHashMap, Location paramLocation)
  {
    HashMap localHashMap = new HashMap();
    float f = paramLocation.getAccuracy();
    long l1 = paramLocation.getTime();
    long l2 = (paramLocation.getLatitude() * 1.0E7D);
    long l3 = (paramLocation.getLongitude() * 1.0E7D);
    localHashMap.put("radius", Float.valueOf(f * 1000.0F));
    localHashMap.put("lat", Long.valueOf(l2));
    localHashMap.put("long", Long.valueOf(l3));
    localHashMap.put("time", Long.valueOf(l1 * 1000L));
    paramHashMap.put("uule", localHashMap);
  }
  
  private static void a(HashMap<String, Object> paramHashMap, AdRequestParcel paramAdRequestParcel)
  {
    String str = gx.a();
    if (str != null) {
      paramHashMap.put("abf", str);
    }
    if (b != -1L) {
      paramHashMap.put("cust_age", a.format(new Date(b)));
    }
    if (c != null) {
      paramHashMap.put("extras", c);
    }
    if (d != -1) {
      paramHashMap.put("cust_gender", Integer.valueOf(d));
    }
    if (e != null) {
      paramHashMap.put("kw", e);
    }
    if (g != -1) {
      paramHashMap.put("tag_for_child_directed_treatment", Integer.valueOf(g));
    }
    if (f) {
      paramHashMap.put("adtest", "on");
    }
    if (a >= 2)
    {
      if (h) {
        paramHashMap.put("d_imp_hdr", Integer.valueOf(1));
      }
      if (!TextUtils.isEmpty(i)) {
        paramHashMap.put("ppid", i);
      }
      if (j != null) {
        a(paramHashMap, j);
      }
    }
    if ((a >= 3) && (l != null)) {
      paramHashMap.put("url", l);
    }
    if (a >= 5)
    {
      if (n != null) {
        paramHashMap.put("custom_targeting", n);
      }
      if (o != null) {
        paramHashMap.put("category_exclusions", o);
      }
      if (p != null) {
        paramHashMap.put("request_agent", p);
      }
    }
    if ((a >= 6) && (q != null)) {
      paramHashMap.put("request_pkg", q);
    }
    if (a >= 7) {
      paramHashMap.put("is_designed_for_families", Boolean.valueOf(r));
    }
  }
  
  private static void a(HashMap<String, Object> paramHashMap, SearchAdRequestParcel paramSearchAdRequestParcel)
  {
    Object localObject2 = null;
    if (Color.alpha(b) != 0) {
      paramHashMap.put("acolor", a(b));
    }
    if (Color.alpha(c) != 0) {
      paramHashMap.put("bgcolor", a(c));
    }
    if ((Color.alpha(d) != 0) && (Color.alpha(e) != 0))
    {
      paramHashMap.put("gradientto", a(d));
      paramHashMap.put("gradientfrom", a(e));
    }
    if (Color.alpha(f) != 0) {
      paramHashMap.put("bcolor", a(f));
    }
    paramHashMap.put("bthick", Integer.toString(g));
    Object localObject1;
    switch (h)
    {
    default: 
      localObject1 = null;
      if (localObject1 != null) {
        paramHashMap.put("btype", localObject1);
      }
      switch (i)
      {
      default: 
        localObject1 = localObject2;
      }
      break;
    }
    for (;;)
    {
      if (localObject1 != null) {
        paramHashMap.put("callbuttoncolor", localObject1);
      }
      if (j != null) {
        paramHashMap.put("channel", j);
      }
      if (Color.alpha(k) != 0) {
        paramHashMap.put("dcolor", a(k));
      }
      if (l != null) {
        paramHashMap.put("font", l);
      }
      if (Color.alpha(m) != 0) {
        paramHashMap.put("hcolor", a(m));
      }
      paramHashMap.put("headersize", Integer.toString(n));
      if (o != null) {
        paramHashMap.put("q", o);
      }
      return;
      localObject1 = "none";
      break;
      localObject1 = "dashed";
      break;
      localObject1 = "dotted";
      break;
      localObject1 = "solid";
      break;
      localObject1 = "dark";
      continue;
      localObject1 = "light";
      continue;
      localObject1 = "medium";
    }
  }
  
  private static void a(HashMap<String, Object> paramHashMap, gd paramgd, gh.a parama)
  {
    paramHashMap.put("am", Integer.valueOf(a));
    paramHashMap.put("cog", a(b));
    paramHashMap.put("coh", a(c));
    if (!TextUtils.isEmpty(d)) {
      paramHashMap.put("carrier", d);
    }
    paramHashMap.put("gl", e);
    if (f) {
      paramHashMap.put("simulator", Integer.valueOf(1));
    }
    if (g) {
      paramHashMap.put("is_sidewinder", Integer.valueOf(1));
    }
    paramHashMap.put("ma", a(h));
    paramHashMap.put("sp", a(i));
    paramHashMap.put("hl", j);
    if (!TextUtils.isEmpty(k)) {
      paramHashMap.put("mv", k);
    }
    paramHashMap.put("muv", Integer.valueOf(l));
    if (m != -2) {
      paramHashMap.put("cnt", Integer.valueOf(m));
    }
    paramHashMap.put("gnt", Integer.valueOf(n));
    paramHashMap.put("pt", Integer.valueOf(o));
    paramHashMap.put("rm", Integer.valueOf(p));
    paramHashMap.put("riv", Integer.valueOf(q));
    Bundle localBundle1 = new Bundle();
    localBundle1.putString("build", y);
    Bundle localBundle2 = new Bundle();
    localBundle2.putBoolean("is_charging", v);
    localBundle2.putDouble("battery_level", u);
    localBundle1.putBundle("battery", localBundle2);
    localBundle2 = new Bundle();
    localBundle2.putInt("active_network_state", x);
    localBundle2.putBoolean("active_network_metered", w);
    if (parama != null)
    {
      paramgd = new Bundle();
      paramgd.putInt("predicted_latency_micros", a);
      paramgd.putLong("predicted_down_throughput_bps", b);
      paramgd.putLong("predicted_up_throughput_bps", c);
      localBundle2.putBundle("predictions", paramgd);
    }
    localBundle1.putBundle("network", localBundle2);
    paramHashMap.put("device", localBundle1);
  }
  
  private static void a(HashMap<String, Object> paramHashMap, String paramString)
  {
    if (paramString != null)
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("token", paramString);
      paramHashMap.put("pan", localHashMap);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */