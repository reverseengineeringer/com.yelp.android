package com.comscore.applications;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.os.Build;
import android.os.Build.VERSION;
import android.view.Display;
import android.view.WindowManager;
import com.comscore.analytics.ApplicationState;
import com.comscore.utils.j;
import java.util.HashMap;
import java.util.Locale;

public class c
  extends com.yelp.android.ar.b
{
  protected c(com.comscore.analytics.a parama, EventType paramEventType, String paramString)
  {
    this(parama, paramEventType, paramString, false, false, true);
  }
  
  protected c(com.comscore.analytics.a parama, EventType paramEventType, String paramString, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    super(parama);
    parama.t(paramBoolean3);
    if (paramBoolean3)
    {
      i = parama.c(paramBoolean2);
      l1 = parama.d(paramBoolean1);
      long l2 = parama.e(paramBoolean2);
      long l3 = parama.f(paramBoolean1);
      long l4 = parama.g(paramBoolean2);
      long l5 = parama.h(paramBoolean1);
      long l6 = parama.i(paramBoolean2);
      long l7 = parama.j(paramBoolean2);
      long l8 = parama.k(paramBoolean2);
      long l9 = parama.l(paramBoolean2);
      long l10 = parama.M();
      j = parama.m(paramBoolean2);
      int k = parama.n(paramBoolean2);
      int m = parama.o(paramBoolean2);
      int n = parama.p(paramBoolean2);
      b(new com.yelp.android.ar.a("ns_ap_fg", String.valueOf(i), Boolean.valueOf(false)));
      b(new com.yelp.android.ar.a("ns_ap_ft", String.valueOf(l1), Boolean.valueOf(false)));
      b(new com.yelp.android.ar.a("ns_ap_dft", String.valueOf(l2), Boolean.valueOf(false)));
      b(new com.yelp.android.ar.a("ns_ap_bt", String.valueOf(l3), Boolean.valueOf(false)));
      b(new com.yelp.android.ar.a("ns_ap_dbt", String.valueOf(l4), Boolean.valueOf(false)));
      b(new com.yelp.android.ar.a("ns_ap_it", String.valueOf(l5), Boolean.valueOf(false)));
      b(new com.yelp.android.ar.a("ns_ap_dit", String.valueOf(l6), Boolean.valueOf(false)));
      if (l10 >= 60000L) {
        b(new com.yelp.android.ar.a("ns_ap_ut", String.valueOf(l10), Boolean.valueOf(false)));
      }
      b(new com.yelp.android.ar.a("ns_ap_as", String.valueOf(j), Boolean.valueOf(false)));
      b(new com.yelp.android.ar.a("ns_ap_das", String.valueOf(l7), Boolean.valueOf(false)));
      if (k >= 0)
      {
        b(new com.yelp.android.ar.a("ns_ap_aus", String.valueOf(k), Boolean.valueOf(false)));
        b(new com.yelp.android.ar.a("ns_ap_daus", String.valueOf(l8), Boolean.valueOf(false)));
        b(new com.yelp.android.ar.a("ns_ap_uc", String.valueOf(n), Boolean.valueOf(false)));
      }
      if (m >= 0)
      {
        b(new com.yelp.android.ar.a("ns_ap_us", String.valueOf(m), Boolean.valueOf(false)));
        b(new com.yelp.android.ar.a("ns_ap_dus", String.valueOf(l9), Boolean.valueOf(false)));
      }
      b(new com.yelp.android.ar.a("ns_ap_usage", Long.toString(c - parama.X()), Boolean.valueOf(false)));
    }
    if (paramString != null) {
      b(paramString);
    }
    b(new com.yelp.android.ar.a("c1", "19", Boolean.valueOf(false)));
    b(new com.yelp.android.ar.a("ns_ap_an", parama.V(), Boolean.valueOf(false)));
    b(new com.yelp.android.ar.a("ns_ap_pn", "android", Boolean.valueOf(false)));
    b(new com.yelp.android.ar.a("c12", parama.S(), Boolean.valueOf(false)));
    if (parama.R() != null)
    {
      b(new com.yelp.android.ar.a("ns_ak", parama.R(), Boolean.valueOf(false)));
      if (parama.T().a()) {
        b(new com.yelp.android.ar.a("ns_ap_ni", "1", Boolean.valueOf(false)));
      }
    }
    if (parama.T().g() != null) {
      a("ns_ap_i3", parama.T().g());
    }
    b(new com.yelp.android.ar.a("ns_ap_device", Build.DEVICE, Boolean.valueOf(false)));
    b(new com.yelp.android.ar.a("ns_type", a(paramEventType).toString(), Boolean.valueOf(false)));
    b(new com.yelp.android.ar.a("ns_ts", Long.toString(c), Boolean.valueOf(false)));
    b(new com.yelp.android.ar.a("ns_nc", "1", Boolean.valueOf(false)));
    b(new com.yelp.android.ar.a("ns_ap_pfv", Build.VERSION.RELEASE, Boolean.valueOf(false)));
    b(new com.yelp.android.ar.a("ns_ap_pv", Build.VERSION.RELEASE, Boolean.valueOf(false)));
    b(new com.yelp.android.ar.a("ns_ap_pfm", "android", Boolean.valueOf(false)));
    b(new com.yelp.android.ar.a("ns_ap_ar", System.getProperty("os.arch"), Boolean.valueOf(false)));
    b(new com.yelp.android.ar.a("ns_ap_ev", paramEventType.toString(), Boolean.valueOf(false)));
    paramString = parama.N();
    b(new com.yelp.android.ar.a("ns_ap_ver", parama.K(), Boolean.valueOf(false)));
    paramString = a(paramString);
    int i = x;
    int j = y;
    b(new com.yelp.android.ar.a("ns_ap_res", Integer.toString(i) + "x" + Integer.toString(j), Boolean.valueOf(false)));
    b(new com.yelp.android.ar.a("ns_ap_lang", Locale.getDefault().getLanguage(), Boolean.valueOf(false)));
    b(new com.yelp.android.ar.a("ns_ap_sv", parama.W(), Boolean.valueOf(false)));
    if (paramEventType.equals(EventType.KEEPALIVE)) {
      a("ns_ap_oc", String.valueOf(parama.p().c()));
    }
    long l1 = parama.I();
    i = parama.J();
    b(new com.yelp.android.ar.a("ns_ap_id", String.valueOf(l1), Boolean.valueOf(false)));
    b(new com.yelp.android.ar.a("ns_ap_cs", String.valueOf(i), Boolean.valueOf(false)));
    b(new com.yelp.android.ar.a("ns_ap_bi", parama.N().getPackageName(), Boolean.valueOf(false)));
  }
  
  @SuppressLint({"NewApi"})
  private Point a(Context paramContext)
  {
    Point localPoint = new Point();
    paramContext = ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay();
    if (Build.VERSION.SDK_INT >= 13) {
      return com.comscore.utils.a.a(paramContext);
    }
    x = paramContext.getWidth();
    y = paramContext.getHeight();
    return localPoint;
  }
  
  public static c a(com.comscore.analytics.a parama, EventType paramEventType, HashMap<String, String> paramHashMap, String paramString)
  {
    boolean bool3 = true;
    Object localObject = null;
    if (paramEventType == EventType.START)
    {
      parama.l();
      localObject = new b(parama, paramEventType, paramString, parama.n());
      if (paramEventType != EventType.AGGREGATE) {
        ((c)localObject).a(parama.Z());
      }
      if (paramEventType != EventType.AGGREGATE) {
        break label202;
      }
    }
    label153:
    label196:
    label202:
    for (boolean bool1 = bool3;; bool1 = false)
    {
      ((c)localObject).a(paramHashMap, bool1);
      if (!((c)localObject).a("name").booleanValue())
      {
        if (parama.O() == null) {
          break label208;
        }
        ((c)localObject).a("name", parama.O());
      }
      return (c)localObject;
      if (paramEventType == EventType.AGGREGATE)
      {
        localObject = new a(parama, paramEventType, paramString);
        break;
      }
      if (paramEventType == EventType.CLOSE) {
        break;
      }
      if ((paramHashMap == null) || (paramHashMap.get("ns_st_ev") != "hb"))
      {
        bool1 = true;
        if ((paramHashMap != null) && (paramHashMap.containsKey("ns_st_ev"))) {
          break label196;
        }
      }
      for (boolean bool2 = true;; bool2 = false)
      {
        localObject = new c(parama, paramEventType, paramString, false, bool1, bool2);
        break;
        bool1 = false;
        break label153;
      }
    }
    label208:
    if (paramEventType == EventType.START)
    {
      ((c)localObject).a("name", "start");
      return (c)localObject;
    }
    if (parama.E() == ApplicationState.FOREGROUND)
    {
      ((c)localObject).a("name", "foreground");
      return (c)localObject;
    }
    ((c)localObject).a("name", "background");
    return (c)localObject;
  }
  
  private static com.comscore.metrics.EventType a(EventType paramEventType)
  {
    if ((paramEventType == EventType.START) || (paramEventType == EventType.CLOSE) || (paramEventType == EventType.VIEW)) {
      return com.comscore.metrics.EventType.VIEW;
    }
    return com.comscore.metrics.EventType.HIDDEN;
  }
}

/* Location:
 * Qualified Name:     com.comscore.applications.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */