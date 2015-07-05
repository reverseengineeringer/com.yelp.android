package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.graphics.Color;
import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@ey
public final class fr
{
  private static final SimpleDateFormat uD = new SimpleDateFormat("yyyyMMdd");
  
  public static fj a(Context paramContext, fh paramfh, String paramString)
  {
    JSONObject localJSONObject;
    String str1;
    String str3;
    String str2;
    long l2;
    String str4;
    long l1;
    Object localObject1;
    int i;
    label205:
    Object localObject2;
    label243:
    int j;
    for (;;)
    {
      try
      {
        localJSONObject = new JSONObject(paramString);
        str1 = localJSONObject.optString("ad_base_url", null);
        paramString = localJSONObject.optString("ad_url", null);
        str3 = localJSONObject.optString("ad_size", null);
        str2 = localJSONObject.optString("ad_html", null);
        l2 = -1L;
        str4 = localJSONObject.optString("debug_dialog", null);
        if (!localJSONObject.has("interstitial_timeout")) {
          break label654;
        }
        l1 = (localJSONObject.getDouble("interstitial_timeout") * 1000.0D);
        localObject1 = localJSONObject.optString("orientation", null);
        i = -1;
        if ("portrait".equals(localObject1))
        {
          i = gi.dv();
          if (!TextUtils.isEmpty(str2))
          {
            if (!TextUtils.isEmpty(str1)) {
              break label648;
            }
            gr.W("Could not parse the mediation config: Missing required ad_base_url field");
            return new fj(0);
          }
        }
        else
        {
          if (!"landscape".equals(localObject1)) {
            continue;
          }
          i = gi.du();
          continue;
        }
        if (!TextUtils.isEmpty(paramString))
        {
          localObject1 = fq.a(paramContext, lO.wS, paramString, null, null);
          str1 = sg;
          str2 = tU;
          l2 = ua;
          localObject2 = localJSONObject.optJSONArray("click_urls");
          if (localObject1 == null)
          {
            paramContext = null;
            if (localObject2 == null) {
              break;
            }
            paramString = paramContext;
            if (paramContext != null) {
              break label662;
            }
            paramString = new LinkedList();
            break label662;
            if (j >= ((JSONArray)localObject2).length()) {
              break label668;
            }
            paramString.add(((JSONArray)localObject2).getString(j));
            j += 1;
            continue;
          }
        }
        else
        {
          gr.W("Could not parse the mediation config: Missing required ad_html or ad_url field.");
          paramContext = new fj(0);
          return paramContext;
        }
      }
      catch (JSONException paramContext)
      {
        gr.W("Could not parse the mediation config: " + paramContext.getMessage());
        return new fj(0);
      }
      paramContext = qw;
    }
    label336:
    Object localObject3 = localJSONObject.optJSONArray("impression_urls");
    if (localObject1 == null) {
      paramContext = null;
    }
    while (localObject3 != null)
    {
      paramString = paramContext;
      if (paramContext != null) {
        break label674;
      }
      paramString = new LinkedList();
      break label674;
      label374:
      while (j < ((JSONArray)localObject3).length())
      {
        paramString.add(((JSONArray)localObject3).getString(j));
        j += 1;
      }
      paramContext = qx;
      continue;
      label416:
      JSONArray localJSONArray = localJSONObject.optJSONArray("manual_impression_urls");
      if (localObject1 == null) {}
      for (paramContext = null; localJSONArray != null; paramContext = tY)
      {
        paramString = paramContext;
        if (paramContext != null) {
          break label686;
        }
        paramString = new LinkedList();
        break label686;
        label454:
        while (j < localJSONArray.length())
        {
          paramString.add(localJSONArray.getString(j));
          j += 1;
        }
      }
    }
    for (;;)
    {
      long l3 = l1;
      j = i;
      if (localObject1 != null)
      {
        if (orientation != -1) {
          i = orientation;
        }
        l3 = l1;
        j = i;
        if (tV > 0L)
        {
          l3 = tV;
          j = i;
        }
      }
      localObject1 = localJSONObject.optString("active_view");
      paramString = null;
      boolean bool = localJSONObject.optBoolean("ad_is_javascript", false);
      if (bool) {
        paramString = localJSONObject.optString("ad_passback_url", null);
      }
      paramContext = new fj(str1, str2, (List)localObject2, (List)localObject3, l3, false, -1L, paramContext, -1L, j, str3, l2, str4, bool, paramString, (String)localObject1, false, false, tT, false);
      return paramContext;
      continue;
      localObject3 = paramContext;
      break label416;
      localObject2 = paramContext;
      break label336;
      label648:
      localObject1 = null;
      break label205;
      label654:
      l1 = -1L;
      break;
      label662:
      j = 0;
      break label243;
      label668:
      localObject2 = paramString;
      break label336;
      label674:
      j = 0;
      break label374;
      localObject3 = paramString;
      break label416;
      label686:
      j = 0;
      break label454;
      paramContext = paramString;
    }
  }
  
  public static String a(fh paramfh, fv paramfv, Location paramLocation, String paramString1, String paramString2, String paramString3)
  {
    try
    {
      paramLocation = new HashMap();
      ArrayList localArrayList = new ArrayList();
      if (!TextUtils.isEmpty(paramString1)) {
        localArrayList.add(paramString1);
      }
      if (!TextUtils.isEmpty(paramString2)) {
        localArrayList.add(paramString2);
      }
      if (!TextUtils.isEmpty(paramString3)) {
        localArrayList.add(paramString3);
      }
      if (localArrayList.size() > 0) {
        paramLocation.put("eid", TextUtils.join(",", localArrayList));
      }
      if (tK != null) {
        paramLocation.put("ad_pos", tK);
      }
      a(paramLocation, tL);
      paramLocation.put("format", lS.op);
      if (lS.width == -1) {
        paramLocation.put("smart_w", "full");
      }
      if (lS.height == -2) {
        paramLocation.put("smart_h", "auto");
      }
      if (lS.or != null)
      {
        paramString1 = new StringBuilder();
        paramString2 = lS.or;
        int k = paramString2.length;
        int i = 0;
        if (i < k)
        {
          paramString3 = paramString2[i];
          if (paramString1.length() != 0) {
            paramString1.append("|");
          }
          if (width == -1)
          {
            j = (int)(widthPixels / vw);
            label264:
            paramString1.append(j);
            paramString1.append("x");
            if (height != -2) {
              break label329;
            }
          }
          label329:
          for (int j = (int)(heightPixels / vw);; j = height)
          {
            paramString1.append(j);
            i += 1;
            break;
            j = width;
            break label264;
          }
        }
        paramLocation.put("sz", paramString1);
      }
      if (tR != 0)
      {
        paramLocation.put("native_version", Integer.valueOf(tR));
        paramLocation.put("native_templates", mc);
      }
      paramLocation.put("slotname", lL);
      paramLocation.put("pn", applicationInfo.packageName);
      if (tM != null) {
        paramLocation.put("vc", Integer.valueOf(tM.versionCode));
      }
      paramLocation.put("ms", tN);
      paramLocation.put("seq_num", tO);
      paramLocation.put("session_id", tP);
      paramLocation.put("js", lO.wS);
      a(paramLocation, paramfv);
      if ((tL.versionCode >= 2) && (tL.ol != null)) {
        a(paramLocation, tL.ol);
      }
      if (versionCode >= 2) {
        paramLocation.put("quality_signals", tQ);
      }
      if ((versionCode >= 4) && (tT)) {
        paramLocation.put("forceHttps", Boolean.valueOf(tT));
      }
      if ((versionCode >= 3) && (tS != null)) {
        paramLocation.put("content_info", tS);
      }
      if (gr.v(2))
      {
        paramfh = gi.t(paramLocation).toString(2);
        gr.V("Ad Request JSON: " + paramfh);
      }
      paramfh = gi.t(paramLocation).toString();
      return paramfh;
    }
    catch (JSONException paramfh)
    {
      gr.W("Problem serializing ad request to JSON: " + paramfh.getMessage());
    }
    return null;
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
  
  private static void a(HashMap<String, Object> paramHashMap, av paramav)
  {
    String str = ge.dr();
    if (str != null) {
      paramHashMap.put("abf", str);
    }
    if (od != -1L) {
      paramHashMap.put("cust_age", uD.format(new Date(od)));
    }
    if (extras != null) {
      paramHashMap.put("extras", extras);
    }
    if (oe != -1) {
      paramHashMap.put("cust_gender", Integer.valueOf(oe));
    }
    if (of != null) {
      paramHashMap.put("kw", of);
    }
    if (oh != -1) {
      paramHashMap.put("tag_for_child_directed_treatment", Integer.valueOf(oh));
    }
    if (og) {
      paramHashMap.put("adtest", "on");
    }
    if (versionCode >= 2)
    {
      if (oi) {
        paramHashMap.put("d_imp_hdr", Integer.valueOf(1));
      }
      if (!TextUtils.isEmpty(oj)) {
        paramHashMap.put("ppid", oj);
      }
      if (ok != null) {
        a(paramHashMap, ok);
      }
    }
    if ((versionCode >= 3) && (om != null)) {
      paramHashMap.put("url", om);
    }
  }
  
  private static void a(HashMap<String, Object> paramHashMap, bj parambj)
  {
    Object localObject2 = null;
    if (Color.alpha(oQ) != 0) {
      paramHashMap.put("acolor", u(oQ));
    }
    if (Color.alpha(backgroundColor) != 0) {
      paramHashMap.put("bgcolor", u(backgroundColor));
    }
    if ((Color.alpha(oR) != 0) && (Color.alpha(oS) != 0))
    {
      paramHashMap.put("gradientto", u(oR));
      paramHashMap.put("gradientfrom", u(oS));
    }
    if (Color.alpha(oT) != 0) {
      paramHashMap.put("bcolor", u(oT));
    }
    paramHashMap.put("bthick", Integer.toString(oU));
    Object localObject1;
    switch (oV)
    {
    default: 
      localObject1 = null;
      if (localObject1 != null) {
        paramHashMap.put("btype", localObject1);
      }
      switch (oW)
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
      if (oX != null) {
        paramHashMap.put("channel", oX);
      }
      if (Color.alpha(oY) != 0) {
        paramHashMap.put("dcolor", u(oY));
      }
      if (oZ != null) {
        paramHashMap.put("font", oZ);
      }
      if (Color.alpha(pa) != 0) {
        paramHashMap.put("hcolor", u(pa));
      }
      paramHashMap.put("headersize", Integer.toString(pb));
      if (pc != null) {
        paramHashMap.put("q", pc);
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
  
  private static void a(HashMap<String, Object> paramHashMap, fv paramfv)
  {
    paramHashMap.put("am", Integer.valueOf(vg));
    paramHashMap.put("cog", u(vh));
    paramHashMap.put("coh", u(vi));
    if (!TextUtils.isEmpty(vj)) {
      paramHashMap.put("carrier", vj);
    }
    paramHashMap.put("gl", vk);
    if (vl) {
      paramHashMap.put("simulator", Integer.valueOf(1));
    }
    paramHashMap.put("ma", u(vm));
    paramHashMap.put("sp", u(vn));
    paramHashMap.put("hl", vo);
    if (!TextUtils.isEmpty(vp)) {
      paramHashMap.put("mv", vp);
    }
    paramHashMap.put("muv", Integer.valueOf(vq));
    if (vr != -2) {
      paramHashMap.put("cnt", Integer.valueOf(vr));
    }
    paramHashMap.put("gnt", Integer.valueOf(vs));
    paramHashMap.put("pt", Integer.valueOf(vt));
    paramHashMap.put("rm", Integer.valueOf(vu));
    paramHashMap.put("riv", Integer.valueOf(vv));
    paramHashMap.put("u_sd", Float.valueOf(vw));
    paramHashMap.put("sh", Integer.valueOf(vy));
    paramHashMap.put("sw", Integer.valueOf(vx));
    Bundle localBundle = new Bundle();
    localBundle.putInt("active_network_state", vC);
    localBundle.putBoolean("active_network_metered", vB);
    paramHashMap.put("connectivity", localBundle);
    localBundle = new Bundle();
    localBundle.putBoolean("is_charging", vA);
    localBundle.putDouble("battery_level", vz);
    paramHashMap.put("battery", localBundle);
  }
  
  private static Integer u(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 1;; i = 0) {
      return Integer.valueOf(i);
    }
  }
  
  private static String u(int paramInt)
  {
    return String.format(Locale.US, "#%06x", new Object[] { Integer.valueOf(0xFFFFFF & paramInt) });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */