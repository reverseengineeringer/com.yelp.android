package com.google.android.gms.analytics;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.internal.jx;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.Set;

public class Tracker
{
  private final TrackerHandler Ce;
  private final Map<String, String> Cf = new HashMap();
  private ah Cg;
  private final k Ch;
  private final ai Ci;
  private final g Cj;
  private boolean Ck;
  private Tracker.a Cl;
  private am Cm;
  private ExceptionReporter Cn;
  private Context mContext;
  private final Map<String, String> rd = new HashMap();
  
  Tracker(String paramString, TrackerHandler paramTrackerHandler, Context paramContext)
  {
    this(paramString, paramTrackerHandler, k.el(), ai.fl(), g.dZ(), new ad("tracking"), paramContext);
  }
  
  Tracker(String paramString, TrackerHandler paramTrackerHandler, k paramk, ai paramai, g paramg, ah paramah, Context paramContext)
  {
    Ce = paramTrackerHandler;
    if (paramContext != null) {
      mContext = paramContext.getApplicationContext();
    }
    if (paramString != null) {
      rd.put("&tid", paramString);
    }
    rd.put("useSecure", "1");
    Ch = paramk;
    Ci = paramai;
    Cj = paramg;
    rd.put("&a", Integer.toString(new Random().nextInt(Integer.MAX_VALUE) + 1));
    Cg = paramah;
    Cl = new Tracker.a(this);
    enableAdvertisingIdCollection(false);
  }
  
  void a(am paramam)
  {
    ae.V("Loading Tracker config values.");
    Cm = paramam;
    if (Cm.ft())
    {
      paramam = Cm.fu();
      set("&tid", paramam);
      ae.V("[Tracker] trackingId loaded: " + paramam);
    }
    if (Cm.fv())
    {
      paramam = Double.toString(Cm.fw());
      set("&sf", paramam);
      ae.V("[Tracker] sample frequency loaded: " + paramam);
    }
    if (Cm.fx())
    {
      setSessionTimeout(Cm.getSessionTimeout());
      ae.V("[Tracker] session timeout loaded: " + fn());
    }
    if (Cm.fy())
    {
      enableAutoActivityTracking(Cm.fz());
      ae.V("[Tracker] auto activity tracking loaded: " + fo());
    }
    if (Cm.fA())
    {
      if (Cm.fB())
      {
        set("&aip", "1");
        ae.V("[Tracker] anonymize ip loaded: true");
      }
      ae.V("[Tracker] anonymize ip loaded: false");
    }
    enableExceptionReporting(Cm.fC());
  }
  
  public void enableAdvertisingIdCollection(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      rd.put("&ate", null);
      rd.put("&adid", null);
    }
    do
    {
      return;
      if (rd.containsKey("&ate")) {
        rd.remove("&ate");
      }
    } while (!rd.containsKey("&adid"));
    rd.remove("&adid");
  }
  
  public void enableAutoActivityTracking(boolean paramBoolean)
  {
    Cl.enableAutoActivityTracking(paramBoolean);
  }
  
  public void enableExceptionReporting(boolean paramBoolean)
  {
    if (Ck == paramBoolean) {
      return;
    }
    Ck = paramBoolean;
    if (paramBoolean)
    {
      Cn = new ExceptionReporter(this, Thread.getDefaultUncaughtExceptionHandler(), mContext);
      Thread.setDefaultUncaughtExceptionHandler(Cn);
      ae.V("Uncaught exceptions will be reported to Google Analytics.");
      return;
    }
    if (Cn != null) {
      Thread.setDefaultUncaughtExceptionHandler(Cn.et());
    }
    for (;;)
    {
      ae.V("Uncaught exceptions will not be reported to Google Analytics.");
      return;
      Thread.setDefaultUncaughtExceptionHandler(null);
    }
  }
  
  long fn()
  {
    return Cl.fn();
  }
  
  boolean fo()
  {
    return Cl.fo();
  }
  
  public String get(String paramString)
  {
    y.eK().a(y.a.Af);
    if (TextUtils.isEmpty(paramString)) {}
    do
    {
      return null;
      if (rd.containsKey(paramString)) {
        return (String)rd.get(paramString);
      }
      if (paramString.equals("&ul")) {
        return an.a(Locale.getDefault());
      }
      if ((Ch != null) && (Ch.ac(paramString))) {
        return Ch.getValue(paramString);
      }
      if ((Ci != null) && (Ci.ac(paramString))) {
        return Ci.getValue(paramString);
      }
    } while ((Cj == null) || (!Cj.ac(paramString)));
    return Cj.getValue(paramString);
  }
  
  public void send(Map<String, String> paramMap)
  {
    y.eK().a(y.a.Ah);
    HashMap localHashMap = new HashMap();
    localHashMap.putAll(rd);
    if (paramMap != null) {
      localHashMap.putAll(paramMap);
    }
    paramMap = Cf.keySet().iterator();
    while (paramMap.hasNext())
    {
      str = (String)paramMap.next();
      if (!localHashMap.containsKey(str)) {
        localHashMap.put(str, Cf.get(str));
      }
    }
    Cf.clear();
    if (TextUtils.isEmpty((CharSequence)localHashMap.get("&tid"))) {
      ae.W(String.format("Missing tracking id (%s) parameter.", new Object[] { "&tid" }));
    }
    String str = (String)localHashMap.get("&t");
    paramMap = str;
    if (TextUtils.isEmpty(str))
    {
      ae.W(String.format("Missing hit type (%s) parameter.", new Object[] { "&t" }));
      paramMap = "";
    }
    if (Cl.fp()) {
      localHashMap.put("&sc", "start");
    }
    paramMap = paramMap.toLowerCase();
    if (("screenview".equals(paramMap)) || ("pageview".equals(paramMap)) || ("appview".equals(paramMap)) || (TextUtils.isEmpty(paramMap)))
    {
      int j = Integer.parseInt((String)rd.get("&a")) + 1;
      int i = j;
      if (j >= Integer.MAX_VALUE) {
        i = 1;
      }
      rd.put("&a", Integer.toString(i));
    }
    if ((!paramMap.equals("transaction")) && (!paramMap.equals("item")) && (!Cg.fe()))
    {
      ae.W("Too many hits sent too quickly, rate limiting invoked.");
      return;
    }
    Ce.u(localHashMap);
  }
  
  public void set(String paramString1, String paramString2)
  {
    jx.b(paramString1, "Key should be non-null");
    y.eK().a(y.a.Ag);
    rd.put(paramString1, paramString2);
  }
  
  public void setAnonymizeIp(boolean paramBoolean)
  {
    set("&aip", an.E(paramBoolean));
  }
  
  public void setAppId(String paramString)
  {
    set("&aid", paramString);
  }
  
  public void setAppInstallerId(String paramString)
  {
    set("&aiid", paramString);
  }
  
  public void setAppName(String paramString)
  {
    set("&an", paramString);
  }
  
  public void setAppVersion(String paramString)
  {
    set("&av", paramString);
  }
  
  public void setCampaignParamsOnNextHit(Uri paramUri)
  {
    if (paramUri == null) {}
    do
    {
      do
      {
        return;
        paramUri = paramUri.getQueryParameter("referrer");
      } while (TextUtils.isEmpty(paramUri));
      paramUri = Uri.parse("http://hostname/?" + paramUri);
      String str = paramUri.getQueryParameter("utm_id");
      if (str != null) {
        Cf.put("&ci", str);
      }
      str = paramUri.getQueryParameter("utm_campaign");
      if (str != null) {
        Cf.put("&cn", str);
      }
      str = paramUri.getQueryParameter("utm_content");
      if (str != null) {
        Cf.put("&cc", str);
      }
      str = paramUri.getQueryParameter("utm_medium");
      if (str != null) {
        Cf.put("&cm", str);
      }
      str = paramUri.getQueryParameter("utm_source");
      if (str != null) {
        Cf.put("&cs", str);
      }
      str = paramUri.getQueryParameter("utm_term");
      if (str != null) {
        Cf.put("&ck", str);
      }
      str = paramUri.getQueryParameter("dclid");
      if (str != null) {
        Cf.put("&dclid", str);
      }
      paramUri = paramUri.getQueryParameter("gclid");
    } while (paramUri == null);
    Cf.put("&gclid", paramUri);
  }
  
  public void setClientId(String paramString)
  {
    set("&cid", paramString);
  }
  
  public void setEncoding(String paramString)
  {
    set("&de", paramString);
  }
  
  public void setHostname(String paramString)
  {
    set("&dh", paramString);
  }
  
  public void setLanguage(String paramString)
  {
    set("&ul", paramString);
  }
  
  public void setLocation(String paramString)
  {
    set("&dl", paramString);
  }
  
  public void setPage(String paramString)
  {
    set("&dp", paramString);
  }
  
  public void setReferrer(String paramString)
  {
    set("&dr", paramString);
  }
  
  public void setSampleRate(double paramDouble)
  {
    set("&sf", Double.toHexString(paramDouble));
  }
  
  public void setScreenColors(String paramString)
  {
    set("&sd", paramString);
  }
  
  public void setScreenName(String paramString)
  {
    set("&cd", paramString);
  }
  
  public void setScreenResolution(int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 0) && (paramInt2 < 0))
    {
      ae.W("Invalid width or height. The values should be non-negative.");
      return;
    }
    set("&sr", paramInt1 + "x" + paramInt2);
  }
  
  public void setSessionTimeout(long paramLong)
  {
    Cl.setSessionTimeout(1000L * paramLong);
  }
  
  public void setTitle(String paramString)
  {
    set("&dt", paramString);
  }
  
  public void setUseSecure(boolean paramBoolean)
  {
    set("useSecure", an.E(paramBoolean));
  }
  
  public void setViewportSize(String paramString)
  {
    set("&vp", paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.Tracker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */