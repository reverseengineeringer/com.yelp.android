package com.google.android.gms.analytics;

import android.app.Activity;
import android.content.Intent;
import com.google.android.gms.internal.ld;
import com.google.android.gms.internal.lf;
import java.util.HashMap;
import java.util.Map;

class Tracker$a
  implements GoogleAnalytics.a
{
  private boolean Co = false;
  private int Cp = 0;
  private long Cq = -1L;
  private boolean Cr = false;
  private long Cs;
  private ld wb = lf.jdMethod_if();
  
  public Tracker$a(Tracker paramTracker) {}
  
  private void fq()
  {
    GoogleAnalytics localGoogleAnalytics = GoogleAnalytics.eY();
    if (localGoogleAnalytics == null)
    {
      ae.T("GoogleAnalytics isn't initialized for the Tracker!");
      return;
    }
    if ((Cq >= 0L) || (Co))
    {
      localGoogleAnalytics.a(Tracker.b(Ct));
      return;
    }
    localGoogleAnalytics.b(Tracker.b(Ct));
  }
  
  public void enableAutoActivityTracking(boolean paramBoolean)
  {
    Co = paramBoolean;
    fq();
  }
  
  public long fn()
  {
    return Cq;
  }
  
  public boolean fo()
  {
    return Co;
  }
  
  public boolean fp()
  {
    boolean bool = Cr;
    Cr = false;
    return bool;
  }
  
  boolean fr()
  {
    return wb.elapsedRealtime() >= Cs + Math.max(1000L, Cq);
  }
  
  public void i(Activity paramActivity)
  {
    y.eK().a(y.a.Be);
    if ((Cp == 0) && (fr())) {
      Cr = true;
    }
    Cp += 1;
    Object localObject;
    Tracker localTracker;
    if (Co)
    {
      localObject = paramActivity.getIntent();
      if (localObject != null) {
        Ct.setCampaignParamsOnNextHit(((Intent)localObject).getData());
      }
      localObject = new HashMap();
      ((Map)localObject).put("&t", "screenview");
      y.eK().D(true);
      localTracker = Ct;
      if (Tracker.c(Ct) == null) {
        break label141;
      }
    }
    label141:
    for (paramActivity = Tracker.c(Ct).k(paramActivity);; paramActivity = paramActivity.getClass().getCanonicalName())
    {
      localTracker.set("&cd", paramActivity);
      Ct.send((Map)localObject);
      y.eK().D(false);
      return;
    }
  }
  
  public void j(Activity paramActivity)
  {
    y.eK().a(y.a.Bf);
    Cp -= 1;
    Cp = Math.max(0, Cp);
    if (Cp == 0) {
      Cs = wb.elapsedRealtime();
    }
  }
  
  public void setSessionTimeout(long paramLong)
  {
    Cq = paramLong;
    fq();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.Tracker.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */