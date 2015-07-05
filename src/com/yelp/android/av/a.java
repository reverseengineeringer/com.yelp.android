package com.yelp.android.av;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.HitBuilders.EventBuilder;
import com.google.android.gms.analytics.HitBuilders.ScreenViewBuilder;
import com.google.android.gms.analytics.HitBuilders.TimingBuilder;
import com.google.android.gms.analytics.Tracker;
import com.yelp.android.analytics.GADimensions;
import com.yelp.android.analytics.g;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.GoogleAnalyticsCategory;
import com.yelp.android.analytics.iris.PushNotificationIri;
import com.yelp.android.analytics.l;
import com.yelp.android.analytics.p;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BaseYelpApplication;
import com.yelp.android.appdata.StateBroadcastReceiver;
import com.yelp.android.appdata.ar;
import com.yelp.android.appdata.bc;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.debug.Debug;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;

public class a
  implements ar, com.yelp.android.appdata.webrequests.m<Void>
{
  private static WeakReference<com.yelp.android.analytics.a> a;
  private static final Object b = new Object();
  private final StateBroadcastReceiver c = StateBroadcastReceiver.a(paramContext, this);
  private String d;
  private boolean e;
  private final ArrayList<com.yelp.android.analytics.b> f;
  private final ArrayList<com.yelp.android.analytics.b> g;
  private int h;
  private final Handler i;
  private ArrayList<com.yelp.android.analytics.b> j;
  private boolean k;
  private final File l;
  private long m;
  private Tracker n;
  private boolean o;
  private Random p;
  private String q;
  private final Runnable r = new b(this);
  
  public a(Context paramContext, com.yelp.android.appdata.n paramn)
  {
    i = new Handler(paramContext.getMainLooper());
    e = false;
    f = new ArrayList();
    g = new ArrayList();
    l = new File(paramContext.getCacheDir(), "analytics-saving-0.tmp");
    o = false;
    p = new Random();
  }
  
  public static g a(com.yelp.android.analytics.a parama)
  {
    com.yelp.android.analytics.iris.b localb = parama.getIri();
    if (localb != null) {
      return new g(localb, parama.getRequestIdForIri(localb), parama.getParametersForIri(localb));
    }
    BaseYelpApplication.a(parama, "No IRI returned", new Object[0]);
    return null;
  }
  
  private String a(com.yelp.android.analytics.iris.b paramb)
  {
    String str2 = paramb.getGoogleAnalyticsCategory().getGoogleAnalyticsCategoryName();
    String str1 = str2;
    if (paramb.isSampledInGoogleAnalytics()) {
      str1 = str2 + " / 10";
    }
    return str1;
  }
  
  public static String a(List<com.yelp.android.analytics.b> paramList, boolean paramBoolean, JSONArray paramJSONArray)
  {
    if (paramJSONArray != null) {}
    for (;;)
    {
      int i2 = paramList.size();
      int i1 = 0;
      label14:
      if (i1 < i2) {}
      try
      {
        paramJSONArray.put(((com.yelp.android.analytics.b)paramList.get(i1)).c());
        i1 += 1;
        break label14;
        paramJSONArray = new JSONArray();
        continue;
        if (paramBoolean) {
          try
          {
            paramList = paramJSONArray.toString(2);
            return paramList;
          }
          catch (JSONException paramList)
          {
            return "[]";
          }
        }
        return paramJSONArray.toString();
      }
      catch (JSONException localJSONException)
      {
        for (;;) {}
      }
    }
  }
  
  protected static List<e> a(g paramg)
  {
    com.yelp.android.analytics.c[] arrayOfc = paramg.d().getGaCustomDimenLinks();
    ArrayList localArrayList = new ArrayList();
    int i2 = arrayOfc.length;
    int i1 = 0;
    while (i1 < i2)
    {
      com.yelp.android.analytics.c localc = arrayOfc[i1];
      if (paramg.e().containsKey(localc.getParameterKey()))
      {
        String str = paramg.e().get(localc.getParameterKey()).toString();
        localArrayList.add(new e(localc.getDimensionIndex(), str));
      }
      i1 += 1;
    }
    return localArrayList;
  }
  
  public static void a()
  {
    synchronized (b)
    {
      a = null;
      return;
    }
  }
  
  public static boolean a(com.yelp.android.analytics.a parama, Context paramContext)
  {
    boolean bool = false;
    g localg = a(parama);
    if (localg != null) {}
    for (;;)
    {
      synchronized (b)
      {
        HashMap localHashMap = new HashMap(localg.e());
        if (getResourcesgetConfigurationorientation != 1) {
          break label127;
        }
        paramContext = "portrait";
        localHashMap.put("orientation", paramContext);
        if (!b(parama)) {
          bool = true;
        }
        localHashMap.put("is_first", Boolean.valueOf(bool));
        localg.a(localHashMap);
        AppData.b().k().a(localg);
        a = new WeakReference(parama);
        return true;
      }
      return false;
      label127:
      paramContext = "landscape";
    }
  }
  
  public static boolean b(com.yelp.android.analytics.a parama)
  {
    if ((a == null) || (parama == null)) {}
    com.yelp.android.analytics.a locala;
    do
    {
      return false;
      locala = (com.yelp.android.analytics.a)a.get();
    } while (locala == null);
    if (parama.getComponentId() == locala.getComponentId()) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  private boolean c(com.yelp.android.analytics.b paramb)
  {
    boolean bool = false;
    if (paramb == null) {
      return false;
    }
    synchronized (f)
    {
      if ((!e) && ((paramb instanceof p))) {
        return false;
      }
    }
    if (!e)
    {
      long l1 = SystemClock.elapsedRealtime();
      d = UUID.randomUUID().toString();
      BaseYelpApplication.a("ManageMetrics", "Took %d ms to generate UUID", new Object[] { Long.valueOf(SystemClock.elapsedRealtime() - l1) });
      h = 0;
      if (!(paramb instanceof com.yelp.android.analytics.m))
      {
        com.yelp.android.analytics.m localm = new com.yelp.android.analytics.m(BaseYelpApplication.z().y().b());
        i1 = h;
        h = (i1 + 1);
        localm.a(i1);
        localm.a(d);
        f.add(localm);
      }
      e = true;
    }
    int i1 = h;
    h = (i1 + 1);
    paramb.a(i1);
    paramb.a(d);
    if (!l.class.isAssignableFrom(paramb.getClass())) {
      bool = true;
    }
    e = bool;
    f.add(paramb);
    return true;
  }
  
  private void d(com.yelp.android.analytics.b paramb)
  {
    if ((!(paramb instanceof g)) || (!o)) {}
    g localg;
    Object localObject2;
    int i1;
    String str;
    do
    {
      do
      {
        return;
        localg = (g)paramb;
        localObject2 = localg.d();
      } while (((com.yelp.android.analytics.iris.b)localObject2).isExcludedFromGoogleAnalytics());
      i1 = GADimensions.USER_LOGGED_IN_STATE.getIndex();
      str = GADimensions.USER_LOGGED_IN_STATE.getValue();
    } while ((((com.yelp.android.analytics.iris.b)localObject2).isSampledInGoogleAnalytics()) && (p.nextInt(10) != 0));
    if (((com.yelp.android.analytics.iris.b)localObject2).isSampledInGoogleAnalytics()) {}
    Object localObject3;
    for (Object localObject1 = ((com.yelp.android.analytics.iris.b)localObject2).getIriName() + " / 10";; localObject1 = ((com.yelp.android.analytics.iris.b)localObject2).getIriName())
    {
      localObject3 = a(localg);
      switch (d.a[localObject2.getGoogleAnalyticsCategory().ordinal()])
      {
      default: 
        return;
      case 1: 
        n.setScreenName((String)localObject1);
        paramb = new HitBuilders.ScreenViewBuilder();
        if (q != null)
        {
          paramb.setCampaignParamsFromUrl(q);
          q = null;
        }
        paramb.setCustomDimension(i1, str);
        localObject1 = ((List)localObject3).iterator();
        while (((Iterator)localObject1).hasNext())
        {
          localObject2 = (e)((Iterator)localObject1).next();
          paramb.setCustomDimension(((e)localObject2).a(), ((e)localObject2).b());
        }
      }
    }
    n.send(paramb.build());
    return;
    paramb = (PushNotificationIri)localObject2;
    paramb = (HitBuilders.EventBuilder)new HitBuilders.EventBuilder().setCategory(a((com.yelp.android.analytics.iris.b)localObject2)).setAction(paramb.getGoogleAnalyticsAction()).setLabel(paramb.getGoogleAnalyticsLabel()).setCustomDimension(i1, str);
    localObject1 = ((List)localObject3).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (e)((Iterator)localObject1).next();
      paramb.setCustomDimension(((e)localObject2).a(), ((e)localObject2).b());
    }
    n.send(paramb.build());
    return;
    paramb = (com.yelp.android.analytics.n)paramb;
    paramb = new HitBuilders.TimingBuilder().setCategory(a((com.yelp.android.analytics.iris.b)localObject2)).setValue(paramb.f()).setVariable((String)localObject1);
    localObject1 = ((List)localObject3).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (e)((Iterator)localObject1).next();
      paramb.setCustomDimension(((e)localObject2).a(), ((e)localObject2).b());
    }
    n.send(paramb.build());
    return;
    paramb = (HitBuilders.EventBuilder)new HitBuilders.EventBuilder().setCategory(a((com.yelp.android.analytics.iris.b)localObject2)).setAction((String)localObject1).setCustomDimension(i1, str);
    localObject1 = ((List)localObject3).iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject3 = (e)((Iterator)localObject1).next();
      paramb.setCustomDimension(((e)localObject3).a(), ((e)localObject3).b());
    }
    if ((localObject2 instanceof EventIri))
    {
      localObject1 = (EventIri)localObject2;
      if (((EventIri)localObject1).getLabelKey() != null)
      {
        localObject1 = localg.e().get(((EventIri)localObject1).getLabelKey());
        if (localObject1 != null) {
          paramb.setLabel(localObject1.toString());
        }
      }
    }
    n.send(paramb.build());
  }
  
  public AsyncTask<List<com.yelp.android.analytics.b>, Void, Void> a(Runnable... paramVarArgs)
  {
    return new c(this, paramVarArgs).c(new List[] { f });
  }
  
  public void a(Context arg1)
  {
    if (!e) {
      c(???);
    }
    synchronized (g)
    {
      Iterator localIterator = g.iterator();
      if (localIterator.hasNext()) {
        a((com.yelp.android.analytics.b)localIterator.next());
      }
    }
    g.clear();
  }
  
  public void a(com.yelp.android.analytics.b paramb)
  {
    d(paramb);
    if (c(paramb)) {
      if (SystemClock.elapsedRealtime() - m <= 30000L) {
        break label59;
      }
    }
    label59:
    for (int i1 = 1;; i1 = 0)
    {
      if ((i1 != 0) && (f.size() > 20)) {
        i.post(r);
      }
      return;
    }
  }
  
  public void a(com.yelp.android.analytics.iris.b paramb, Map<String, Object> paramMap)
  {
    if (TextUtils.isEmpty(paramb.getIriName())) {
      throw new IllegalArgumentException("Iri is empty " + paramb);
    }
    a(new g(paramb, null, paramMap));
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    k = false;
    if (l.exists()) {
      l.delete();
    }
  }
  
  public void a(String paramString)
  {
    q = paramString;
  }
  
  public void a(boolean paramBoolean)
  {
    o = paramBoolean;
    GoogleAnalytics localGoogleAnalytics = GoogleAnalytics.getInstance(AppData.b());
    if (!paramBoolean) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      localGoogleAnalytics.setAppOptOut(paramBoolean);
      return;
    }
  }
  
  public void b()
  {
    if (k == true) {
      return;
    }
    m = SystemClock.elapsedRealtime();
    if ((zob) && (!f.isEmpty())) {
      k = true;
    }
    synchronized (f)
    {
      j = ((ArrayList)f.clone());
      f.clear();
      ??? = new f(j, this);
      ((f)???).a(l);
      ((f)???).execute(new Void[0]);
      BaseYelpApplication.a(this, "Last cache flush at %s", new Object[] { new Date() });
      return;
    }
  }
  
  public void b(Context paramContext)
  {
    if (zob)
    {
      c(new l());
      a(new Runnable[] { r });
    }
  }
  
  public void b(com.yelp.android.analytics.b paramb)
  {
    synchronized (g)
    {
      g.add(paramb);
      return;
    }
  }
  
  public void c()
  {
    GoogleAnalytics localGoogleAnalytics = GoogleAnalytics.getInstance(AppData.b());
    n = localGoogleAnalytics.newTracker(2131034112);
    localGoogleAnalytics.setLocalDispatchPeriod(5);
  }
  
  public void c(Context paramContext)
  {
    a(new com.yelp.android.analytics.m(BaseYelpApplication.d(paramContext).y().b()));
  }
  
  public void onError(ApiRequest<?, ?, ?> arg1, YelpException paramYelpException)
  {
    k = false;
    BaseYelpApplication.a(this, "Error with analytics, %s", new Object[] { paramYelpException });
    if (j != null) {
      synchronized (f)
      {
        if (j != null)
        {
          f.addAll(0, j);
          j = null;
        }
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.av.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */