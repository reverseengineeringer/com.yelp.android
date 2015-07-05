package com.google.android.gms.analytics;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.os.Bundle;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public class GoogleAnalytics
  extends TrackerHandler
{
  private static boolean Bm;
  private static GoogleAnalytics Bs;
  private aj Bn;
  private volatile Boolean Bo = Boolean.valueOf(false);
  private Logger Bp;
  private Set<GoogleAnalytics.a> Bq;
  private boolean Br = false;
  private Context mContext;
  private f yV;
  private String ya;
  private String yb;
  private boolean yt;
  
  protected GoogleAnalytics(Context paramContext)
  {
    this(paramContext, x.A(paramContext), v.eu());
  }
  
  private GoogleAnalytics(Context paramContext, f paramf, aj paramaj)
  {
    if (paramContext == null) {
      throw new IllegalArgumentException("context cannot be null");
    }
    mContext = paramContext.getApplicationContext();
    yV = paramf;
    Bn = paramaj;
    g.y(mContext);
    ai.y(mContext);
    k.y(mContext);
    Bp = new p();
    Bq = new HashSet();
    eZ();
  }
  
  private Tracker a(Tracker paramTracker)
  {
    if (ya != null) {
      paramTracker.set("&an", ya);
    }
    if (yb != null) {
      paramTracker.set("&av", yb);
    }
    return paramTracker;
  }
  
  private int ai(String paramString)
  {
    paramString = paramString.toLowerCase();
    if ("verbose".equals(paramString)) {
      return 0;
    }
    if ("info".equals(paramString)) {
      return 1;
    }
    if ("warning".equals(paramString)) {
      return 2;
    }
    if ("error".equals(paramString)) {
      return 3;
    }
    return -1;
  }
  
  static GoogleAnalytics eY()
  {
    try
    {
      GoogleAnalytics localGoogleAnalytics = Bs;
      return localGoogleAnalytics;
    }
    finally {}
  }
  
  private void eZ()
  {
    if (Bm) {}
    Object localObject;
    do
    {
      int i;
      do
      {
        do
        {
          return;
          try
          {
            ApplicationInfo localApplicationInfo = mContext.getPackageManager().getApplicationInfo(mContext.getPackageName(), 129);
            if (localApplicationInfo == null)
            {
              ae.W("Couldn't get ApplicationInfo to load gloabl config.");
              return;
            }
          }
          catch (PackageManager.NameNotFoundException localNameNotFoundException)
          {
            for (;;)
            {
              ae.V("PackageManager doesn't know about package: " + localNameNotFoundException);
              localObject = null;
            }
            localObject = metaData;
          }
        } while (localObject == null);
        i = ((Bundle)localObject).getInt("com.google.android.gms.analytics.globalConfigResource");
      } while (i <= 0);
      localObject = (aa)new z(mContext).x(i);
    } while (localObject == null);
    a((aa)localObject);
  }
  
  public static GoogleAnalytics getInstance(Context paramContext)
  {
    try
    {
      if (Bs == null) {
        Bs = new GoogleAnalytics(paramContext);
      }
      paramContext = Bs;
      return paramContext;
    }
    finally {}
  }
  
  void a(GoogleAnalytics.a parama)
  {
    Bq.add(parama);
    if ((mContext instanceof Application)) {
      enableAutoActivityReports((Application)mContext);
    }
  }
  
  void a(aa paramaa)
  {
    ae.V("Loading global config values.");
    if (paramaa.eO())
    {
      ya = paramaa.eP();
      ae.V("app name loaded: " + ya);
    }
    if (paramaa.eQ())
    {
      yb = paramaa.eR();
      ae.V("app version loaded: " + yb);
    }
    if (paramaa.eS())
    {
      int i = ai(paramaa.eT());
      if (i >= 0)
      {
        ae.V("log level loaded: " + i);
        getLogger().setLogLevel(i);
      }
    }
    if (paramaa.eU()) {
      Bn.setLocalDispatchPeriod(paramaa.eV());
    }
    if (paramaa.eW()) {
      setDryRun(paramaa.eX());
    }
  }
  
  void b(GoogleAnalytics.a parama)
  {
    Bq.remove(parama);
  }
  
  void dY()
  {
    yV.dY();
  }
  
  @Deprecated
  public void dispatchLocalHits()
  {
    Bn.dispatchLocalHits();
  }
  
  public void enableAutoActivityReports(Application paramApplication)
  {
    if ((Build.VERSION.SDK_INT >= 14) && (!Br))
    {
      paramApplication.registerActivityLifecycleCallbacks(new GoogleAnalytics.b(this));
      Br = true;
    }
  }
  
  void g(Activity paramActivity)
  {
    Iterator localIterator = Bq.iterator();
    while (localIterator.hasNext()) {
      ((GoogleAnalytics.a)localIterator.next()).i(paramActivity);
    }
  }
  
  public boolean getAppOptOut()
  {
    y.eK().a(y.a.AN);
    return Bo.booleanValue();
  }
  
  public Logger getLogger()
  {
    return Bp;
  }
  
  void h(Activity paramActivity)
  {
    Iterator localIterator = Bq.iterator();
    while (localIterator.hasNext()) {
      ((GoogleAnalytics.a)localIterator.next()).j(paramActivity);
    }
  }
  
  public boolean isDryRunEnabled()
  {
    y.eK().a(y.a.AZ);
    return yt;
  }
  
  public Tracker newTracker(int paramInt)
  {
    try
    {
      y.eK().a(y.a.AJ);
      Tracker localTracker = new Tracker(null, this, mContext);
      if (paramInt > 0)
      {
        am localam = (am)new al(mContext).x(paramInt);
        if (localam != null) {
          localTracker.a(localam);
        }
      }
      localTracker = a(localTracker);
      return localTracker;
    }
    finally {}
  }
  
  public Tracker newTracker(String paramString)
  {
    try
    {
      y.eK().a(y.a.AJ);
      paramString = a(new Tracker(paramString, this, mContext));
      return paramString;
    }
    finally {}
  }
  
  public void reportActivityStart(Activity paramActivity)
  {
    if (!Br) {
      g(paramActivity);
    }
  }
  
  public void reportActivityStop(Activity paramActivity)
  {
    if (!Br) {
      h(paramActivity);
    }
  }
  
  public void setAppOptOut(boolean paramBoolean)
  {
    y.eK().a(y.a.AM);
    Bo = Boolean.valueOf(paramBoolean);
    if (Bo.booleanValue()) {
      yV.dQ();
    }
  }
  
  public void setDryRun(boolean paramBoolean)
  {
    y.eK().a(y.a.AY);
    yt = paramBoolean;
  }
  
  @Deprecated
  public void setLocalDispatchPeriod(int paramInt)
  {
    Bn.setLocalDispatchPeriod(paramInt);
  }
  
  public void setLogger(Logger paramLogger)
  {
    y.eK().a(y.a.Ba);
    Bp = paramLogger;
  }
  
  void u(Map<String, String> paramMap)
  {
    if (paramMap == null) {
      try
      {
        throw new IllegalArgumentException("hit cannot be null");
      }
      finally {}
    }
    an.a(paramMap, "&ul", an.a(Locale.getDefault()));
    an.a(paramMap, "&sr", ai.fl());
    paramMap.put("&_u", y.eK().eM());
    y.eK().eL();
    yV.u(paramMap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.GoogleAnalytics
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */